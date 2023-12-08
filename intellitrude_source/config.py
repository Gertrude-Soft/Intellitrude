##
## EPITECH PROJECT, 2023
## Intellitrude
## File description:
## config
##

import json
import sys
import os
import fcntl
import colors
import curses as cur

def set_config():
    try:
        with open(f"{'/opt/intellitrude/config/'}config.json", "r") as config_file:
            config = json.load(config_file)
    except FileNotFoundError:
        print(f"{colors.RED}No config file found.{colors.NC}")
        sys.exit(84)
    return config

def config_tui():
    window = None

    cur.initscr()
    fcntl.ioctl(0, os.get_terminal_size(), window)
