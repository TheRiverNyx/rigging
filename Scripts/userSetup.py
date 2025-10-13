import maya.cmds as cmds

if not cmds.commandPort(":4435", query=True):
    cmds.commandPort(name=":4435")