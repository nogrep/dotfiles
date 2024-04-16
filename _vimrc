" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

set encoding=utf-8
set fileencodings=utf-8,cp932
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set backupdir=~/.vim/backup/
set undodir=~/.vim/undodir
set undofile

set guifont=JetBrainsMono\ NFM:h16
set clipboard+=unnamed
set number
set relativenumber
syntax on
filetype on
set hlsearch
set belloff=all
set cursorline
highlight CursorLine cterm=NONE ctermbg=240
set laststatus=2
set list
"set listchars=tab:»-,trail:·,space:·,nbsp:␣,eol:¬,extends:>,precedes:<
set listchars=tab:»-,trail:·,nbsp:␣,eol:¬,extends:>,precedes:<
"highlight SpecialKey  ctermfg=59
highlight NonText ctermfg=59

set tabstop=2 shiftwidth=2 expandtab
set autoindent
set smartindent

" cursor shape
if &term =~? 'rxvt' || &term =~? 'xterm' || &term =~? 'st-'
    " 1 or 0 -> blinking block
    " 2 -> solid block
    " 3 -> blinking underscore
    " 4 -> solid underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
    " Insert Mode
    let &t_SI .= "\<Esc>[6 q"
    " Normal Mode
    let &t_EI .= "\<Esc>[0 q"
endif

" Maximize gVim window size
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
endif


" PLUGINS
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'easymotion/vim-easymotion'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Donaldttt/fuzzyy'
call plug#end()

let g:enable_fuzzyy_keymaps = 0
let g:files_respect_gitignore = 1

colorscheme onedark "slate

let mapleader = " "
nnoremap <silent> <Leader>e :NERDTreeToggle<CR>
nnoremap <silent> <Leader>g <Plug>(easymotion-bd-w)
nnoremap <silent> <Leader>sf :FuzzyFiles<CR>
nnoremap <silent> <Leader>sb :FuzzyBuffers<CR>
nnoremap <silent> <Leader>sg :FuzzyGrep<CR>
nnoremap <silent> <Leader>b :buffers<CR>:buffer
nnoremap <silent> <Leader>j :bn<CR>
nnoremap <silent> <Leader>k :bp<CR>
" Exit terminal mode
tnoremap <Esc><Esc> <C-\><C-n>:q!<CR>

