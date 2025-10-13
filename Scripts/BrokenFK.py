import maya.cmds as cmds

#get selection
sel = cmds.ls(sl=True)
parent = sel[0]
child = sel[1]

child_grp = cmds.listRelatives(child, parent = True)[0]

# create constraints
p_constraint_translate = cmds.parentConstraint(maintainOffset=True,skipRotate=True,weight=1)[0]#translations
p_constraint_rotation = cmds.parentConstraint(maintainOffset=True,skipTranslate=True,weight=1)[0] #rotations

cmds.addAttr(child, ln = "FollowTranslate", at = "double", min = 0, max = 1, dv = 1)
cmds.setAttr("%s.FollowTranslate" % (child), e = True, keyable = True)
cmds.addAttr(child, ln = "FollowRotate", at = "double", min = 0, max = 1, dv = 1)
cmds.setAttr("%s.FollowRotate" % (child), e = True, keyable = True)
cmds.connectAttr("%s.FollowTranslate" % (child), "%s.w0" % (p_constraint_translate), force = True)
cmds.connectAttr("%s.FollowRotation" % (child), "%s.w0" % (p_constraint_rotation), force = True)