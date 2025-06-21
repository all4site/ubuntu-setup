#!/usr/bin/env bash

Green='\033[0;32m'
Red='\033[0;31m'
NC='\033[0m'

# 🔐 Проверка sudo и продление таймера
echo -e "${Green}Checking sudo permissions...${NC}"
sudo -v
# Обновление sudo-пароля в фоне
while true; do
  sleep 60
  sudo -n true 2>/dev/null || exit
done & disown

# 🔄 Спиннер
spinner() {
  local pid=$1
  local delay=0.3
  local red='\033[0;31m'
  local reset='\033[0m'
  local dots=("" "." ".." "...")

  while kill -0 "$pid" 2>/dev/null; do
    for d in "${dots[@]}"; do
      printf "\r${red}Loading$d   ${reset}"
      sleep $delay
    done
  done
  printf "\r\033[K"  # Очистить строку после завершения
}

run_task() {
  local name="$1"
  local script="$2"

  echo -e "${Green}Installing ${name}...${NC}"
  ( source "$script" > /dev/null 2>&1 ) & pid=$!
  disown "$pid"
  spinner "$pid"
  echo -e "${Green}✓ ${name^} complete${NC}"
}

# Запуск задач
run_task "update" "update.sh"
run_task "lazygit" "lazygit.sh"
run_task "node" "node.sh"
run_task "bottom" "bottom.sh"
run_task "exa" "exa.sh"
run_task "fd" "fd.sh"
run_task "tmux" "tmux.sh"
run_task "gdu" "gdu.sh"
run_task "zoxide" "zoxide.sh"
run_task "docker" "docker.sh"
run_task "neovim" "neovim.sh"
run_task "zsh" "zsh.sh"
run_task "oh-my-zsh" "ohmyzsh.sh"
