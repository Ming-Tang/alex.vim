if exists('g:loaded_syntastic_alex_checker')
    finish
endif
let g:loaded_syntastic_alex_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_alex_alex_GetLocList() dict
    let l:makeprg = self.makeprgBuild({ 'args': '-d' })

    let l:errorformat =
        \ '%f:%l:%c:%m'

    return SyntasticMake({
        \ 'makeprg': l:makeprg,
        \ 'errorformat': l:errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'alex',
    \ 'name': 'alex' })

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
