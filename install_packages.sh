#!/bin/bash

# Pre-setup: Repositories
sudo add-apt-repository -y ppa:hluk/copyq
sudo apt update

# --- Core Essentials ---
sudo apt install --yes \
    bash \
    build-essential \
    coreutils \
    curl \
    gcc \
    git \
    git-extras \
    gnome-tweaks \
    gnome-tweak-tool \
    keychain \
    pkg-config \
    tmux \
    vim \
    wget \
    zip \
    unrar \
    zsh

# --- Modern CLI Utilities ---
sudo apt install --yes \
    bat \
    direnv \
    fd-find \
    fzf \
    gron \
    jq \
    lsd \
    ncdu \
    ripgrep \
    trash-cli \
    tree \
    zoxide

# --- Development Tools ---
sudo apt install --yes \
    expect \
    neovim \
    python3-pip \
    pipx \
    sshfs \
    xclip \
    xsel

# --- Media & Graphics ---
sudo apt install --yes \
    bc \
    ffmpeg \
    flameshot \
    heif-gdk-pixbuf \
    libfdk-aac-dev \
    libjpeg-turbo8-dev \
    libmp3lame-dev \
    libopenjp2-7-dev \
    libopus-dev \
    libsdl2-dev \
    libx264-dev \
    libxvidcore-dev \
    yt-dlp

# --- Dependencies & Libraries ---
sudo apt install --yes \
    libfuse2 \
    libncursesw5-dev \
    libreadline-dev

# --- Desktop Apps ---
sudo apt install --yes copyq

# --- Post-Installation Setup ---

# Pipx path setup
pipx ensurepath

# Setup symlinks for tools with different binary names
mkdir -p ~/.local/bin

# bat -> batcat
if [ ! -L ~/.local/bin/bat ]; then
    ln -s /usr/bin/batcat ~/.local/bin/bat
fi

# fd -> fdfind
if [ ! -L ~/.local/bin/fd ]; then
    ln -s $(which fdfind) ~/.local/bin/fd
fi

echo "Package installation complete!"
