if !has('python')
  finish
endif

function! Md5(string)
ruby << source
string = VIM::evaluate "a:string"
$curbuf.line = "Hello World #{string}"
source
endfunction

command! -nargs=* Md5 call Md5(<f-args>)

