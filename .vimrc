" Author: Kelly Burton
" Github: kburton501
" This is a compilation of many different settings stolen from
" all parts of the web

set t_Co=256
set laststatus=2

" PLUGGIN STUFF:
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

let g:instant_markdown_autostart = 0

Plugin 'vimwiki/vimwiki'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'fxn/vim-monochrome'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
colorscheme monochrome

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" NUMBERS:
set number
set relativenumber

" COLORS:
"color scheme apprentice
" set bg=dark
"fixes background color changing on scroll
set t_ut=
syntax on

"set color column at 80 column
"This is used to keep code from becoming  to long

set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=darkgrey

" INDENTS:
set autoindent
set tabstop=4
set softtabstop=0
set expandtab 
set shiftwidth=4
set smarttab

" SPELLING:
" set spell


" KEY REMAPS:
"No arrow keys
noremap <up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

iabbrev @@ kebu2@pdx.edu

inoremap jk <esc>
inoremap <esc> <nop>

onoremap p i(

"Open .vimrc in split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Resource .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" _ Use * to make it fuzzy


" TAG JUMPING:
" Create the 'tags' file (may need to install ctags first)
command! MakeTags !ctags -R .

"Now WE CAN:
" - Use ^} to jump to tag under cursor
" - Use g^} for ambiguous tags
" - Use ^t to jump back up the tag stack
"
"
"Vim Wiki stuff
"let g:vimwiki_ext2syntax = {'.Rmd' : 'markdown', '.rmd': 'markdown', '.md' : ' markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{'path': '~/notitia', 'syntax' : 'markdown' , 'ext' : '.md'}]

"let wiki_1 = {}
"let wiki_1.path = '~/vimwiki/'
"let wiki_1.nested_syntaxes = {}

"let wiki_2 = {}
"let wiki_2.path = '~/Documents/Winter2020Notes/'
"let wiki_2.nested_syntaxes = {}

"let wiki_3 = {}
"let wiki_3.path = '~/Documents/dnd/'
"let wiki_3.nested_syntaxes = {}

"let wiki_4 = {}
"let wiki_4.path = '~/Documents/Fall2019Notes/'
"let wiki_4.nested_syntaxes = {}

"let g:vimwiki_list = [wiki_1, wiki_2, wiki_3, wiki_4]

