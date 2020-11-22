# Installation guide

## Table of Contents

- [System dependencies](#system-dependencies)
- [Gnome theme Dracula by Ant](#gnome-theme-dracula-by-ant)
- [FZF](#fzf) (Fuzzy Finder)
- [Oh-my-zsh](#oh-my-zsh)
- [VIM](#vim)

## System dependencies

```zsh
sudo apt update
sudo apt -y zsh fzf git curl wget nvim nvm gnome-sushi snapd
sudo snap install brave code spotify vlc docker insomnia

# TODO: Duplicated, I can remove this one ?
# Setup symlinks
sh ~/dotfiles/scripts/refresh-symlinks.sh

# Refresh zsh
source ~/.zshrc

# Set zsh as default shell
chsh -s $(which zsh)
```

## Oh-my-zsh

```zsh
# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup symlinks
sh ~/dotfiles/scripts/refresh-symlinks.sh

# Refresh zsh
source ~/.zshrc

# Install PowerLevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Gnome theme Dracula by Ant

```zsh
# Download the repo
git clone --depth 1 https://github.com/dracula/gtk.git ~/.themes/Dracula

# Set theme
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Yaru"
```

## FZF 
FZF or "Fuzzy Finder" is used by zsh and vim

```zsh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# Install
# TODO: Use config file instead "install" script 
#~/.fzf/install
```

## VIM

### Plug

```zsh
## Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```