#!/usr/bin/env bash
Green='\033[0;32m'
NC='\033[0m'

echo -e "${Green}Installing...${NC}"
git clone https://github.com/all4site/ubuntu-setup.git > /dev/null 2>&1 &&
	cd ubuntu-setup/install > /dev/null 2>&1 &&
	chmod +x *.sh  > /dev/null 2>&1 &&
	mkdir -p ~/.config > /dev/null 2>&1 &&
	source install.sh &&
	cd ~/ > /dev/null 2>&1 &&
	rm -rf ubuntu-setup > /dev/null 2>&1 &&
	sudo chsh -s $(which zsh) > /dev/null 2>&1 &&
	exec zsh > /dev/null 2>&1 &&
echo "${Green}Install completed...${NC}"
