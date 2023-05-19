" Set compatibility Vim only
" set nocompatible

" Automatically wrap text that extends beyond the screen length
set wrap

" Set Encoding 
set encoding=utf-8

" Set Line number
set number

" Set Status bar
set laststatus=2

" Turn on syntax highlighting 
syntax on

" Turn off modelines
set modelines=0

" Speed up scrolling 
set ttyfast

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use '%' to jump between them
set matchpairs+=<:>

" Display different types of white spaces.
" set list
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif
