import maya.cmds as cmds

def match_transforms(ctrl_grp_suffix='_CTRL_GRP', jnt_suffix='_JNT'):
    # Get selected control groups
    ctrl_grps = cmds.ls(selection=True, type='transform')
    
    # Filter to only those ending with the specified suffix
    ctrl_grps = [grp for grp in ctrl_grps if grp.endswith(ctrl_grp_suffix)]
    
    if not ctrl_grps:
        cmds.warning('No selected control groups found with the suffix: {}'.format(ctrl_grp_suffix))
        return

    for ctrl_grp in ctrl_grps:
        # Derive joint name by replacing the suffix
        jnt_name = ctrl_grp.replace(ctrl_grp_suffix, jnt_suffix)

        # Check if the corresponding joint exists
        if cmds.objExists(jnt_name):
            # Get world space transform of the joint
            jnt_matrix = cmds.xform(jnt_name, q=True, matrix=True, ws=True)
            
            # Apply the joint's world matrix to the control group
            cmds.xform(ctrl_grp, matrix=jnt_matrix, ws=True)
            print('Matched transform of {} to {}'.format(ctrl_grp, jnt_name))
        else:
            cmds.warning('Joint not found: {}'.format(jnt_name))

# Run the function
match_transforms()
