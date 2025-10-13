import maya.cmds as cmds

def copy_abs_from_L_to_R(left_token='_L', right_token='_R',
                         attrs=None, tolerance=1e-6,
                         use_selection=True, verbose=True):
    """
    Copy absolute value from left -> right while keeping the original sign found on the right.
    Example: L=90.56744, R=-90.56792 -> R becomes -90.56744

    Args:
      left_token/right_token: substring to find/replace in names (e.g. '_L' -> '_R' or 'L_' -> 'R_')
      attrs: list of attributes to process (default: transform channels)
      tolerance: values below this are set to 0
      use_selection: if True use selected nodes as left-side list; otherwise auto-find nodes that contain left_token
      verbose: print debug messages to Script Editor
    """
    if attrs is None:
        attrs = [
            "translateX","translateY","translateZ",
            "rotateX","rotateY","rotateZ",
            "scaleX","scaleY","scaleZ"
        ]

    # gather left-side nodes
    if use_selection:
        left_nodes = cmds.ls(selection=True, transforms=True) or []
    else:
        left_nodes = cmds.ls('*{}*'.format(left_token), transforms=True) or []

    if not left_nodes:
        cmds.warning("No left-side nodes found. Select left controls or set use_selection=False.")
        return

    processed = 0
    changed = 0

    for lnode in left_nodes:
        if left_token not in lnode:
            if verbose: print("Skipping (no left token):", lnode)
            continue

        rnode = lnode.replace(left_token, right_token, 1)
        if not cmds.objExists(rnode):
            if verbose: print("Mirror target not found for", lnode, "expected", rnode)
            continue

        for attr in attrs:
            l_attr = "{}.{}".format(lnode, attr)
            r_attr = "{}.{}".format(rnode, attr)

            if not cmds.objExists(l_attr) or not cmds.objExists(r_attr):
                continue

            # skip locked attributes on the right (can't set them)
            try:
                if cmds.getAttr(r_attr, lock=True):
                    if verbose: print("Skipped locked attribute:", r_attr)
                    continue
            except:
                # some attrs raise on getAttr(lock=True) — ignore and continue
                pass

            try:
                lval = cmds.getAttr(l_attr)
                rval = cmds.getAttr(r_attr)
            except Exception as e:
                if verbose: print("getAttr failed for", l_attr, r_attr, "->", e)
                continue

            # scalar case
            if isinstance(lval, (float, int)):
                # determine sign to use from the right value; if right==0 use left sign
                if isinstance(rval, (float, int)):
                    if rval > 0:
                        s = 1
                    elif rval < 0:
                        s = -1
                    else:
                        s = 1 if lval >= 0 else -1
                else:
                    s = 1
                new_val = abs(lval) * s
                if abs(new_val) < tolerance:
                    new_val = 0.0

                # only set if noticeably different
                if not isinstance(rval, (float, int)) or abs(rval - new_val) > tolerance:
                    try:
                        cmds.setAttr(r_attr, new_val)
                        changed += 1
                        if verbose: print("Set", r_attr, "from", rval, "to", new_val)
                    except Exception as e:
                        if verbose: print("setAttr failed:", r_attr, e)
                processed += 1

            # compound (tuple) case e.g. getAttr("node.translate") -> (x,y,z)
            elif isinstance(lval, (tuple, list)):
                r_tuple = rval if isinstance(rval, (tuple, list)) else (0.0,) * len(lval)
                new_tuple = []
                for i, lv in enumerate(lval):
                    rv_comp = r_tuple[i] if i < len(r_tuple) else 0.0
                    if rv_comp > 0:
                        s = 1
                    elif rv_comp < 0:
                        s = -1
                    else:
                        s = 1 if lv >= 0 else -1
                    nv = abs(lv) * s
                    if abs(nv) < tolerance:
                        nv = 0.0
                    new_tuple.append(nv)

                # only set if any component differs past tolerance
                need_set = False
                for i, nv in enumerate(new_tuple):
                    rv_comp = r_tuple[i] if i < len(r_tuple) else 0.0
                    if abs(rv_comp - nv) > tolerance:
                        need_set = True
                        break

                if need_set:
                    try:
                        cmds.setAttr(r_attr, *new_tuple)
                        changed += 1
                        if verbose: print("Set", r_attr, "from", r_tuple, "to", tuple(new_tuple))
                    except Exception as e:
                        if verbose: print("setAttr failed:", r_attr, e)
                processed += 1

            else:
                # non-numeric / enum / string attrs — skip
                if verbose: print("Skipping non-numeric attribute:", l_attr)

    # user feedback
    cmds.inViewMessage(amg=f"<hl>{changed}</hl> attributes updated", pos="midCenter", fade=True)
    if verbose:
        print("Done. Processed attrs:", processed, "Changed:", changed)
    return changed
    
copy_abs_from_L_to_R(left_token='L_', right_token='R_', use_selection=True)
