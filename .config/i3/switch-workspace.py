#!/bin/env python3
import i3ipc
from sys import argv
from subprocess import Popen
from subprocess import PIPE

i3 = i3ipc.Connection()

for i in list(filter(lambda o: o.focused, i3.get_workspaces())):
    active_display = i.output

if (len(argv) == 1):

    workspace_list = ""

    workspace = ""
    for i in i3.get_workspaces():
        workspace_list += i.name + "\n"
    rofi = Popen('rofi -dmenu'.split(), stdin=PIPE, stdout=PIPE)
    rofi.stdin.write(workspace_list)
    rofi.stdin.close()
    workspace = rofi.stdout.read()
else:
    workspace = argv[1]

i3.command('workspace' + workspace)
for i in list(filter(lambda o: o.focused, i3.get_workspaces())):
    workspace = i.name

i3.command('move workspace to output' + active_display)
i3.command('workspace' + workspace)
