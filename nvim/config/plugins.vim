call plug#begin("~/.vim/plugged")
    Plug 'dracula/vim'

    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    "VSCode Intellisence
    Plug 'neoclide/coc.nvim'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
call plug#end()