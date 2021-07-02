source /apollo/env/envImprovement/var/vimrc

colo zenburn
filetype indent plugin on
" Overriding stuff that I don't want from envImprovement
set nocindent
set guioptions+=m
set guioptions+=w
set textwidth=0
set hlsearch
set number

" Adding NERDTree hacks.
" Note : You need to install NerdTREE using :
" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree 
"
" Adding NERDTree auto-close.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Adding NERDTree auto-open
" autocmd vimenter * NERDTree

" NERDTree auto-open only if there are no files open.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Adding NERDTree shortcut binding - double-tap backslash to toggle it.
map \\ :NERDTreeToggle<CR>

" Adding mouse support
" On macOS, regular click will work for vim, and fn+selection are applied to
" the terminal.
set mouse=a mousemodel=popup_setpos
