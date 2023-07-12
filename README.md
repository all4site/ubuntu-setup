# Ubuntu prepare environment
---

## Update ubuntu
- sudo apt update
- sudo apt upgrage
---

## Zsh install
- sudo apt install zsh -y

---

## Oh-my-zsh install
- sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

---

## Lazygit install *for git*
1. Get last version
\   
     - LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
\
3. Download
    - curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
4. Unpack
    - tar xf lazygit.tar.gz lazygit
5. Build
    - sudo install lazygit /usr/local/bin
6. Remove archive and bin file
    - rm lazygit.tar.gz lazygit

---

## Bottom install *tack manager*
1. Get last version
    - BOTTOM_VERSION=$(curl -s "https://api.github.com/repos/ClementTsang/bottom/releases/latest" | grep -Po '"tag_name": "\K[0-9.]+')
2. Download
    - curl -Lo bottom.deb "https://github.com/ClementTsang/bottom/releases/latest/download/bottom_${BOTTOM_VERSION}_amd64.deb"
3. Install
    - sudo apt install -y ./bottom.deb
4. Remove install file
    - rm -rf bottom.deb

---

## Exa install *change for ls*
- sudo apt -y install exa

---

## Fd install *change for find*
1. Download
    -  wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb
2. Install
    - sudo apt install -y ./fd-musl_7.3.0_amd64.deb
3. Remove install file
    - rm -rf fd-musl_7.3.0_amd64.debb

---

## Tmux install
- sudo apt install tmux
  
##Need to install

