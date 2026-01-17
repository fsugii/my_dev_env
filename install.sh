#!/bin/bash

set -e

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "🚀 Instalando dotfiles..."

# Função para backup
backup_if_exists() {
  if [ -e "$1" ] && [ !  -L "$1" ]; then
    echo "📦 Backup:  $1 → $1.backup"
    mv "$1" "$1.backup"
  fi
}

# Função para criar symlink
create_symlink() {
  backup_if_exists "$2"
  ln -sf "$1" "$2"
  echo "✅ $2 → $1"
}

# Neovim
echo ""
echo "📝 Configurando Neovim..."
mkdir -p "$CONFIG_DIR"
create_symlink "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"

# Git
if [ -f "$DOTFILES_DIR/gitconfig" ]; then
  echo ""
  echo "🔧 Configurando Git..."
  create_symlink "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"
fi

# Bash
if [ -f "$DOTFILES_DIR/bashrc" ]; then
  echo ""
  echo "🐚 Configurando Bash..."
  create_symlink "$DOTFILES_DIR/bashrc" "$HOME/.bashrc"
fi

# Zsh
if [ -f "$DOTFILES_DIR/zshrc" ]; then
  echo ""
  echo "🐚 Configurando Zsh..."
  create_symlink "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"
fi

# Tmux
if [ -f "$DOTFILES_DIR/tmux.conf" ]; then
  echo ""
  echo "🖥️  Configurando Tmux..."
  create_symlink "$DOTFILES_DIR/tmux.conf" "$HOME/.tmux.conf"
fi

# Lazy. nvim
echo ""
echo "📦 Verificando Lazy.nvim..."
LAZY_PATH="$HOME/.local/share/nvim/lazy/lazy.nvim"
if [ !  -d "$LAZY_PATH" ]; then
  echo "⬇️  Instalando Lazy.nvim..."
  git clone --filter=blob:none \
    https://github.com/folke/lazy.nvim. git \
    --branch=stable \
    "$LAZY_PATH"
  echo "✅ Lazy. nvim instalado"
else
  echo "✅ Lazy.nvim já instalado"
fi

echo ""
echo "🎉 Instalação concluída!"
echo ""
echo "Execute: nvim"
