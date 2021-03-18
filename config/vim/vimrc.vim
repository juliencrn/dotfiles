"   / | / / ____/ __ \ |  / /  _/  |/  /
"  /  |/ / __/ / / / / | / // // /|_/ / 
" / /|  / /___/ /_/ /| |/ // // /  / /  
"/_/ |_/_____/\____/ |___/___/_/  /_/   
"

" Plugins
source $HOME/.vim/config/plugins.vim
source $HOME/.vim/config/explorer.vim

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

" Automatically change the current directory
" See https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
" autocmd BufEnter * silent! lcd %:p:h
" *****************************************
" For Completion:
" Require nobackup and nowritebackup too
set updatetime=300        " Reduce delay to improve DX
set cmdheight=2           " Give more space for displaying messages.
set hidden                " Hide buffers instead of closing them
" *****************************************

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

" Fuzzy finder using FZF
" Map Ctrl-P to access files
nnoremap <C-p> :FZF<CR>

" Layout position centered
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" FZF Options and preview using batcat (bat)
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:40%' --layout reverse --preview 'bat --color=always --style=grid --line-range :300 {}'"

" Make Vim as smart as VSCode
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-json', 'coc-tsserver', 'coc-svg', 'coc-yaml', 'coc-emmet', 'coc-highlight', 'coc-stylelint', 'coc-spell-checker']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif