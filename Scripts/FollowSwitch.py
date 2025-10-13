import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_values = len(enum_values)

    if len(driven_constraints) != num_values:
        cmds.error("The number of driven constraints must match the number of enum values in the Follow attribute.")
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for j, constraint in enumerate(driven_constraints):
            weight_attr = f"{constraint}.W{i}"  # Construct the weight attribute name
            weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
            
            # Ensure the weight attribute exists
            if not cmds.objExists(weight_attr):
                cmds.error(f"The attribute '{weight_attr}' does not exist on the driven constraint '{constraint}'.")
                return
            
            cmds.setAttr(weight_attr, weight)
            cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

# Error: RuntimeError: file <maya console> line 29: The number of driven constraints must match the number of enum values in the Follow attribute.
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with multiple target weights.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_values = len(enum_values)

    # Collect all weight attributes for the driven constraints
    all_weight_attrs = []
    for constraint in driven_constraints:
        weight_attrs = cmds.listAttr(constraint, string="W*")  # Find all attributes that start with "W"
        if weight_attrs:
            full_attrs = [f"{constraint}.{attr}" for attr in weight_attrs]
            all_weight_attrs.append(full_attrs)

    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    if len(all_weight_attrs[0]) != num_values:
        cmds.error("The number of enum values in the Follow attribute must match the number of weight targets in the constraints.")
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

# Error: RuntimeError: file <maya console> line 37: No weight attributes found on the selected constraints.
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    long weight names.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_values = len(enum_values)

    # Collect all weight attributes for the driven constraints
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Find all weight attributes (long names like "W0", "CTRLW1", etc.)
        weight_attrs = cmds.listAttr(constraint, string="*W*")  # Wildcard search for weight-like attributes
        if weight_attrs:
            full_attrs = [f"{constraint}.{attr}" for attr in weight_attrs if attr.startswith('W')]
            all_weight_attrs.append(full_attrs)

    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    if len(all_weight_attrs[0]) != num_values:
        cmds.error("The number of enum values in the Follow attribute must match the number of weight targets in the constraints.")
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

# Error: RuntimeError: file <maya console> line 43: The number of enum values in the Follow attribute must match the number of weight targets in the constraints.
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    long weight names.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_values = len(enum_values)

    # Collect all weight attributes for the driven constraints
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Find all weight attributes (long names like "W0", "CTRLW1", etc.)
        weight_attrs = cmds.listAttr(constraint, string="*W*")  # Wildcard search for weight-like attributes
        if weight_attrs:
            full_attrs = [f"{constraint}.{attr}" for attr in weight_attrs if attr.startswith('W')]
            all_weight_attrs.append(full_attrs)

    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    if len(all_weight_attrs[0]) != num_values:
        cmds.error("The number of enum values in the Follow attribute must match the number of weight targets in the constraints.")
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

# Error: RuntimeError: file <maya console> line 43: The number of enum values in the Follow attribute must match the number of weight targets in the constraints.
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    long weight names.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_values = len(enum_values)

    # Collect all weight attributes for the driven constraints
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Find all weight attributes (long names like "W0", "CTRLW1", etc.)
        weight_attrs = cmds.listAttr(constraint, string="*W*")  # Wildcard search for weight-like attributes
        if weight_attrs:
            full_attrs = [f"{constraint}.{attr}" for attr in weight_attrs if attr.startswith('W')]
            all_weight_attrs.append(full_attrs)

    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    if len(all_weight_attrs[0]) != num_values:
        cmds.error("The number of enum values in the Follow attribute must match the number of weight targets in the constraints.")
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

# Error: RuntimeError: file <maya console> line 43: The number of enum values in the Follow attribute must match the number of weight targets in the constraints.
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    long weight names.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_values = len(enum_values)

    # Collect all weight attributes for the driven constraints
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Find all weight attributes (long names like "W0", "CTRLW1", etc.)
        weight_attrs = cmds.listAttr(constraint, string="*W*")  # Wildcard search for weight-like attributes
        if weight_attrs:
            full_attrs = [f"{constraint}.{attr}" for attr in weight_attrs if attr.startswith('W')]
            all_weight_attrs.append(full_attrs)

    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    if len(all_weight_attrs[0]) != num_values:
        cmds.error("The number of enum values in the Follow attribute must match the number of weight targets in the constraints.")
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

# Error: The number of enum values in the Follow attribute must match the number of weight targets in the constraints.
# # Traceback (most recent call last):
# #   File "<maya console>", line 62, in <module>
# #   File "<maya console>", line 43, in setup_follow_driven_keys_from_selection
# # RuntimeError: The number of enum values in the Follow attribute must match the number of weight targets in the constraints.
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    weight names and ensures matching enum/weight count.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Collect all weight attributes for the driven constraints
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Find all weight attributes (long names like "W0", "CTRLW1", etc.)
        weight_attrs = cmds.listAttr(constraint, string="*W*")  # Wildcard search for weight-like attributes
        if weight_attrs:
            full_attrs = [f"{constraint}.{attr}" for attr in weight_attrs if attr.startswith('W')]
            all_weight_attrs.append(full_attrs)
            print(f"Constraint '{constraint}' weights detected: {full_attrs}")

    # Ensure that we have weights and that they match the enum count
    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    # Validate that every constraint has the same number of weight attributes
    num_weight_targets = len(all_weight_attrs[0])
    if any(len(weights) != num_weight_targets for weights in all_weight_attrs):
        cmds.error("Mismatch in the number of weight attributes among selected constraints.")
        return

    if num_weight_targets != num_enum_values:
        cmds.error(
            f"The number of enum values ({num_enum_values}) in the Follow attribute "
            f"does not match the number of weight targets ({num_weight_targets})."
        )
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' weights detected: []
Constraint 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1' weights detected: []
# Error: The number of enum values (5) in the Follow attribute does not match the number of weight targets (0).
# # Traceback (most recent call last):
# #   File "<maya console>", line 74, in <module>
# #   File "<maya console>", line 52, in setup_follow_driven_keys_from_selection
# # RuntimeError: The number of enum values (5) in the Follow attribute does not match the number of weight targets (0).
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    weight attributes, even when the attribute names are non-standard.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Collect all weight attributes for the driven constraints dynamically
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Dynamically detect weight attributes connected to the constraint
        connections = cmds.listConnections(constraint, plugs=True, destination=False) or []
        weight_attrs = [attr for attr in connections if ".target[" in attr and ".targetWeight" in attr]
        
        if weight_attrs:
            print(f"Constraint '{constraint}' weights detected: {weight_attrs}")
            all_weight_attrs.append(weight_attrs)

    # Ensure that weights were found and validate their count
    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    # Validate that all constraints have the same number of weight attributes
    num_weight_targets = len(all_weight_attrs[0])
    if any(len(weights) != num_weight_targets for weights in all_weight_attrs):
        cmds.error("Mismatch in the number of weight attributes among selected constraints.")
        return

    if num_weight_targets != num_enum_values:
        cmds.error(
            f"The number of enum values ({num_enum_values}) in the Follow attribute "
            f"does not match the number of weight targets ({num_weight_targets})."
        )
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # S

import maya.cmds as cmds

def setup_driven_keys_from_selection():
    """
    Automates the driven key setup process.
    - Select the driver object first, followed by one or more driven objects.
    - The script will prompt for driver and driven attributes and corresponding values.
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    
    if len(selection) < 2:
        cmds.error("Please select at least one driver and one driven object.")
        return
    
    driver = selection[0]  # First selected object is the driver
    driven_objects = selection[1:]  # Remaining selected objects are the driven ones

    # Prompt for driver attribute and values
    driver_attr = cmds.promptDialog(
        title="Driver Attribute",
        message=f"Enter the attribute for the driver ({driver}):",
        button=["OK", "Cancel"],
        defaultButton="OK",
        cancelButton="Cancel",
        dismissString="Cancel"
    )
    
    if driver_attr != "OK":
        return
    driver_attr = cmds.promptDialog(query=True, text=True)

    driver_values = cmds.promptDialog(
        title="Driver Values",
        message="Enter driver values (comma-separated):",
        button=["OK", "Cancel"],
        defaultButton="OK",
        cancelButton="Cancel",
        dismissString="Cancel"
    )
    
    if driver_values != "OK":
        return
    driver_values = [float(v) for v in cmds.promptDialog(query=True, text=True).split(",")]

    # Iterate through each driven object and prompt for attributes and values
    for driven in driven_objects:
        driven_attr = cmds.promptDialog(
            title="Driven Attribute",
            message=f"Enter the attribute for the driven object ({driven}):",
            button=["OK", "Cancel"],
            defaultButton="OK",
            cancelButton="Cancel",
            dismissString="Cancel"
        )
        
        if driven_attr != "OK":
            return
        driven_attr = cmds.promptDialog(query=True, text=True)
        
        driven_values = cmds.promptDialog(
            title="Driven Values",
            message=f"Enter driven values for {driven} ({driven_attr}, comma-separated):",
            button=["OK", "Cancel"],
            defaultButton="OK",
            cancelButton="Cancel",
            dismissString="Cancel"
        )
        
        if driven_values != "OK":
            return
        driven_values = [float(v) for v in cmds.promptDialog(query=True, text=True).split(",")]
        
        if len(driver_values) != len(driven_values):
            cmds.error(f"Driver and driven values must have the same length for {driven}.{driven_attr}")
            return

        # Set driven keys
        for dv, dnv in zip(driver_values, driven_values):
            cmds.setAttr(f"{driver}.{driver_attr}", dv)
            cmds.setAttr(f"{driven}.{driven_attr}", dnv)
            cmds.setDrivenKeyframe(f"{driven}.{driven_attr}", currentDriver=f"{driver}.{driver_attr}")
    
    print("Driven key setup complete.")

# Run the function
setup_driven_keys_from_selection()

# Error: Driver and driven values must have the same length for L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0
# # Traceback (most recent call last):
# #   File "<maya console>", line 87, in <module>
# #   File "<maya console>", line 75, in setup_driven_keys_from_selection
# # RuntimeError: Driver and driven values must have the same length for L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    weight attributes, even when the attribute names are non-standard.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Collect all weight attributes for the driven constraints dynamically
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Dynamically detect weight attributes connected to the constraint
        connections = cmds.listConnections(constraint, plugs=True, destination=False) or []
        weight_attrs = [attr for attr in connections if ".target[" in attr and ".targetWeight" in attr]
        
        if weight_attrs:
            print(f"Constraint '{constraint}' weights detected: {weight_attrs}")
            all_weight_attrs.append(weight_attrs)

    # Ensure that weights were found and validate their count
    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    # Validate that all constraints have the same number of weight attributes
    num_weight_targets = len(all_weight_attrs[0])
    if any(len(weights) != num_weight_targets for weights in all_weight_attrs):
        cmds.error("Mismatch in the number of weight attributes among selected constraints.")
        return

    if num_weight_targets != num_enum_values:
        cmds.error(
            f"The number of enum values ({num_enum_values}) in the Follow attribute "
            f"does not match the number of weight targets ({num_weight_targets})."
        )
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # S

import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles constraints with dynamically detected
    weight attributes, even when the attribute names are non-standard.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Collect all weight attributes for the driven constraints dynamically
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Dynamically detect weight attributes connected to the constraint
        connections = cmds.listConnections(constraint, plugs=True, destination=False) or []
        weight_attrs = [attr for attr in connections if ".target[" in attr and ".targetWeight" in attr]
        
        if weight_attrs:
            print(f"Constraint '{constraint}' weights detected: {weight_attrs}")
            all_weight_attrs.append(weight_attrs)

    # Ensure that weights were found and validate their count
    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    # Validate that all constraints have the same number of weight attributes
    num_weight_targets = len(all_weight_attrs[0])
    if any(len(weights) != num_weight_targets for weights in all_weight_attrs):
        cmds.error("Mismatch in the number of weight attributes among selected constraints.")
        return

    if num_weight_targets != num_enum_values:
        cmds.error(
            f"The number of enum values ({num_enum_values}) in the Follow attribute "
            f"does not match the number of weight targets ({num_weight_targets})."
        )
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
# Error: No weight attributes found on the selected constraints.
# # Traceback (most recent call last):
# #   File "<maya console>", line 75, in <module>
# #   File "<maya console>", line 43, in setup_follow_driven_keys_from_selection
# # RuntimeError: No weight attributes found on the selected constraints.
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    based on the user's selection in Maya. Handles explicitly named weight attributes.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by one or more driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Collect all weight attributes manually
    all_weight_attrs = []
    for constraint in driven_constraints:
        # Detect explicitly named weight attributes like 'Transform_CTRLW0', 'COG_CTRLW1', etc.
        weight_attrs = [f"{constraint}.{enum_value}_CTRLW{index}" for index, enum_value in enumerate(enum_values)]
        # Check if these attributes exist
        weight_attrs = [attr for attr in weight_attrs if cmds.objExists(attr)]
        if weight_attrs:
            print(f"Constraint '{constraint}' weights detected: {weight_attrs}")
            all_weight_attrs.append(weight_attrs)

    # Ensure that weights were found and validate their count
    if not all_weight_attrs:
        cmds.error("No weight attributes found on the selected constraints.")
        return

    # Validate that all constraints have the same number of weight attributes
    num_weight_targets = len(all_weight_attrs[0])
    if any(len(weights) != num_weight_targets for weights in all_weight_attrs):
        cmds.error("Mismatch in the number of weight attributes among selected constraints.")
        return

    if num_weight_targets != num_enum_values:
        cmds.error(
            f"The number of enum values ({num_enum_values}) in the Follow attribute "
            f"does not match the number of weight targets ({num_weight_targets})."
        )
        return

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' weights detected: ['L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.COG_CTRLW1']
Constraint 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1' weights detected: ['L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.COG_CTRLW1']
# Error: The number of enum values (5) in the Follow attribute does not match the number of weight targets (2).
# # Traceback (most recent call last):
# #   File "<maya console>", line 74, in <module>
# #   File "<maya console>", line 52, in setup_follow_driven_keys_from_selection
# # RuntimeError: The number of enum values (5) in the Follow attribute does not match the number of weight targets (2).
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    with explicit handling for multiple driven constraints.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 2:
        cmds.error("Please select the driver object first, followed by the driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Detect explicitly named weight attributes for the current constraint
        weight_attrs = [f"{constraint}.{enum_value}_CTRLW{index}" for index, enum_value in enumerate(enum_values)]
        # Verify that these attributes exist
        valid_weight_attrs = [attr for attr in weight_attrs if cmds.objExists(attr)]
        
        if not valid_weight_attrs:
            cmds.error(f"No valid weight attributes found for constraint '{constraint}'.")
            return
        
        print(f"Constraint '{constraint}' weights detected: {valid_weight_attrs}")
        all_weight_attrs.append(valid_weight_attrs)

    # Ensure that the number of weight attributes matches the number of enum values
    for weight_attrs in all_weight_attrs:
        if len(weight_attrs) != num_enum_values:
            cmds.error(
                f"The number of enum values ({num_enum_values}) in the Follow attribute does not match "
                f"the number of weight targets ({len(weight_attrs)}) in constraint '{constraint}'."
            )
            return

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' weights detected: ['L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.COG_CTRLW1']
Constraint 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1' weights detected: ['L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.COG_CTRLW1']
# Error: The number of enum values (5) in the Follow attribute does not match the number of weight targets (2) in constraint 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1'.
# # Traceback (most recent call last):
# #   File "<maya console>", line 70, in <module>
# #   File "<maya console>", line 48, in setup_follow_driven_keys_from_selection
# # RuntimeError: The number of enum values (5) in the Follow attribute does not match the number of weight targets (2) in constraint 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1'.
select -r L_Leg_IK_PV_CTRL_GRP_parentConstraint1 ;
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    handling two constraints with explicitly named weight attributes.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 3:
        cmds.error("Please select the driver object first, followed by the two driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Detect explicitly named weight attributes for the current constraint
        weight_attrs = [f"{constraint}.{enum_value}_CTRLW{index}" for index, enum_value in enumerate(enum_values)]
        # Verify that these attributes exist
        valid_weight_attrs = [attr for attr in weight_attrs if cmds.objExists(attr)]
        
        if len(valid_weight_attrs) != num_enum_values:
            cmds.error(f"Constraint '{constraint}' is missing some weight attributes. Found: {valid_weight_attrs}")
            return
        
        print(f"Constraint '{constraint}' weights detected: {valid_weight_attrs}")
        all_weight_attrs.append(valid_weight_attrs)

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the two driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

# Error: Please select the driver object first, followed by the two driven constraints.
# # Traceback (most recent call last):
# #   File "<maya console>", line 61, in <module>
# #   File "<maya console>", line 13, in setup_follow_driven_keys_from_selection
# # RuntimeError: Please select the driver object first, followed by the two driven constraints.
select -r L_Leg_IK_PV_CTRL ;
select -add L_Leg_IK_PV_CTRL_GRP_parentConstraint1 ;
select -add L_Leg_IK_PV_CTRL_GRP_scaleConstraint1 ;
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    handling two constraints with explicitly named weight attributes.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 3:
        cmds.error("Please select the driver object first, followed by the two driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Detect explicitly named weight attributes for the current constraint
        weight_attrs = [f"{constraint}.{enum_value}_CTRLW{index}" for index, enum_value in enumerate(enum_values)]
        # Verify that these attributes exist
        valid_weight_attrs = [attr for attr in weight_attrs if cmds.objExists(attr)]
        
        if len(valid_weight_attrs) != num_enum_values:
            cmds.error(f"Constraint '{constraint}' is missing some weight attributes. Found: {valid_weight_attrs}")
            return
        
        print(f"Constraint '{constraint}' weights detected: {valid_weight_attrs}")
        all_weight_attrs.append(valid_weight_attrs)

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the two driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
# Error: Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' is missing some weight attributes. Found: ['L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.COG_CTRLW1']
# # Traceback (most recent call last):
# #   File "<maya console>", line 61, in <module>
# #   File "<maya console>", line 39, in setup_follow_driven_keys_from_selection
# # RuntimeError: Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' is missing some weight attributes. Found: ['L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.COG_CTRLW1']
import maya.cmds as cmds

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    dynamically detecting weight attributes for constraints with mixed naming patterns.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 3:
        cmds.error("Please select the driver object first, followed by the two driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Dynamically detect all weight attributes in the constraint
        weight_attrs = cmds.listAttr(constraint, string="*W*") or []
        full_weight_attrs = [f"{constraint}.{attr}" for attr in weight_attrs if cmds.objExists(f"{constraint}.{attr}")]
        
        # Ensure the detected attributes match the number of enum values
        if len(full_weight_attrs) != num_enum_values:
            print(f"Constraint '{constraint}' detected weight attributes: {full_weight_attrs}")
            cmds.error(f"Constraint '{constraint}' is missing or has mismatched weight attributes.")
            return

        print(f"Constraint '{constraint}' weights detected: {full_weight_attrs}")
        all_weight_attrs.append(full_weight_attrs)

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the two driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' detected weight attributes: ['L_Leg_IK_PV_CTRL_GRP_parentConstraint1.rotateQuaternionW', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.COG_CTRLW1', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Hulk_AssetW2', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.L_Leg_Clav_FK_CTRLW3', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.L_Leg_IK_CTRLW4']
# Error: Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' is missing or has mismatched weight attributes.
# # Traceback (most recent call last):
# #   File "<maya console>", line 62, in <module>
# #   File "<maya console>", line 40, in setup_follow_driven_keys_from_selection
# # RuntimeError: Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' is missing or has mismatched weight attributes.
import maya.cmds as cmds
import re  # Import regex module to validate attribute names

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    ensuring weight attributes end with a number after 'W'.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 3:
        cmds.error("Please select the driver object first, followed by the two driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Detect weight attributes ending with 'W' followed by a number
        weight_attrs = cmds.listAttr(constraint, string="*W*") or []
        valid_weight_attrs = [
            f"{constraint}.{attr}" for attr in weight_attrs
            if re.match(r".*W\d+$", attr) and cmds.objExists(f"{constraint}.{attr}")
        ]
        
        # Ensure the detected attributes match the number of enum values
        if len(valid_weight_attrs) != num_enum_values:
            print(f"Constraint '{constraint}' detected weight attributes: {valid_weight_attrs}")
            cmds.error(f"Constraint '{constraint}' is missing or has mismatched weight attributes.")
            return
        
        print(f"Constraint '{constraint}' weights detected: {valid_weight_attrs}")
        all_weight_attrs.append(valid_weight_attrs)

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the two driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
Constraint 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1' weights detected: ['L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.COG_CTRLW1', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.Hulk_AssetW2', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.L_Leg_Clav_FK_CTRLW3', 'L_Leg_IK_PV_CTRL_GRP_parentConstraint1.L_Leg_IK_CTRLW4']
Constraint 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1' weights detected: ['L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.Transform_CTRLW0', 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.COG_CTRLW1', 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.Hulk_AssetW2', 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.L_Leg_Clav_FK_CTRLW3', 'L_Leg_IK_PV_CTRL_GRP_scaleConstraint1.L_Leg_IK_CTRLW4']
Driven keys successfully set up for Follow on L_Leg_IK_PV_CTRL.
select -r R_Leg_IK_CTRL ;
select -add R_Leg_IK_CTRL_GRP_parentConstraint1 ;
select -add R_Leg_IK_CTRL_GRP_scaleConstraint1 ;
import maya.cmds as cmds
import re  # Import regex module to validate attribute names

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    ensuring weight attributes end with a number after 'W'.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 3:
        cmds.error("Please select the driver object first, followed by the two driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Detect weight attributes ending with 'W' followed by a number
        weight_attrs = cmds.listAttr(constraint, string="*W*") or []
        valid_weight_attrs = [
            f"{constraint}.{attr}" for attr in weight_attrs
            if re.match(r".*W\d+$", attr) and cmds.objExists(f"{constraint}.{attr}")
        ]
        
        # Ensure the detected attributes match the number of enum values
        if len(valid_weight_attrs) != num_enum_values:
            print(f"Constraint '{constraint}' detected weight attributes: {valid_weight_attrs}")
            cmds.error(f"Constraint '{constraint}' is missing or has mismatched weight attributes.")
            return
        
        print(f"Constraint '{constraint}' weights detected: {valid_weight_attrs}")
        all_weight_attrs.append(valid_weight_attrs)

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the two driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle'] (4 total)
Constraint 'R_Leg_IK_CTRL_GRP_parentConstraint1' weights detected: ['R_Leg_IK_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'R_Leg_IK_CTRL_GRP_parentConstraint1.COG_CTRLW1', 'R_Leg_IK_CTRL_GRP_parentConstraint1.Hulk_AssetW2', 'R_Leg_IK_CTRL_GRP_parentConstraint1.R_Leg_Clav_FK_CTRLW3']
Constraint 'R_Leg_IK_CTRL_GRP_scaleConstraint1' weights detected: ['R_Leg_IK_CTRL_GRP_scaleConstraint1.Transform_CTRLW0', 'R_Leg_IK_CTRL_GRP_scaleConstraint1.COG_CTRLW1', 'R_Leg_IK_CTRL_GRP_scaleConstraint1.Hulk_AssetW2', 'R_Leg_IK_CTRL_GRP_scaleConstraint1.R_Leg_Clav_FK_CTRLW3']
Driven keys successfully set up for Follow on R_Leg_IK_CTRL.
select -r R_Leg_IK_CTRL ;
select -r R_Leg_IK_CTRL_GRP_parentConstraint1 ;
select -r R_Leg_IK_CTRL_GRP_scaleConstraint1 ;
select -r R_Leg_Clav_FK_CTRL ;
select -r L_Leg_IK_CTRL ;
select -r L_Leg_Base_IK_CTRL ;
select -r L_Leg_IK_PV_CTRL ;
select -r R_Leg_IK_CTRL ;
select -r R_Leg_Base_IK_CTRL ;
select -add R_Leg_Base_IK_CTRL_GRP_parentConstraint1 ;
select -add R_Leg_Base_IK_CTRL_GRP_scaleConstraint1 ;
import maya.cmds as cmds
import re  # Import regex module to validate attribute names

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    ensuring weight attributes end with a number after 'W'.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 3:
        cmds.error("Please select the driver object first, followed by the two driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Detect weight attributes ending with 'W' followed by a number
        weight_attrs = cmds.listAttr(constraint, string="*W*") or []
        valid_weight_attrs = [
            f"{constraint}.{attr}" for attr in weight_attrs
            if re.match(r".*W\d+$", attr) and cmds.objExists(f"{constraint}.{attr}")
        ]
        
        # Ensure the detected attributes match the number of enum values
        if len(valid_weight_attrs) != num_enum_values:
            print(f"Constraint '{constraint}' detected weight attributes: {valid_weight_attrs}")
            cmds.error(f"Constraint '{constraint}' is missing or has mismatched weight attributes.")
            return
        
        print(f"Constraint '{constraint}' weights detected: {valid_weight_attrs}")
        all_weight_attrs.append(valid_weight_attrs)

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the two driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle'] (4 total)
Constraint 'R_Leg_Base_IK_CTRL_GRP_parentConstraint1' weights detected: ['R_Leg_Base_IK_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'R_Leg_Base_IK_CTRL_GRP_parentConstraint1.COG_CTRLW1', 'R_Leg_Base_IK_CTRL_GRP_parentConstraint1.Hulk_AssetW2', 'R_Leg_Base_IK_CTRL_GRP_parentConstraint1.R_Leg_Clav_FK_CTRLW3']
Constraint 'R_Leg_Base_IK_CTRL_GRP_scaleConstraint1' weights detected: ['R_Leg_Base_IK_CTRL_GRP_scaleConstraint1.Transform_CTRLW0', 'R_Leg_Base_IK_CTRL_GRP_scaleConstraint1.COG_CTRLW1', 'R_Leg_Base_IK_CTRL_GRP_scaleConstraint1.Hulk_AssetW2', 'R_Leg_Base_IK_CTRL_GRP_scaleConstraint1.R_Leg_Clav_FK_CTRLW3']
Driven keys successfully set up for Follow on R_Leg_Base_IK_CTRL.
select -r R_Leg_IK_PV_CTRL ;
select -add R_Leg_IK_PV_CTRL_GRP_parentConstraint1 ;
select -add R_Leg_IK_PV_CTRL_GRP_scaleConstraint1 ;
import maya.cmds as cmds
import re  # Import regex module to validate attribute names

def setup_follow_driven_keys_from_selection(follow_attr):
    """
    Automates the setup of driven keys for a follow system using an enum attribute,
    ensuring weight attributes end with a number after 'W'.
    
    :param follow_attr: The name of the follow enum attribute on the driver object (e.g., 'Follow').
    """
    # Get the current selection
    selection = cmds.ls(selection=True)
    if len(selection) < 3:
        cmds.error("Please select the driver object first, followed by the two driven constraints.")
        return

    driver = selection[0]  # The first selected object is the driver
    driven_constraints = selection[1:]  # Remaining selections are the driven constraints

    # Check if the driver has the follow attribute
    if not cmds.attributeQuery(follow_attr, node=driver, exists=True):
        cmds.error(f"The attribute '{follow_attr}' does not exist on the driver object '{driver}'.")
        return

    # Get the enum values from the Follow attribute
    enum_values = cmds.attributeQuery(follow_attr, node=driver, listEnum=True)[0].split(':')
    num_enum_values = len(enum_values)
    print(f"Enum values detected: {enum_values} ({num_enum_values} total)")

    # Prepare to collect weight attributes for each driven constraint
    all_weight_attrs = []

    for constraint in driven_constraints:
        # Detect weight attributes ending with 'W' followed by a number
        weight_attrs = cmds.listAttr(constraint, string="*W*") or []
        valid_weight_attrs = [
            f"{constraint}.{attr}" for attr in weight_attrs
            if re.match(r".*W\d+$", attr) and cmds.objExists(f"{constraint}.{attr}")
        ]
        
        # Ensure the detected attributes match the number of enum values
        if len(valid_weight_attrs) != num_enum_values:
            print(f"Constraint '{constraint}' detected weight attributes: {valid_weight_attrs}")
            cmds.error(f"Constraint '{constraint}' is missing or has mismatched weight attributes.")
            return
        
        print(f"Constraint '{constraint}' weights detected: {valid_weight_attrs}")
        all_weight_attrs.append(valid_weight_attrs)

    # Iterate through each enum value and set driven keys
    for i in range(num_enum_values):
        # Set the driver attribute to the current enum index
        cmds.setAttr(f"{driver}.{follow_attr}", i)
        
        # Update weights for all driven constraints
        for weight_attrs in all_weight_attrs:
            for j, weight_attr in enumerate(weight_attrs):
                weight = 1 if i == j else 0  # Set 1 for the active constraint, 0 for others
                cmds.setAttr(weight_attr, weight)
                cmds.setDrivenKeyframe(weight_attr, currentDriver=f"{driver}.{follow_attr}")
    
    print(f"Driven keys successfully set up for {follow_attr} on {driver}.")

# Example usage:
# Select the driver object first, then the two driven constraints, and run the script.
setup_follow_driven_keys_from_selection("Follow")

Enum values detected: ['Transform', 'COG', 'World', 'Clavicle', 'IK Handle'] (5 total)
Constraint 'R_Leg_IK_PV_CTRL_GRP_parentConstraint1' weights detected: ['R_Leg_IK_PV_CTRL_GRP_parentConstraint1.Transform_CTRLW0', 'R_Leg_IK_PV_CTRL_GRP_parentConstraint1.COG_CTRLW1', 'R_Leg_IK_PV_CTRL_GRP_parentConstraint1.Hulk_AssetW2', 'R_Leg_IK_PV_CTRL_GRP_parentConstraint1.R_Leg_Clav_FK_CTRLW3', 'R_Leg_IK_PV_CTRL_GRP_parentConstraint1.R_Leg_IK_CTRLW4']
Constraint 'R_Leg_IK_PV_CTRL_GRP_scaleConstraint1' weights detected: ['R_Leg_IK_PV_CTRL_GRP_scaleConstraint1.Transform_CTRLW0', 'R_Leg_IK_PV_CTRL_GRP_scaleConstraint1.COG_CTRLW1', 'R_Leg_IK_PV_CTRL_GRP_scaleConstraint1.Hulk_AssetW2', 'R_Leg_IK_PV_CTRL_GRP_scaleConstraint1.R_Leg_Clav_FK_CTRLW3', 'R_Leg_IK_PV_CTRL_GRP_scaleConstraint1.R_Leg_IK_CTRLW4']
Driven keys successfully set up for Follow on R_Leg_IK_PV_CTRL.
select -r R_Leg_IK_PV_CTRL ;
select -cl -sym  ;
select -r L_Foot_02_FK_CTRL_GRP ;
select -add L_Foot_01_FK_CTRL_GRP ;
select -r L_Foot_01_FK_CTRL_GRP L_Foot_02_FK_CTRL_GRP L_Toe_05_Knuckle_01_FK_CTRL_GRP L_Toe_05_Knuckle_02_FK_CTRL_GRP L_Toe_04_Knuckle_01_FK_CTRL_GRP L_Toe_04_Knuckle_02_FK_CTRL_GRP L_Toe_03_Knuckle_01_FK_CTRL_GRP L_Toe_03_Knuckle_02_FK_CTRL_GRP L_Toe_02_Knuckle_01_FK_CTRL_GRP L_Toe_02_Knuckle_02_FK_CTRL_GRP L_Toe_01_Knuckle_01_FK_CTRL_GRP L_Toe_01_Knuckle_02_FK_CTRL_GRP ;
select -add R_Foot_01_FK_CTRL_GRP ;
select -r L_Foot_01_FK_CTRL_GRP L_Foot_02_FK_CTRL_GRP L_Toe_05_Knuckle_01_FK_CTRL_GRP L_Toe_05_Knuckle_02_FK_CTRL_GRP L_Toe_04_Knuckle_01_FK_CTRL_GRP L_Toe_04_Knuckle_02_FK_CTRL_GRP L_Toe_03_Knuckle_01_FK_CTRL_GRP L_Toe_03_Knuckle_02_FK_CTRL_GRP L_Toe_02_Knuckle_01_FK_CTRL_GRP L_Toe_02_Knuckle_02_FK_CTRL_GRP L_Toe_01_Knuckle_01_FK_CTRL_GRP L_Toe_01_Knuckle_02_FK_CTRL_GRP R_Toe_01_Knuckle_02_FK_CTRL_GRP R_Toe_01_Knuckle_01_FK_CTRL_GRP R_Toe_02_Knuckle_02_FK_CTRL_GRP R_Toe_02_Knuckle_01_FK_CTRL_GRP R_Toe_03_Knuckle_02_FK_CTRL_GRP R_Toe_03_Knuckle_01_FK_CTRL_GRP R_Toe_04_Knuckle_02_FK_CTRL_GRP R_Toe_04_Knuckle_01_FK_CTRL_GRP R_Toe_05_Knuckle_02_FK_CTRL_GRP R_Toe_05_Knuckle_01_FK_CTRL_GRP R_Foot_02_FK_CTRL_GRP R_Foot_01_FK_CTRL_GRP ;
select -r R_Foot_01_FK_JNT ;
select -r R_Foot_01_FK_JNT L_Foot_01_FK_JNT ;
duplicate -rr;
// Result: R_Foot_01_FK_JNT1 L_Foot_01_FK_JNT1 //
parent -w;
// R_Foot_01_FK_JNT1 L_Foot_01_FK_JNT1
select -r R_Foot_01_FK_JNT1 ;
select -add L_Foot_01_FK_JNT1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT_parentConstraint1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Foot_02_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Foot_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_01_FK_JNT_scaleConstraint1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT|L_Toe_02_Knuckle_02_FK_JNT|L_Toe_02_Knuckle_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT|L_Toe_02_Knuckle_02_FK_JNT|L_Toe_02_Knuckle_02_FK_JNT_parentConstraint1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -add L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_parentConstraint1 ;
select -add L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT_parentConstraint1 ;
select -add L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT_parentConstraint1 ;
select -add R_Foot_01_FK_JNT1|R_Foot_01_FK_JNT_scaleConstraint1 ;
select -r L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT_parentConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT_scaleConstraint1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_01_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_01_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Foot_02_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Foot_02_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT|R_Toe_01_Knuckle_02_FK_JNT|R_Toe_01_Knuckle_02_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT|R_Toe_01_Knuckle_02_FK_JNT|R_Toe_01_Knuckle_02_FK_JNT_parentConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT|R_Toe_02_Knuckle_02_FK_JNT|R_Toe_02_Knuckle_02_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT|R_Toe_02_Knuckle_02_FK_JNT|R_Toe_02_Knuckle_02_FK_JNT_parentConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT|R_Toe_03_Knuckle_02_FK_JNT|R_Toe_03_Knuckle_02_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT|R_Toe_03_Knuckle_02_FK_JNT|R_Toe_03_Knuckle_02_FK_JNT_parentConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT|R_Toe_04_Knuckle_02_FK_JNT|R_Toe_04_Knuckle_02_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT|R_Toe_04_Knuckle_02_FK_JNT|R_Toe_04_Knuckle_02_FK_JNT_parentConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT_scaleConstraint1 ;
select -r R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT_parentConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_02_FK_JNT|R_Toe_05_Knuckle_02_FK_JNT_scaleConstraint1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_02_FK_JNT|R_Toe_05_Knuckle_02_FK_JNT_parentConstraint1 ;
select -r R_Foot_01_FK_JNT1 ;
select -r R_Foot_01_FK_JNT1 R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_02_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT|R_Toe_04_Knuckle_02_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT|R_Toe_03_Knuckle_02_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT|R_Toe_02_Knuckle_02_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT R_Foot_01_FK_JNT1|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT|R_Toe_01_Knuckle_02_FK_JNT L_Foot_01_FK_JNT1 L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_02_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT|L_Toe_02_Knuckle_02_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT L_Foot_01_FK_JNT1|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT ;
searchReplaceNames "FK" "IK" "selected";
// Replaced 24 names.
searchReplaceNames "JNT1" "JNT" "selected";
// Replaced 1 names.
select -r L_Toe_01_Knuckle_02_IK_JNT|R_Foot_02_FK_JNT ;
select -r L_Toe_01_Knuckle_02_IK_JNT ;
select -r L_Toe_01_Knuckle_02_IK_JNT|R_Foot_02_FK_JNT ;
select -r L_Toe_01_Knuckle_02_IK_JNT ;
// Undo: select -r L_Toe_01_Knuckle_02_IK_JNT 
// Undo: select -r L_Toe_01_Knuckle_02_IK_JNT|R_Foot_02_FK_JNT 
// Undo: select -r L_Toe_01_Knuckle_02_IK_JNT 
// Undo: select -r L_Toe_01_Knuckle_02_IK_JNT|R_Foot_02_FK_JNT 
// Undo: searchReplaceNamesCallback OptionBoxWindow|formLayout136|tabLayout8|formLayout138|tabLayout9|columnLayout13 1
// Undo: searchReplaceNamesCallback OptionBoxWindow|formLayout136|tabLayout8|formLayout138|tabLayout9|columnLayout13 1
file -save;
// D:/GitHub/rigging/Hulk/scenes/HulkRig.ma

Removing unknown nodes
------------------------------------

Removing duplicate shading networks
------------------------------------

Optimize Scene Size Summary:
----------------------------
	Removed 0 unknown nodes
	Removed 0 duplicate shading networks

Scene optimized (Removed unknown nodes, Removed duplicate shading networks) - see Script Editor for details.
searchReplaceNames "JNT1" "JNT" "selected";
// Replaced 2 names.
select -r |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT ;
select -r |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT ;
select -r |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_02_FK_JNT ;
select -r |R_Foot_01_FK_JNT ;
select -r |R_Foot_01_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_05_Knuckle_01_FK_JNT|R_Toe_05_Knuckle_02_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_04_Knuckle_01_FK_JNT|R_Toe_04_Knuckle_02_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_03_Knuckle_01_FK_JNT|R_Toe_03_Knuckle_02_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_02_Knuckle_01_FK_JNT|R_Toe_02_Knuckle_02_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT |R_Foot_01_FK_JNT|R_Foot_02_FK_JNT|R_Toe_01_Knuckle_01_FK_JNT|R_Toe_01_Knuckle_02_FK_JNT |L_Foot_01_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_05_Knuckle_01_FK_JNT|L_Toe_05_Knuckle_02_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_04_Knuckle_01_FK_JNT|L_Toe_04_Knuckle_02_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_03_Knuckle_01_FK_JNT|L_Toe_03_Knuckle_02_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_02_Knuckle_01_FK_JNT|L_Toe_02_Knuckle_02_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT |L_Foot_01_FK_JNT|L_Foot_02_FK_JNT|L_Toe_01_Knuckle_01_FK_JNT|L_Toe_01_Knuckle_02_FK_JNT ;
searchReplaceNames "FK" "IK" "selected";
// Replaced 24 names.
select -r L_Toe_01_Knuckle_02_IK_JNT ;
select -r R_Toe_05_Knuckle_01_IK_JNT ;
select -r L_Toe_01_Knuckle_02_IK_JNT|R_Foot_02_FK_JNT ;
select -r L_Toe_01_Knuckle_02_IK_JNT ;
select -cl -sym  ;
// Undo: select -cl -sym  
// Undo: select -r L_Toe_01_Knuckle_02_IK_JNT 
// Undo: select -r L_Toe_01_Knuckle_02_IK_JNT|R_Foot_02_FK_JNT 
// Undo: select -r R_Toe_05_Knuckle_01_IK_JNT 
// Undo: select -r L_Toe_01_Knuckle_02_IK_JNT 
// Undo: searchReplaceNamesCallback OptionBoxWindow|formLayout152|tabLayout16|formLayout154|tabLayout17|columnLayout17 1
