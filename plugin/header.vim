" File              : plugin/header.vim
" Author            : Paul Kulyk <paul.kulyk@gmail.com>
" Date              : 12.03.2018
" Last Modified Date: 12.03.2018
" Last Modified By  : Paul Kulyk <paul.kulyk@gmail.com>
" File              : plugin/header.vim
" Author            : Paul Kulyk <paul.kulyk@gmail.com>
" Date              : 12.03.2018
" Last Modified Date: 12.03.2018
" Last Modified By  : Paul Kulyk <paul.kulyk@gmail.com>
" Commands for vim user
" Author Info Headers
command! AddHeader call header#add_header(0, 0, 0)
command! AddMinHeader call header#add_header(1, 0, 0)
" License Headers
command! AddMITLicense call header#add_header(2, 'mit', 0)
command! AddApacheLicense call header#add_header(2, 'apache', 0)
command! AddGNULicense call header#add_header(2, 'gnu', 0)

" Set default global values
if g:header_auto_add_header == 1
    autocmd BufNewFile * call header#add_header(0, 0, 1)
    autocmd BufWritePre * silent! :AddHeader " Update date when saving buffer
endif
