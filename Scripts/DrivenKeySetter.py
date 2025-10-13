import maya.cmds as cmds

def create_reverse_foot_ui():
    """
    Creates a UI to streamline setting driven keys for a reverse foot rig.
    """
    window_name = "reverseFootDrivenKeysUI"

    # Check if the window exists
    if cmds.window(window_name, exists=True):
        cmds.deleteUI(window_name)

    # Create a new window
    window = cmds.window(window_name, title="Reverse Foot Driven Keys", widthHeight=(300, 400))

    # Create a layout
    main_layout = cmds.columnLayout(adjustableColumn=True)

    # Driver selection
    cmds.text(label="Select the Driver (Control)")
    driver_field = cmds.textFieldButtonGrp(
        label="Driver:",
        buttonLabel="Use Selection",
        buttonCommand=lambda: set_selected_object(driver_field)
    )

    # Driven selection
    cmds.text(label="Select the Driven (Joint)")
    driven_field = cmds.textFieldButtonGrp(
        label="Driven:",
        buttonLabel="Use Selection",
        buttonCommand=lambda: set_selected_object(driven_field)
    )

    # Driver attribute selection
    cmds.text(label="Select Driver Attribute")
    driver_attr_menu = cmds.optionMenuGrp(label="Driver Attribute:")

    # Driven attribute selection
    cmds.text(label="Select Driven Attribute")
    driven_attr_menu = cmds.optionMenuGrp(label="Driven Attribute:")

    # Update attribute menus when selection changes
    cmds.button(
        label="Update Attributes",
        command=lambda x: update_attribute_menus(
            cmds.textFieldButtonGrp(driver_field, query=True, text=True),
            cmds.textFieldButtonGrp(driven_field, query=True, text=True),
            driver_attr_menu,
            driven_attr_menu
        )
    )

    # Driven attribute and value pairs
    cmds.text(label="Set Driven Attribute and Values")
    driven_values_field = cmds.floatFieldGrp(numberOfFields=2, label="Driver Range (Min/Max):", value1=-1, value2=1)

    # Checkbox for inverting values
    invert_checkbox = cmds.checkBox(label="Invert Driven Values")

    # Buttons
    cmds.button(
        label="Set Driven Keys",
        command=lambda x: set_driven_keys(
            cmds.textFieldButtonGrp(driver_field, query=True, text=True),
            cmds.textFieldButtonGrp(driven_field, query=True, text=True),
            cmds.optionMenuGrp(driver_attr_menu, query=True, value=True),
            cmds.optionMenuGrp(driven_attr_menu, query=True, value=True),
            cmds.floatFieldGrp(driven_values_field, query=True, value1=True),
            cmds.floatFieldGrp(driven_values_field, query=True, value2=True),
            cmds.checkBox(invert_checkbox, query=True, value=True)
        )
    )

    # Show the window
    cmds.showWindow(window)

def set_selected_object(field):
    """
    Sets the selected object into the given text field.
    :param field: The textField to update with the selected object's name.
    """
    selection = cmds.ls(selection=True)
    if selection:
        cmds.textFieldButtonGrp(field, edit=True, text=selection[0])
    else:
        cmds.warning("Please select an object.")

def update_attribute_menus(driver, driven, driver_attr_menu, driven_attr_menu):
    """
    Updates the attribute menus with the attributes of the selected driver and driven objects.
    :param driver: Name of the driver object.
    :param driven: Name of the driven object.
    :param driver_attr_menu: Option menu for driver attributes.
    :param driven_attr_menu: Option menu for driven attributes.
    """
    # Clear existing menu items
    driver_menu_items = cmds.optionMenuGrp(driver_attr_menu, query=True, itemListLong=True)
    if driver_menu_items:
        for item in driver_menu_items:
            cmds.deleteUI(item)

    driven_menu_items = cmds.optionMenuGrp(driven_attr_menu, query=True, itemListLong=True)
    if driven_menu_items:
        for item in driven_menu_items:
            cmds.deleteUI(item)

    # Populate driver attributes
    if driver:
        attributes = cmds.listAttr(driver, keyable=True) or []
        for attr in attributes:
            cmds.menuItem(label=attr, parent=driver_attr_menu + "|OptionMenu")

    # Populate driven attributes
    if driven:
        attributes = cmds.listAttr(driven, keyable=True) or []
        for attr in attributes:
            cmds.menuItem(label=attr, parent=driven_attr_menu + "|OptionMenu")

def set_driven_keys(driver, driven, driver_attr, driven_attr, driver_min, driver_max, invert):
    """
    Sets driven keys for the specified driver and driven attributes and ensures graph properties are set.
    :param driver: Name of the driver object.
    :param driven: Name of the driven object.
    :param driver_attr: The attribute on the driver.
    :param driven_attr: The attribute on the driven object.
    :param driver_min: The minimum value for the driver.
    :param driver_max: The maximum value for the driver.
    :param invert: Boolean indicating whether to invert the driven values.
    """
    if not driver or not driven or not driver_attr or not driven_attr:
        cmds.warning("Please ensure all fields are filled correctly.")
        return

    # Calculate driven values based on inversion
    if invert:
        driven_min = driver_max
        driven_max = driver_min
    else:
        driven_min = driver_min
        driven_max = driver_max

    # Set the minimum driven key
    cmds.setAttr(f"{driver}.{driver_attr}", driver_min)
    cmds.setAttr(f"{driven}.{driven_attr}", driven_min)
    cmds.setDrivenKeyframe(f"{driven}.{driven_attr}", currentDriver=f"{driver}.{driver_attr}")

    # Set the maximum driven key
    cmds.setAttr(f"{driver}.{driver_attr}", driver_max)
    cmds.setAttr(f"{driven}.{driven_attr}", driven_max)
    cmds.setDrivenKeyframe(f"{driven}.{driven_attr}", currentDriver=f"{driver}.{driver_attr}")

    # Adjust graph properties for the driven keys
    anim_curve = cmds.listConnections(f"{driven}.{driven_attr}", type="animCurve")
    if anim_curve:
        for curve in anim_curve:
            cmds.selectKey(curve)
            cmds.keyTangent(edit=True, itt="spline", ott="spline")
            cmds.setInfinity(pri="linear", poi="linear")
            cmds.warning(f"Animation curve adjusted: {curve}")

    cmds.confirmDialog(title="Success", message="Driven keys successfully set up with spline graph and linear infinity.")

# Launch the UI
create_reverse_foot_ui()
