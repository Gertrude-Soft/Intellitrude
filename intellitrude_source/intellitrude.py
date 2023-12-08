##
## GERTRUDE PROJECT, 2023
## Intellitrude
## File description:
## intellitrude
##

import sys
import os
import config

def main(ac, av):
    conf = config.set_config()

    if (ac == 2):
        if (av[1] == "update"):
            os.system("sh /opt/intellitrude/installer.sh")
        if (av[1] == "config"):
            config.config_tui()
    print(conf)


if __name__ == "__main__":
    main(len(sys.argv), sys.argv)
