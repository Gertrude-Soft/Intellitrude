#!/bin/bash

GREEN="\033[1;32m"
NC="\033[1;32m"

sudo rm -rf /tmp/intellitrude_installer
git clone -q git@github.com:lg-epitech/Intellitrude.git /tmp/intellitrude_installer
sudo mkdir -p /opt/intellitrude
sudo cp -rf /tmp/intellitrude_installer/* /opt/intellitrude/
sudo cp /opt/intellitrude/intellitrude /usr/bin/
sudo rm -rf /opt/intellitrude/.git
sudo rm -rf /tmp/intellitrude_installer

echo -e $GREEN"Good Plant\033[1;0m"$NC
