#!/usr/bin/env b.sh > /dev/null 2>&1
Green='\033[0;32m'
NC='\033[0m'

echo -e "${Green}Updating...${NC}"
source update.sh > /dev/null 2>&1 
echo -e "${Green}Installing lazygit...${NC}"
source lazygit.sh > /dev/null 2>&1 
echo -e "${Green}Installing node...${NC}"
source node.sh > /dev/null 2>&1
echo -e "${Green}Installing buttom...${NC}"
source bottom.sh > /dev/null 2>&1
echo -e "${Green}Installing exa...${NC}"
source exa.sh > /dev/null 2>&1
echo -e "${Green}Installing fd...${NC}"
source fd.sh > /dev/null 2>&1
echo -e "${Green}Installing tmux...${NC}"
source tmux.sh > /dev/null 2>&1
echo -e "${Green}Installing gdu...${NC}"
source gdu.sh > /dev/null 2>&1
echo -e "${Green}Installing zoxide...${NC}"
source zoxide.sh > /dev/null 2>&1
echo -e "${Green}Installing docker...${NC}"
source docker.sh > /dev/null 2>&1
echo -e "${Green}Installing neovim...${NC}"
source neovim.sh > /dev/null 2>&1
echo -e "${Green}Installing .sh > /dev/null 2>&1...${NC}"
source .sh > /dev/null 2>&1.sh

echo -e "${Green}Installing oh-my-.sh > /dev/null 2>&1...${NC}"
source ohmy.sh > /dev/null 2>&1.sh
