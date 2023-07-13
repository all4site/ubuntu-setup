#!/usr/bin/env bash
Green='\033[0;32m'
NC='\033[0m'

echo "${Green}Installing...${NC}"
git clone https://github.com/all4site/ubuntu-setup.git &&
	cd ubuntu-setup/install &&
	chmod +x *.sh &&
	./install.sh &&
	rm -rf ubuntu-setup &&
	sudo chsh -s $(which zsh) &&
	exec zsh
