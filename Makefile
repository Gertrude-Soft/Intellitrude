##
## EPITECH PROJECT, 2023
## B-CPE-101-LYN-1-1-myprintf-laurent.gonzalez
## File description:
## Makefile
##

all:	compile

compile:
	echo "#!/bin/bash" > intellitrude
	echo "python3 intellitrude_source/intellitrude.py \"\$$@\"" >> intellitrude
	chmod +x intellitrude

merge:	compile
	sudo cp -r * /opt/intellitrude/
	sudo cp /opt/intellitrude/intellitrude /usr/bin/
	@echo -e "\033[1;32mGood Plant\033[1;0m"

fclean:
	rm -f intellitrude

re: fclean	all
