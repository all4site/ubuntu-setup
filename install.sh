#!/usr/bin/env bash

# Цвета
Green='\033[0;32m'
Red='\033[0;31m'
NC='\033[0m'

# Завершаем скрипт при ошибке
set -e

echo -e "${Green}Installing...${NC}"

# Клонируем репозиторий
git clone https://github.com/all4site/ubuntu-setup.git >/dev/null 2>&1

# Переходим в папку установки
cd ubuntu-setup/install

# Делаем все скрипты исполняемыми
chmod +x *.sh

# Создаём .config если его нет
mkdir -p ~/.config

# Запускаем основной установочный скрипт
source install.sh

# Возвращаемся в домашнюю директорию
cd ~

# Удаляем репозиторий установки
rm -rf ubuntu-setup

# Меняем оболочку на zsh
if command -v zsh >/dev/null 2>&1; then
  sudo chsh -s "$(which zsh)"
else
  echo -e "${Red}Zsh is not installed. Skipping shell change.${NC}"
fi

echo -e "${Green}Install completed. Launching Zsh...${NC}"
exec zsh

