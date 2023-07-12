# Ubuntu prepare environment
---

## Update ubuntu
```console
sudo apt update
```
```zsh
sudo apt upgrage
```
---

## Zsh install
```bash
sudo apt install zsh -y
```
---

## Oh-my-zsh install
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
---

## Lazygit install *for git*
#### Get last version 
```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
```
#### Download
```bash
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
```
#### Unpack
```bash
tar xf lazygit.tar.gz lazygit
```
#### Build
```bash
sudo install lazygit /usr/local/bin
```
#### Remove archive and bin file
```bash
rm lazygit.tar.gz lazygit
```
---

## Bottom install *tack manager*
#### Get last version
```bash
BOTTOM_VERSION=$(curl -s "https://api.github.com/repos/ClementTsang/bottom/releases/latest" | grep -Po '"tag_name": "\K[0-9.]+')
```
#### Download
```bash
curl -Lo bottom.deb "https://github.com/ClementTsang/bottom/releases/latest/download/bottom_${BOTTOM_VERSION}_amd64.deb"
```
#### Install
```bash
sudo apt install -y ./bottom.deb
```
#### Remove install file
```bash
rm -rf bottom.deb
```
---

## Exa install *change for ls*
```bash
sudo apt -y install exa
```
---

## Fd install *change for find*
#### Download
```bash
wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb
```
#### Install
```bash
sudo apt install -y ./fd-musl_7.3.0_amd64.deb
```
#### Remove install file
```bash
rm -rf fd-musl_7.3.0_amd64.debb
```
---

## Tmux install
```bash
sudo apt install tmux
```

##Need to install

