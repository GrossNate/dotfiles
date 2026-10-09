#!/usr/bin/env bash
set -euo pipefail

OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"
CUSTOM_DIR="${ZSH_CUSTOM:-$OH_MY_ZSH_DIR/custom}"

# Install Oh My Zsh.
if [ ! -d "$OH_MY_ZSH_DIR" ]; then
  git clone --depth=1 \
    https://github.com/ohmyzsh/ohmyzsh.git \
    "$OH_MY_ZSH_DIR"
fi

# Install Powerlevel10k.
P10K_DIR="$CUSTOM_DIR/themes/powerlevel10k"

if [ ! -d "$P10K_DIR" ]; then
  mkdir -p "$(dirname "$P10K_DIR")"

  git clone --depth=1 \
    https://github.com/romkatv/powerlevel10k.git \
    "$P10K_DIR"
fi
