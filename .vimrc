syntax on
filetype plugin indent on

" recognise .h files as part of C language.
augroup header_detection
	autocmd!
	autocmd BufRead,BufNewFile *.h, set filetype=c.doxygen
augroup END

colorscheme tomorrow
highlight Normal guibg=white

" Set true colors.
set termguicolors

" Tab size default.
set shiftwidth=4
set softtabstop=4
set expandtab

" Tab in insert mode will input number of spaces.
set expandtab

" Show numbers.
set number

" Don't allow mouse mode.
set mouse=n

" allow cut line cut off.
set nowrap

" Jump between buffers without having to write.
set hidden

" Using statusline to show mode instead.
set noshowmode

" View options on tab complete.
set wildmenu

" Show operator commands.
set showcmd

" Keep uniform indent.
set autoindent

" Highlight search matches
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow recursive path for find function.
set path+=**

" Enter paste mode on F11
set pastetoggle=<F11>

command Lint execute "ALEEnable"
command Unlint execute "ALEDisable"

noremap cr $a<CR><Esc>
noremap Y y$ 
noremap <C-L> :nohl<CR><C-L>
noremap <F5> :nohl<CR>:e<CR>
inoremap <F5> <C-c>:nohl<CR>:e<CR>i

noremap  :NERDTreeFocus<CR> 
inoremap  <C-c>:NERDTreeFocus<CR> 
noremap  :NERDTreeToggle<CR>
inoremap  <C-c>:NERDTreeToggle<CR>
noremap  :ls<CR>:b 
inoremap  <C-c>:ls<CR>:b 
noremap  :Rg 
inoremap  <C-c>:Rg 
noremap  :find 
inoremap  <C-c>:find 
noremap  :ALEToggle<CR>
inoremap  <C-c>:ALEToggle<CR>

" Buffer jumping
noremap [1;3C :bn<CR>
noremap [1;3D :bp<CR>
inoremap [1;3C <C-c>:bn<CR>
inoremap [1;3D <C-c>:bp<CR>
