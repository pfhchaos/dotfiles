#!/bin/env python
import i3ipc
from sys import argv
from subprocess import Popen
from subprocess import PIPE

print(len(argv))

i3 = i3ipc.Connection()

for i in filter(lambda o: o.active, i3.get_outputs()):
    active_display = i.name

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
i3.command('move workspace to output' + active_display)
i3.command('workspace' + workspace)
