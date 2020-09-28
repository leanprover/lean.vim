if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal iskeyword=@,48-57,_,-,!,#,$,%

setlocal comments=s0:/-,mb:\ ,ex:-/,:--
setlocal commentstring=/-\ %s\ -/

setlocal expandtab
setlocal shiftwidth=2
setlocal softtabstop=2

" Matchit support
if exists('loaded_matchit') && !exists('b:match_words')
  let b:match_ignorecase = 0

let b:match_words =
      \  '\<begin\>:\<end\>' .
      \ ',\<namespace \(.\{-}\)\>:\<end \1\>' .
      \ ',\<end \(.\{-}\)\>:\<namespace \1\>'
