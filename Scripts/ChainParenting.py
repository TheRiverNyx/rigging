import maya.cmds as cmds


def _to_transform(node):
    """Return the transform node for the given DAG node (handles shape nodes)."""
    if not node:
        return node
    try:
        if cmds.objectType(node, isAType='transform'):
            return node
        parent = cmds.listRelatives(node, parent=True, fullPath=False)
        if parent:
            return parent[0]
    except Exception:
        pass
    return node


def _get_ordered_selection():
    """Get the current selection in the exact order it was clicked/selected.

    Tries cmds.ls(os=True) (ordered selection). Falls back to cmds.ls(sl=True).
    """
    sel = []
    try:
        # Prefer ordered selection; works when Maya tracks selection order
        sel = cmds.ls(os=True) or []
    except Exception:
        sel = []
    if not sel:
        try:
            sel = cmds.ls(sl=True) or []
        except Exception:
            sel = []
    return sel


def chain_parent(selection=None, maintain_position=True, verbose=True):
    """Parent selection into a chain based on the order they were selected.

    Example:
        If selection is [A, B, C, D], this will do:
            parent B under A
            parent C under B
            parent D under C

    Args:
        selection (list[str] | None): Nodes to process in order. If None, uses current ordered selection.
        maintain_position (bool): If True, preserves each child's world-space transform during reparenting.
        verbose (bool): If True, prints a short summary of operations.

    Returns:
        dict: {
            'pairs': list of (parent, child) tuples successfully parented,
            'errors': list of {'parent': str, 'child': str, 'error': str}
        }
    """
    nodes = selection[:] if selection else _get_ordered_selection()
    if len(nodes) < 2:
        if verbose:
            cmds.warning('Select at least two nodes to create a parenting chain.')
        return {'pairs': [], 'errors': []}

    # Resolve to transforms to avoid parenting shapes directly
    nodes = [_to_transform(n) for n in nodes]

    pairs_done = []
    errors = []

    for i in range(len(nodes) - 1):
        parent = nodes[i]
        child = nodes[i + 1]
        if not parent or not child:
            continue
        if parent == child:
            continue
        try:
            if maintain_position:
                # Store child's world-space matrix so we can restore after parenting
                try:
                    world_mtx = cmds.xform(child, q=True, ws=True, m=True)
                except Exception:
                    world_mtx = None

                cmds.parent(child, parent)

                if world_mtx is not None:
                    # Restore world transform to keep visual position/orientation
                    cmds.xform(child, ws=True, m=world_mtx)
                else:
                    # Fallback approach: use a temporary constraint to keep position
                    tmp = cmds.parentConstraint(parent, child, mo=True)
                    cmds.delete(tmp)
            else:
                cmds.parent(child, parent)

            pairs_done.append((parent, child))
        except Exception as e:
            errors.append({'parent': parent, 'child': child, 'error': str(e)})

    if verbose:
        if pairs_done:
            print('ChainParenting - Parent operations:')
            for p, c in pairs_done:
                print('  {} <- {}'.format(p, c))
        if errors:
            cmds.warning('Some parenting operations failed:')
            for item in errors:
                cmds.warning('  {} <- {} : {}'.format(item['parent'], item['child'], item['error']))

    return {'pairs': pairs_done, 'errors': errors}


# Convenience alias matching the request wording
parent_by_selection_order = chain_parent


if __name__ == '__main__':
    # Running this file directly in Maya's Script Editor will execute the operation
    chain_parent()
