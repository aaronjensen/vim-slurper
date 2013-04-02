" Vim filetype plugin
" Language:	Slurper
" Maintainer:	Adam Lowe <contact@adamlowe.me>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal spell
highlight SpellCap none

nmap <buffer> <leader>sc 
      \:call cursor(search('\n\_^==\\|\%$', 'W'), -1, 0)
      \<CR>
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>chore
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR><C-D>  
      \<CR>
      \<CR>labels:
      \<CR><C-D>  
      \<Esc>
      \5
      \k
      \<S-a>

nmap <buffer> <leader>sf 
      \:call cursor(search('\n\_^==\\|\%$', 'W'), -1, 0)
      \<CR>
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>feature
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR>
      \<CR>
      \<CR>estimate:
      \<CR><C-D>  
      \<CR>labels:
      \<CR><C-D>  
      \<Esc>
      \7
      \k
      \<S-a>

nmap <buffer> <leader>sr 
      \:call cursor(search('\n\_^==\\|\%$', 'W'), -1, 0)
      \<CR>
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>release
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR><C-D>  
      \<CR>
      \<CR><C-D>labels:
      \<CR><C-D>  
      \<Esc>
      \5
      \k
      \<S-a>

nmap <buffer> <leader>sb 
      \:call cursor(search('\n\_^==\\|\%$', 'W'), -1, 0)
      \<CR>
      \o
      \<C-D>==
      \<CR>story_type:
      \<CR>bug
      \<CR>name:
      \<CR><C-D>  
      \<CR>description:
      \<CR><C-D>  
      \<CR>
      \<CR>labels:
      \<CR><C-D>  
      \<Esc>
      \5
      \k
      \<S-a>

nmap <buffer> <leader>ss :w<cr>\|:!slurp %<cr>

function! SlurperFoldText()
  let storytype=substitute(getline(v:foldstart+2),'  ','','')
  let storytitle=substitute(getline(v:foldstart+4),'  ','','')
  return '== ['.storytype.'] '.storytitle
endfunction

function! SlurperFoldExpr()
  return getline(v:lnum) == '==' ? ">1" : getline(v:lnum)!~'=='
endfunction
