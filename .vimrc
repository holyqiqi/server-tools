"基础配置
"----------------------------------------------------------------
syntax on
set number
"set ruler
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set autoindent
set scrolloff=3
inoremap kj <ESC>
"History存储容量
set history=3000
"----------------------------------------------------------------

"行号配置
"----------------------------------------
" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
"行号结束
"----------------------------------------------------------------

"颜色结束
"----------------------------------------
"设置标记一列的背景颜色和数字一行颜色一致
"hi! link SignColumn   LineNr
"hi! link ShowMarksHLl DiffAdd
"hi! link ShowMarksHLu DiffChange
"----------------------------------------------------------------

"映射开始

"----------------------------------------
"map <F2> k;
"map <F5> i{e<Esc>a}<Esc>

"前5个F不能用
:map <F1> :wq!<CR>
:map <F2> :wq!<CR>
:map <F3> :wq!<CR>
:map <F4> :wq!<CR>
:map <F5> :wq!<CR>
"F6~10可以用
function! HideNumber()
    if(&relativenumber == &number)
        set relativenumber! number!
    elseif(&number)
        set number!
    else
        set relativenumber!
    endif
    set number?
endfunc
:nnoremap <F6> :call HideNumber()<CR>
"F7粘贴，进入普通模式自动退出粘贴模式

:map <F7> :set paste<CR>
set pastetoggle=<F7>
au InsertLeave * set nopaste

"粘贴自动进入粘贴模式，但不起作用
"function! XTermPasteBegin()
"  set pastetoggle=<Esc>[201~
"  set paste
"  return ""
"endfunction
"inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


:map <F8> :wq!<CR>
:map <F9> :wq!<CR>
:map <F10> :wq!<CR>

"F11全屏
:map <F11> :wq!<CR>

"F12可以用
:map <F12> :wq!<CR>

:map <C-h> <Esc><C-w>h
:map <C-l> <Esc><C-w>l
"----------------------------------------------------------------
