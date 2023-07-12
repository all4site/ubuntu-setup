wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage &&
	sudo apt install -y fuse gcc ripgrep &&
	sudo cp nvim.appimage /usr/bin/nvim &&
	chmod u+x /usr/bin/nvim &&
	git clone git@github.com:all4site/myneovim.git ~/.config/nvim
