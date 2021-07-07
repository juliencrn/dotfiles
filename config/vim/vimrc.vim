source $HOME/.vim/config/plugins.vim
source $HOME/.vim/config/explorer.vim
source $HOME/.vim/config/search.vim
source $HOME/.vim/config/ide.vim

" use SPACE as mapleader
let mapleader=" "
" make sure spacebar doesn't have any mapping beforehand
nnoremap <SPACE> <Nop>

" From "Mastering Vim Quickly" book
set nocompatible          " Use Vim settings, rather than Vi settings
set softtabstop=2         " Indent by 2 spaces when hitting tab
set shiftwidth=2          " Indent by 2 spaces when auto-indenting
set tabstop=2             " Show existing tab with 2 space width
syntax enable             " Enable syntax highlighting
filetype plugin indent on " Enable indenting for plugins and files
set autoindent            " Enable auto indenting
set number                " Enable line number
colorscheme dracula       " Set nice looking colorscheme
set nobackup              " Disable backup files
set nowritebackup         " Disable backup
set laststatus=2          " Show status line
set wildmenu              " Show command line's tab complete options
set autoread              " Reload a file when it is changed from the outside
set autowrite             " Write the file when we leave the buffer
set spell                 " Enable spell checking (Default English)
set cursorline            " Highlight current line
set noswapfile            " Disable swapfiles too

if version >= 703
  set colorcolumn=+1      " Color the column after textwidth, usually the 80th
endif

if (has("termguicolors"))
    set termguicolors     " ?
endif 

" use Crtl+hjkl to move between split/vsplit panels
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Crtl-s: Save current file
nnoremap <C-s> :w<CR>

" Shortcuts
nnoremap <leader>\| :vsplit<CR>
nnoremap <leader>- :split<CR>

" Toggle comment the current line
nnoremap <leader>/ :TComment<CR>

" Open new split panes to right and bottom
set splitbelow
set splitright

" Color (Important to have right colors in tmux terminal)
set termguicolors
set term=xterm-256color
set background=dark
set t_Co=256
