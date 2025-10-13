import maya.cmds as cmds

def create_controls_for_selected_joints():
    # Get selected joints
    selected_joints = cmds.ls(selection=True, type='joint')
    
    # Check if there's any selection
    if not selected_joints:
        cmds.warning("No joints selected. Please select some joints.")
        return

    # Iterate over each selected joint
    for joint in selected_joints:
        # Get the unique long name for the joint to avoid naming conflicts
        joint_long_name = cmds.ls(joint, long=True)[0]

        # Get the name for the control and group based on joint name
        control_name = joint.replace('_JNT', '_CTRL')
        group_name = joint.replace('_JNT', '_CTRL_GRP')
        
        # Get the world position of the joint
        position = cmds.xform(joint_long_name, query=True, worldSpace=True, translation=True, absolute=True)
        
        # Create a control for the joint
        control = cmds.circle(name=control_name, normal=[1, 0, 0], radius=1.5, constructionHistory=False)[0]
        
        # Create a group for the control
        control_group = cmds.group(control, name=group_name)
        
        # Move the group (not the control directly) to the joint's position
        cmds.xform(control_group, worldSpace=True, translation=position)

    print("Controls successfully created for selected joints without hierarchy.")

# Run the function
create_controls_for_selected_joints()
