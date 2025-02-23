#!/bin/bash

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting bootstrap process...${NC}"

# Update apt and install essential prerequisites
echo -e "${BLUE}Installing prerequisites (git, curl, zsh)...${NC}"
sudo apt update
sudo apt install -y git curl zsh

# Define dotfiles directory
DOTFILES_DIR="$HOME/.dotfiles"

# Clone the repository if it doesn't exist
if [ ! -d "$DOTFILES_DIR" ]; then
    echo -e "${BLUE}Cloning dotfiles repository...${NC}"
    git clone https://github.com/jazzabeanie/dotfiles.git "$DOTFILES_DIR"
else
    echo -e "${GREEN}Dotfiles directory already exists at $DOTFILES_DIR${NC}"
fi

# Navigate to the dotfiles directory
cd "$DOTFILES_DIR"

# Make sure scripts are executable
chmod +x *.sh

# Trigger other installation scripts
echo -e "${BLUE}Running installation scripts...${NC}"

# 1. Install packages
if [ -f "install_packages.sh" ]; then
    echo -e "${BLUE}Running install_packages.sh...${NC}"
    ./install_packages.sh
fi

# 2. Install Docker
if [ -f "install_docker.sh" ]; then
    echo -e "${BLUE}Running install_docker.sh...${NC}"
    ./install_docker.sh
fi

# 3. Install snaps
if [ -f "install_snaps.sh" ]; then
    echo -e "${BLUE}Running install_snaps.sh...${NC}"
    sudo ./install_snaps.sh
fi

# 4. Setup dotfiles symlinks
if [ -f "setup_dotfiles.sh" ]; then
    echo -e "${BLUE}Running setup_dotfiles.sh...${NC}"
    ./setup_dotfiles.sh
fi

# Offer to change default shell to zsh
if [ "$SHELL" != "$(which zsh)" ]; then
    echo -e "${BLUE}Would you like to change your default shell to zsh? (y/n)${NC}"
    read -r response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        echo -e "${BLUE}Changing default shell to zsh...${NC}"
        chsh -s "$(which zsh)"
        echo -e "${GREEN}Shell changed to zsh. Please log out and back in for changes to take effect.${NC}"
    else
        echo -e "${BLUE}Skipping shell change.${NC}"
    fi
else
    echo -e "${GREEN}Zsh is already your default shell.${NC}"
fi

echo -e "${GREEN}Bootstrap process complete!${NC}"
