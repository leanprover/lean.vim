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
