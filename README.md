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
 ### :exclamation: Важно следить за размерами диска docker много жрет!!! :exclamation:
```
Optimize-VHD -Path "E:\coco-docker\ext4.vhdx" -Mode Full
```
## Step two - setting
### Copy ssh key :heavy_check_mark:
```bash
chmod 600 .ssh/id_rsa
```
### Tmux setup :heavy_check_mark:

:exclamation: Press Ctr-a+U and Ctr-a+I to update tmux configuration :exclamation:

:bangbang: To attach the last session use tm insted tmux :bangbang:
## Neovim

:exclamation:If you need RESET nvim config use restnvim.sh in ~/.my-ubuntu-setu :exclamation:

:exclamation:If you need REMOVE nvim config use removeallvim.sh ~/.my-ubuntu-setu :exclamation:
