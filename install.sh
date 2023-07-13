#!/usr/bin/env bash
echo "Installing..."
git clone https://github.com/all4site/ubuntu-setup.git &&
	cd ubuntu-setup/install &&
	chmod +x *.sh &&
	./install.sh &&
	rm -rf ubuntu-setup &&
	sudo chsh -s $(which zsh) &&
	exec zsh
