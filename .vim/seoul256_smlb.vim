" =============================================================================
" Filename: autoload/lightline/colorscheme/seoul256.vim
" Author: atweiden | modified by smlb
" License: MIT License
" Last Change: 2017/10/15.
" =============================================================================
let s:base03 = [ '#151513', 233 ]
let s:base02 = [ '#30302c ', 236 ]
let s:base01 = [ '#4e4e43', 239 ]
let s:base00 = [ '#666656', 242  ]
let s:base0 = [ '#808070', 244 ]
let s:base1 = [ '#949484', 246 ]
let s:base2 = [ '#a8a897', 248 ]
let s:base3 = [ '#e8e8d3', 253 ]
let s:yellow = [ '#d8af5f', 3 ]
let s:orange = [ '#d7875f', 216 ]
let s:red = [ '#d68787', 131 ]
let s:magenta = [ '#df5f87', 168 ]
let s:peach = [ '#FE9191', 181 ]
let s:blue = [ '#85C4C4', 109 ]
let s:cyan = [ '#87d7d7', 23 ]
let s:green = [ '#92DF92', 108 ]
let s:white = [ '#d0d0d0', 252 ]
let s:bg1 = [ '#cccccc', 222 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:blue, 'bold'], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:base1, 'bold' ], [ s:base2, s:base01, 'bold' ] ]
let s:p.inactive.right = [ [ s:base02, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base02 ] ]
let s:p.insert.left = [ [ s:base02, s:green, 'bold' ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:peach, 'bold' ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:base02 ] ]
let s:p.tabline.left = [ [ s:white, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:bg1, s:base02 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:base02 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let g:lightline#colorscheme#seoul256#palette = lightline#colorscheme#flatten(s:p)
