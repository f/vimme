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

(row, col) = vim.current.window.cursor
vim.current.buffer[row-1] = hasher.hexdigest()

source
endfunction

command! -nargs=* Md5 call Md5(<f-args>)

