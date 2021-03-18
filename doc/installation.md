# Installation guide

## Table of Contents

- [System dependencies](#system-dependencies)
- [Gnome theme Dracula by Ant](#gnome-theme-dracula-by-ant)
- [FZF](#fzf) (Fuzzy Finder)
- [Oh-my-zsh](#oh-my-zsh)
- [VIM](#vim)
- [i3](#i3) I3 Windows manager

## System dependencies

```zsh
sudo apt update
sudo apt -y zsh tree fd-find bat tig deborphan i3lock feh picom taskwarrior fzf git curl wget vim nvm gnome-sushi snapd dconf-cli pulseaudio alsa py3status tty-clock

sudo snap install brave code spotify vlc docker insomnia gdu-disk-usage-analyzer.gdu

npm install --global gtop

# Vim 8.2
```zsh
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

# Set zsh as default shell
chsh -s $(which zsh)

# rename binaries using symlinks 
ln -s $(which fdfind) ~/.local/bin/fd
ln -s $(which batcat) ~/.local/bin/bat

```

## Oh-my-zsh

```zsh
# Install Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup symlinks
# sh ~/dotfiles/scripts/refresh-symlinks.sh
refresh

# Refresh zsh
# source ~/.zshrc
reload

# Install PowerLevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install plugin: zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install plugin: zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ...then activate the plugin in ~/.zshrc
plugins=( [plugins...] zsh-syntax-highlighting)
```

## Gnome theme Dracula by Ant

```zsh
# Download the repo
git clone --depth 1 https://github.com/dracula/gtk.git ~/.themes/Dracula

# Set theme
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Yaru"

# Gnome-terminal
git clone https://github.com/dracula/gnome-terminal ~/.gnome-terminal
cd ~/.gnome-terminal
./install.sh
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

# I3

I3 is a tiny windows manager
```zsh
sudo apt install i3
```

# Alacritty terminal
```zsh
sudo add-apt-repository ppa:aslatter/ppa
sudo apt update
sudo apt install alacritty
```

## Rofi 1.6

```zsh
sudo add-apt-repository ppa:troutcobbler/lts-debs
sudo apt-get update
sudo apt install rofi
```


https://draculatheme.com/insomnia/

