# ubuntu-setup


## Update ubuntu
- sudo apt update
- sudo apt upgrage

## Zsh install
- sudo apt install zsh -y

## Oh-my-zsh install
- sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Lazygit install
Get last version
- LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
Download
- curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
Unpack
- tar xf lazygit.tar.gz lazygit
Build
- sudo install lazygit /usr/local/bin

##Need to install
lazygit
bottom
fd
tmux
