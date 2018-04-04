#!/bin/env python3
import i3ipc
from xdo import Xdo
from sys import argv
from subprocess import Popen
from subprocess import PIPE

i3 = i3ipc.Connection()
xdo = Xdo()

mouse_location = xdo.get_mouse_location()

if (len(argv) == 1):

    workspace_list = ""

    workspace_new = ""
    for i in i3.get_workspaces():
        workspace_list += i.name + "\n"
    rofi = Popen('rofi -dmenu'.split(), stdin=PIPE, stdout=PIPE)
    rofi.stdin.write(workspace_list)
    rofi.stdin.close()
    workspace_new = rofi.stdout.read()
else:
    workspace_new = argv[1]



for i in list(filter(lambda o: o.focused, i3.get_workspaces())):
    active = i
#    active_workspace = i.name
#    active_display = i.output
#    active_visible = i.visible
#    active_x = i.rect.x
#    active_y = i.rect.y

for i in list(filter(lambda o: o.num == int(workspace_new), i3.get_workspaces())):
    new = i

print("active_workspace is " + active.name)
print("active_display is " + active.output)
print("active_visible is " + str(active.visible))
print("active_x is " + str(active.rect.x))
print("active_y is " + str(active.rect.y))
print("new_workspace is " + new.name)
print("new_display is " + new.output)
print("new_visible is " + str(new.visible))
print("new_x is " + str(new.rect.x))
print("new_y is " + str(new.rect.y))

mouse_offset_x = mouse_location.x - active.rect.x + new.rect.x
mouse_offset_y = mouse_location.y - active.rect.y + new.rect.y
print("mouse_offset_x is " + str(mouse_location.x))
print("mouse_offset_y is " + str(mouse_location.y))

# if the 2 workspaces are already on the same output just switch
if (active.output == new.output):
    i3.command('workspace ' + workspace_new)
else:
    i3.command('workspace ' + workspace_new)
    i3.command('move workspace to output' + active.output)
    xdo.move_mouse(mouse_location.x, mouse_location.y)
