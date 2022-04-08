" Enable file tpye specifc handling
filetype plugin indent on
filetype plugin on

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

" Search down into subfolders
" Provides tab-completion for all file related paths
set path+=**

" File browser
let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 			" open splits to the right
let g:netrw_liststyle=3		" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^|\s\s\)\zs\.\S\+'
" Use :edit [FOLDER] to open a file browser
" <CR>/v/t to open in an h-split/v-split/tab
" check |netwr-browse-maps| for more mappings

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

" Create the `tags` file (may need to install ctags first)
comman! MakeTags !ctags -R .

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

" ocaml support
set rtp^="$HOME/.opam/default/share/ocp-indent/vim"


" Vim plug
" Update with: sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin()
Plug 'fladson/vim-kitty'

call plug#end()
"#########################################
"################ SNIPPITS ###############
"#########################################
nnoremap ,html :-1read $XDG_CONFIG_HOME/nvim/skeleton.html<CR>3jwf>a
nnoremap ,abscase :-1read $XDG_CONFIG_HOME/snippits/abs-test-case.rb<CR>
