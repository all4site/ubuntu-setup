#!/usr/bin/env bash
BOTTOM_VERSION=$(curl -s "https://api.github.com/repos/ClementTsang/bottom/releases/latest" | grep -Po '"tag_name": "\K[0-9.]+') &&
	curl -Lo bottom.deb "https://github.com/ClementTsang/bottom/releases/latest/download/bottom_${BOTTOM_VERSION}_amd64.deb" &&
	sudo apt install -y ./bottom.deb &&
	rm -rf bottom.deb
