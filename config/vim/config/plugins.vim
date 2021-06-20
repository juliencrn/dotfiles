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

    " Fuzzy search
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

		" Git
		Plug 'tpope/vim-fugitive'

    " Programming
    Plug 'tomtom/tcomment_vim'
    " Plug 'dense-analysis/ale'
    Plug 'vim-syntastic/syntastic'

    " Rust
    Plug 'rust-lang/rust.vim'

    " JS/TS Syntax
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'herringtondarkholme/yats.vim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'jparise/vim-graphql'
    " Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    "VSCode Intellisence
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'kevinoid/vim-jsonc' " TODO: Worked ?
    Plug 'leafgarland/typescript-vim' " TODO: Needed ?
    Plug 'peitalin/vim-jsx-typescript' " TODO: Needed ?
call plug#end()


