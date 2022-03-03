#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os

exec(open( os.getenv('HOME') + "/.config/qutebrowser/base16-onedark.config.py").read())
config.load_autoconfig()
