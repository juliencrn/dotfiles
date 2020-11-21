echo "Clean-up"
rm -rf \
    ~/.gitconfig \
    ~/.zshrc \
    ~/.fzf.bash \
    ~/.fzf.zsh \
    ~/.config/nvim/init.vim

echo ""
echo "Set up symlinks"
cd ~

# Base
ln -sv ~/dotfiles/.gitconfig ~

# zsh
ln -sv ~/dotfiles/zsh/zshrc.zsh ~/.zshrc
ln -sv ~/dotfiles/zsh/fzf.zsh ~/.fzf.zsh
ln -sv ~/dotfiles/zsh/p10k.zsh ~/.p10k.zsh

# vim
ln -sv ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

echo ""
echo "done"