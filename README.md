# Ubuntu prepare environment
## Short way
### Create wsl default login user (in windows) optional
```
wsl --distribution ubuntu -u user_name
```
### Create wsl user default
```
echo [user]$'\n'default=kiril >> /etc/wsl.conf
```
### Иначе пользователь по умолчанию не поменяется
```
wsl --shutdown
```
```bash
wget https://raw.githubusercontent.com/all4site/ubuntu-setup/main/install.sh && chmod +x install.sh && ./install.sh
```
```
nvm install 18
```
## Step one - install packege
### Update ubuntu :heavy_check_mark:
```bash
sudo apt update
```
```bash
sudo apt upgrage
```
---

### Zsh install :heavy_check_mark:
```bash
sudo apt install zsh -y
```
---

### Oh-my-zsh install :heavy_check_mark:
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
---

### Lazygit install *for git* :heavy_check_mark:
##### Get last version 
```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
```
##### Download
```bash
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
```
##### Unpack
```bash
tar xf lazygit.tar.gz lazygit
```
##### Build
```bash
sudo install lazygit /usr/local/bin
```
##### Remove archive and bin file 
```bash
rm lazygit.tar.gz lazygit
```
---

### Bottom install *tack manager* :heavy_check_mark:
##### Download
```bash
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.10.2/bottom_0.10.2-1_amd64.deb
```
##### Install
```bash
sudo dpkg -i bottom_0.10.2-1_amd64.deb
```
##### Remove install file
```bash
rm -rf bottom_0.10.2-1_amd64.deb
```
---

### Exa install *change for ls* :heavy_check_mark:
```bash
sudo apt -y install exa
```
---

### Fd install *change for find* :heavy_check_mark:
##### Download
```bash
wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb
```
##### Install
```bash
sudo apt install -y ./fd-musl_7.3.0_amd64.deb
```
##### Remove install file 
```bash
rm -rf fd-musl_7.3.0_amd64.debb
```
---

### Tmux install :heavy_check_mark:
```bash
sudo apt install tmux
```
### Gdu install *disk usage util* :heavy_check_mark:
##### Download
```
wget https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz
```
##### Unpacking
```
tar xzf gdu_linux_amd64.tgz
```
##### Executable
```
sudo chmod +x gdu_linux_amd64
```
##### Move to bin
```
sudo mv gdu_linux_amd64 /usr/bin/gdu
```
##### Rrmove archive
```
rm gdu_linux_amd64.tgz
```

## Step two - setting
### Copy ssh key :heavy_check_mark:
```bash
chmod 600 .ssh/id_rsa
```
### Clone git rep with setup :heavy_check_mark:
```bash
git clone git@github.com:all4site/ubuntu-setup.git ~/.my-ubuntu-setup && chmod u+x removeallnvim.sh resetnvim.sh
```
### Copy zsh setup :heavy_check_mark:
```bash
cp ~/.my-ubuntu-setu/.zshrc .zshrc
```
### Install oh-my-zsh plugins :heavy_check_mark:
##### powerlevel10k/powerlevel10k
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k && exec zsh
```
```bash
 cp ~/.my-ubuntu-setu/.p10k.zsh .p10k.zsh && exec zsh
```
##### zsh-syntax-highlighting
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && exec zsh
```
##### zsh-autosuggestions
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && exec zsh
```
##### zoxide
```bash
sudo apt install -y zoxide && exec zsh
```
### Tmux setup :heavy_check_mark:

:exclamation: Press Ctr-a+U and Ctr-a+I to update tmux configuration :exclamation:

:bangbang: To attach the last session use tm insted tmux :bangbang:
##### Copy Tmux config
```bash
cp ~/.my-ubuntu-setu/.tmux.conf ~/.tmux.conf
```
##### Tmux Plugin Manager
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```


## Step three - neovim

:exclamation:If you need RESET nvim config use restnvim.sh in ~/.my-ubuntu-setu :exclamation:

:exclamation:If you need REMOVE nvim config use removeallvim.sh ~/.my-ubuntu-setu :exclamation:

:recycle:Use vi for start nvim:recycle:

### Install
```bash
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage && sudo apt install fuse gcc ripgrep
```
```bash
sudo cp nvim.appimage /usr/bin/nvim && chmod u+x /usr/bin/nvim
```
### Get configuration
```bash
git clone git@github.com:all4site/myneovim.git ~/.config/nvim
```
### Codeium AI install
```
:Codeium Auth
```
