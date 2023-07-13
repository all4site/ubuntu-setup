wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage &&
	sudo apt install -y fuse gcc ripgrep &&
	sudo cp nvim.appimage /usr/bin/nvim &&
	sudo chmod +x /usr/bin/nvim &&
	rm nvim.appimage &&
	git clone https://github.com/all4site/myneovim.git ~/.config/nvim
