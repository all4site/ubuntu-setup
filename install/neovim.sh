wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.appimage &&
	sudo apt install -y fuse gcc ripgrep &&
	sudo cp nvim-linux-x86_64.appimage /usr/bin/nvim &&
	sudo chmod +x /usr/bin/nvim &&
	rm nvim-linux-x86_64.appimage &&
	git clone https://github.com/all4site/neovim.git ~/.config/nvim
