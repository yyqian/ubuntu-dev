syntax enable       " Enable syntax highlighting
set encoding=utf-8

" Searching
set hlsearch        " Highlight search results
set ignorecase      " Ignore case when searching
set smartcase

" Tabs
set shiftwidth=2    " Number of auto-indent spaces
set tabstop=2       " Number of spaces to use for each step of (auto)indent.
set softtabstop=2   " Number of spaces per Tab
set autoindent      " Copy indent from current line when starting a new line
set expandtab       " Use spaces instead of tabs

" Show unwanted white-space
set list
set listchars=tab:→→,trail:•,nbsp:•,precedes:•,extends:•

" Other
set ruler           " Always show current position
set history=100     " by default Vim saves your last 8 commands.
set undolevels=1000 " Number of undo levels
set nobackup
set noswapfile

" Return to last edit position when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif

" strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

"set number         " Show line numbers.
"set laststatus=2   " Always show the status line
"set smartindent
"set smarttab

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
