" === General Settings ===
set nocompatible          
syntax on                 
filetype plugin indent on 
set encoding=utf-8        

" === UI Enhancements ===
set number               
set relativenumber       
set cursorline            
set showcmd              
set showmode             
set ruler                
set laststatus=2         

" === Indentation ===
set tabstop=4           
set shiftwidth=4        
set expandtab           
set autoindent          
set smartindent          

" === Searching ===
set hlsearch             
set incsearch             
set ignorecase            
set smartcase             

" === Behavior Tweaks ===
set hidden                " Allow switching buffers without saving
set backspace=indent,eol,start " Make backspace behave like expected
set clipboard=unnamedplus" Use system clipboard (requires +clipboard)
set mouse=a               " Enable mouse in all modes

" === Performance ===
set lazyredraw            " Don't redraw while executing macros
set timeoutlen=500        " Faster escape from insert mode

" === Startup ===
set shortmess+=I          " Don't show the intro message
set noswapfile            " Disable swap files (live on the edge, sir)
set nobackup              " No backup files either
set nowritebackup         " Or write backup

" === Keybindings (Optional Examples) ===
" Map spacebar as leader key
let mapleader=" "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" === Colorscheme (Optional, default one is meh) ===
colorscheme desert        " Change this to whatever you've got installed

" === Plugins (if you’re using a plugin manager like vim-plug) ===
" call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-sensible'
" Plug 'junegunn/fzf.vim'
" Plug 'preservim/nerdtree'
" Plug 'airblade/vim-gitgutter'
" call plug#end()

" === Compile and Run Current File with <F5> ===
function! CompileRunFile()
  if &filetype == 'c'
    write
    !gcc % -o %< && ./%<
  elseif &filetype == 'cpp'
    write
    !g++ % -o %< && ./%<
  elseif &filetype == 'python'
    write
    !python3 %
  elseif &filetype == 'rust'
    write
    !cargo run
  elseif &filetype == 'go'
    write
    !go run %
  elseif &filetype == 'javascript'
    write
    !node %
  elseif &filetype == 'typescript'
    write
    !ts-node %
  else
    echo "No compile-and-run rule for filetype: " . &filetype
  endif
endfunction

" nnoremap <F5> :call CompileRunFile()<CR>

" Map <leader+r> to compile and run
nnoremap <leader>r :call CompileRunFile()<CR>

