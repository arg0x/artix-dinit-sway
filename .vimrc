" Set compatibility Vim only
set nocompatible

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
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

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

" Term colors 
if has('termguicolors')
	set termguicolors
else
	set t_Co = 256
endif
"
" Experimental
"
"highlight LineNr term=bold cterm=NONE ctermfg=White ctermbg=NONE gui=NONE guifg=White guibg=NONE


" gruvbox-material dark hard
"set bg=dark
"let g:gruvbox_material_background = 'hard'

"let g:gruvbox_material_foreground = 'original'

"let g:gruvbox_material_disable_terminal_colors = 1

" Enable gruvbox-material transparency
"let g:gruvbox_material_transparent_background = 1

" Disable italic comments
"let g:gruvbox_material_disable_italic_comment = 0

" Enable bold
"let g:gruvbox_material_enable_bold = 1

" Material style statusline
"let g:gruvbox_material_statusline_style = 'original' 

" Set colorscheme
"colorscheme gruvbox-material

" autocomplete with lsp use -> ctrl+xo
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=number
endfunction

" load
augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
