" Install vim-plug if we don't already have it
" Credit to github.com/captbaritone
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute '!mkdir -p ~/.vim/plugged'
    execute '!mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin("~/.vim/plugged")
    " UI 
    Plug 'dracula/vim'
    Plug 'vim-airline/vim-airline' 
    Plug 'ryanoasis/vim-devicons' " TODO: Needed ?

    Plug 'scrooloose/nerdtree'

    " TODO: Check built-in feature
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    "VSCode Intellisence
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'kevinoid/vim-jsonc' " TODO: Worked ?
    Plug 'leafgarland/typescript-vim' " TODO: Needed ?
    Plug 'peitalin/vim-jsx-typescript' " TODO: Needed ?
call plug#end()
