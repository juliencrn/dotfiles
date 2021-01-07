"   / | / / ____/ __ \ |  / /  _/  |/  /
"  /  |/ / __/ / / / / | / // // /|_/ / 
" / /|  / /___/ /_/ /| |/ // // /  / /  
"/_/ |_/_____/\____/ |___/___/_/  /_/   
"

" Plugins
source ~/dotfiles/config/nvim/config/plugins.vim

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

" Others settings
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

" *****************************************
" For Completion:
" Require nobackup and nowritebackup too
set updatetime=300        " Reduce delay to improve DX
set cmdheight=2           " Give more space for displaying messages.
set hidden                " Hide buffers instead of closing them
" *****************************************


" NERD TREE
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" peitalin/vim-jsx-typescript
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" Typescriptreact as typescript type
augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" SEARCH FILE
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'vsplit',
  \ 'ctrl-v': 'split'
  \}

" Exclude from search .gitignored files
" TODO: Exclude .gitignored files like node_modules/*
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Make Vim as smart as VSCode
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-svg', 'coc-yaml', 'coc-emmet', 'coc-highlight', 'coc-stylelint', 'coc-spell-checker']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
