"The all important nocompatible
set nocompatible

"Backspace clears out all sorts of crap.
set backspace=indent,eol,start

"Show all sorts of good information
set number
set showmode
set showcmd
set ruler

"Set up the wildmenu used for tab completing
set wildmenu
set wildmode=longest,full

"Searching options
set hlsearch
set incsearch

"Make the text look all purrty.
"Assume xterm and rxvt will support 256 colors.
if has("syntax")
    if &term =~ "xterm"
        set t_Co=256
        color inkpot
        let g:inkpot_black_background = 1
    elseif &term =~ "rxvt"
        set t_Co=256
        color inkpot
        let g:inkpot_black_background = 1
    endif
    syntax on
endif

nmap <silent> <c-n> :NERDTreeToggle<CR>

"Autocommand goodness.
if has ("autocmd")
    "Autocommands to set up tab widths and autoindentions for c, c++ and java
    augroup C_code
        autocmd FileType c,cpp,java
                     \ set tabstop=4 shiftwidth=4 softtabstop=4
        autocmd FileType c,cpp,java
                     \ set expandtab cindent
    augroup END

    "Autocommands to set the all important tab width for ruby. Also begins
    "new ruby files with the shebang and saves it as executable.
    augroup ruby
        autocmd BufNewFile *.rb 0put ='#!/usr/bin/env ruby'
        autocmd FileType ruby
                     \ set tabstop=2 shiftwidth=2 softtabstop=2
        autocmd FileType ruby
                     \ set expandtab smartindent
        autocmd BufWritePost *.rb !chmod 744 %
    augroup END

    "Autocommands to set python indentation rules. 4 space tabs per PEP8.
    augroup python
        autocmd FileType python
                     \ set tabstop=4 shiftwidth=4 softtabstop=4
        autocmd FileType python
                     \ set expandtab smartindent
    augroup END

    "Shell stuff sets autoindention details, the bang line, and saves the
    "file as an executable.
    augroup shell
        autocmd BufNewFile *.sh 0put ='#!/bin/sh'
        autocmd FileType sh
                     \ set tabstop=4 shiftwidth=4 softtabstop=4
        autocmd FileType sh
                     \ set expandtab smartindent
        autocmd BufWritePost *.sh !chmod 744 %
    augroup END

    "When editing text documents I dont need the line numbers and text
    "should wrap around 80 characters.
    augroup text
        autocmd BufRead,BufNewFile *.txt
                     \ set nonumber
        autocmd BufRead,BufNewFile *.txt
                     \ set textwidth=80
    augroup END
endif
