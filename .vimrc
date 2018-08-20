set nocompatible      " We're running Vim, not Vi!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'junegunn/fzf'
call vundle#end()
filetype plugin indent on

let g:rspec_command = "!bin/rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()
syntax on
filetype plugin indent on
map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-t> :FZF<CR>
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set number
:set hlsearch
:set incsearch
:set ruler

nnoremap <Leader>rtw :%s/\s\+$//e<CR>
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
nnoremap <silent><Leader><C-[> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap K :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>
let g:ag_prg="ag --vimgrep --nobreak"

syntax enable
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
let g:solarized_termcolors=256

au WinEnter * set cursorcolumn
set cursorcolumn

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
:set laststatus=2
set statusline+=%f\ %l\:%c
set backspace=indent,eol,start

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:NERDSpaceDelims = 1

:set re=1
:set foldmethod=manual
:set lazyredraw
:set ttyfast
