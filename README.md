# Ubuntu prepare environment
## Short way
### Create new wsl image
```
wsl --shutdown
```
```
wsl --unregister coco
```
```
wsl --import coco E:\coco E:\ubuntu-iso\ubuntu-24-04.tar
```
### Create wsl user default
```
echo [user]$'\n'default=kiril >> /etc/wsl.conf
```
### Иначе пользователь по умолчанию не поменяется
```
wsl --shutdown
```
### Далее запускаме автоустанощик
```
wget https://raw.githubusercontent.com/all4site/ubuntu-setup/main/install.sh >/dev/null 2>&1 && chmod +x install.sh && ./install.sh 
```
### :exclamation: Обязательно надо проверить время :exclamation:
```
timedatectl
```
#### Если не правильное поменять
```
sudo timedatectl set-timezone Europe/Kyiv
```
### :exclamation: Обязательно надо поставить Node иначе не будет работать neovim :exclamation:
```
nvm install 22
```
 ### :exclamation: Важно следить за размерами диска docker много жрет!!! :exclamation:
```
Optimize-VHD -Path "E:\coco-docker\ext4.vhdx" -Mode Full
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


## Neovim

:exclamation:If you need RESET nvim config use restnvim.sh in ~/.my-ubuntu-setu :exclamation:

:exclamation:If you need REMOVE nvim config use removeallvim.sh ~/.my-ubuntu-setu :exclamation:

### Codeium AI install
```
:Codeium Auth
```
