if !has('python')
  finish
endif

function! Md5(string)
python << source
import vim
from hashlib import md5

string = vim.eval("a:string")
hasher = md5()
hasher.update(string)

vim.current.line = hasher.hexdigest()

source
endfunction

command! -nargs=* Md5 call Md5(<f-args>)

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ruby Scripts
if !has('ruby')
  finish
endif

function! Md5rb(string)
ruby << source
require 'digest'

md5 = Digest::MD5.new
md5.update VIM::evaluate "a:string"
$curbuf.line = md5.hexdigest
source
endfunction

command! -nargs=* Md5rb call Md5rb(<f-args>)

