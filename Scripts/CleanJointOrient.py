import maya.cmds as cmds

def clean_joint_orients(tolerance=1e-5, verbose=True):
    """
    Zeroes out tiny jointOrient values on selected joints.
    Keeps larger orientation values intact.
    
    Args:
        tolerance (float): values whose abs() < tolerance become 0
        verbose (bool): print changes to Script Editor
    """
    joints = cmds.ls(selection=True, type='joint')
    if not joints:
        cmds.warning("No joints selected.")
        return
    
    for jnt in joints:
        changed = False
        for axis in ("X", "Y", "Z"):
            attr = f"{jnt}.jointOrient{axis}"
            if not cmds.objExists(attr):
                continue
            try:
                val = cmds.getAttr(attr)
            except:
                continue
            if abs(val) < tolerance:
                cmds.setAttr(attr, 0)
                changed = True
                if verbose:
                    print(f"{jnt}: {attr} cleaned from {val:.8f} → 0")
        if changed and verbose:
            print(f"✅ Cleaned jointOrient for {jnt}")
    
    cmds.inViewMessage(amg="<hl>Joint Orients Cleaned</hl>", pos="midCenter", fade=True)

# Example:
# Select the joints you want to clean, then run:
clean_joint_orients(tolerance=1e-3)