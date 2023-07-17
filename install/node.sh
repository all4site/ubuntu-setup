#!/usr/bin/env bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash &&
	exec zsh &&
	echo Insert node version: &&
	read nodeVersion &&
	nvm install $nodeVersion
