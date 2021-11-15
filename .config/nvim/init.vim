" Enable file tpye specifc handling
filetype plugin indent on

" Generic settings
set syntax=enable
set hlsearch
set nofoldenable
set mouse=a 
set history=10000
set ignorecase
set fileformat=unix " use *nix style line breaks (LF)
set backupdir=~/.cache/vim 
set fileencoding=Latin1 
set shell=$SHELL
set background=light
set showcmd
set wildmenu

" indentation settings
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
" spell checker settings
set nospell
set spelllang=de,en_us

" files that have a lower priority when matching wildcards
set suffixes=".bak,~.o,.info,.swp,.obj"

" automatically switch to the open file's directory
set autochdir
set spellsuggest=best,5

" always show file name in the bottom left corner
set laststatus=2
set statusline+=%F

" Line number settings: enable, clear text color, set background color
set number
highlight clear LineNr
highlight LineNr ctermbg=0 

" Highlight the 130th column and set background 
set colorcolumn=130
highlight ColorColumn ctermbg=0

" highlight characters that go past the 131 character limit
call matchadd('ColorColumn', '\%131v', 100)


" Use default X11 clipboard instead of default
set clipboard=unnamedplus

" Python settings
au BufNewFile,BufRead *.py 
	\ set expandtab

" Yaml settings
au BufNewFile,BufRead *.yml,*yaml
	\ set expandtab
	\ set shiftwidth=2
	\ set tabstop=2
