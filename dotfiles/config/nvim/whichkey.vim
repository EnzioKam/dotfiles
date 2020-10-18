call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map = {}
let g:which_key_map['d'] = 'scroll-down'
let g:which_key_map['u'] = 'scroll-up'
let g:which_key_map['n'] = 'toggle-tree'
let g:which_key_map['q'] = [ 'q', 'quit' ]
let g:which_key_map['Q'] = [ 'qa!', 'quit-without-saving' ]

let g:which_key_map['b'] = {
            \ 'name' : '+buffer'       ,
            \ 'd' :  'delete-buffer'   ,
            \ 'f' :  'first-buffer'    ,
            \ 'k' :  'kill-buffer'     ,
            \ 'l' :  'last-buffer'     ,
            \ 'n' :  'next-buffer'     ,
            \ 'p' :  'previous-buffer' ,
            \ }

let g:which_key_map['f'] = {
            \ 'name' : '+find/files/fold'           ,
            \ '0' : '0-fold-level'                  ,
            \ '1' : '1-fold-level'                  ,
            \ '2' : '2-fold-level'                  ,
            \ '3' : '3-fold-level'                  ,
            \ '4' : '4-fold-level'                  ,
            \ '5' : '5-fold-level'                  ,
            \ '6' : '6-fold-level'                  ,
            \ '7' : '7-fold-level'                  ,
            \ '8' : '8-fold-level'                  ,
            \ '9' : '9-fold-level'                  ,
            \ }

let g:which_key_map['w'] = {
            \ 'name' : '+windows'                   ,
            \ 'w' :  'other-window'                 ,
            \ 'd' :  'delete-window'                ,
            \ '-' :  'split-window-below'           ,
            \ '|' :  'split-window-right'           ,
            \ '2' :  'layout-double-columns'        ,
            \ 'h' :  'window-left'                  ,
            \ 'j' :  'window-below'                 ,
            \ 'l' :  'window-right'                 ,
            \ 'k' :  'window-up'                    ,
            \ 'H' :  'expand-window-left'           ,
            \ 'J' :  'expand-window-below'          ,
            \ 'L' :  'expand-window-right'          ,
            \ 'K' :  'expand-window-up'             ,
            \ '=' :  'balance-window'               ,
            \ 's' :  'split-window-below'           ,
            \ 'v' :  'split-window-right'           ,
            \ 'r' :  'rotate-windows'               ,
            \ 'q' :  'quit-window'                  ,
            \ }

let g:which_key_map['h'] = {
            \ 'name' : '+git-gutter'                ,
            \ 'p' :  'preview-hunk'                 ,
            \ 's' :  'stage-hunk'                   ,
            \ 'u' :  'undo-hunk'                    ,
            \ }

let g:which_key_map['c'] = {
            \ 'name' : '+commenter'                 ,
            \ '$' :  'to-EOL'                       ,
            \ 'a' :  'alt-delims'                   ,
            \ 'A' :  'append'                       ,
            \ 'b' :  'align-both'                   ,
            \ 'c' :  'comment'                      ,
            \ 'i' :  'invert'                       ,
            \ 'l' :  'align-left'                   ,
            \ 'm' :  'minimal'                      ,
            \ 'n' :  'nested'                       ,
            \ 's' :  'sexy'                         ,
            \ 'u' :  'uncomment'                    ,
            \ 'y' :  'yank'                         ,
            \ }

