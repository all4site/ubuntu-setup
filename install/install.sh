#!/usr/bin/env bash
Green='\033[0;32m'
NC='\033[0m'

echo -e "${Green}Updating...${NC}"
source update.sh
echo -e "${Green}Installing lazygit...${NC}"
source lazygit.sh
echo -e "${Green}Installing buttom...${NC}"
source bottom.sh
echo -e "${Green}Installing exa...${NC}"
source exa.sh
echo -e "${Green}Installing fd...${NC}"
source fd.sh
echo -e "${Green}Installing tmux...${NC}"
source tmux.sh
echo -e "${Green}Installing gdu...${NC}"
source gdu.sh
echo -e "${Green}Installing zoxide...${NC}"
source zoxide.sh
echo -e "${Green}Installing neovim...${NC}"
source neovim.sh
echo -e "${Green}Installing zsh...${NC}"
source zsh.sh

echo -e "${Green}Installing oh-my-zsh...${NC}"
source ohmyzsh.sh
