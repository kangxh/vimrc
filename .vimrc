""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"基本设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
color ron     " 设置背景主题 

set cul "高亮光标所在行
set cuc "高亮光标所在列

"搜索逐字符高亮
set hlsearch  "	'hls' 'hlsearch'	高亮显示所有的匹配短语
set incsearch "  'is' 'incsearch'	查找短语时显示部分匹配

"状态行显示的内容  
" %(...%)     定义一个项目组。
" %{n}*     %对其余的行使用高亮显示组Usern，直到另一个%n*。数字n必须从1到9。用%*或%0*可以恢复正常的高亮显示。
" %&lt;     如果状态行过长，在何处换行。缺省是在开头。
" %=     左对齐和右对齐项目之间的分割点。
" %     字符%
" %B     光标下字符的十六进制形式
" %F     缓冲区的文件完整路径
" %H     如果为帮助缓冲区则显示为HLP
" %L     缓冲区中的行数
" %M     如果缓冲区修改过则显示为+
" %N     打印机页号
" %O     以十六进制方式显示文件中的字符偏移
" %P     文件中光标前的%
" %R     如果缓冲区只读则为RO
" %V     列数。如果与%c相同则为空字符串
" %W     如果窗口为预览窗口则为PRV
" %Y     缓冲区的文件类型，如vim
" %a     如果编辑多行文本，这个字行串就是({current} of {arguments})，例如：(5 of 18)。如果在命令行中只有一行，这个字符串为空
" %b     光标下的字符的十进制表示形式
" %c     列号
" %f     缓冲区的文件路径
" %h     如果为帮助缓冲区显示为[Help]
" %l     行号
" %m     如果缓冲区已修改则表示为[+]
" %n     缓冲区号
" %o     在光标前的字符数（包括光标下的字符）
" %p     文件中所在行的百分比
" %r     如果缓冲区为只读则表示为[RO]
" %t     文件名(无路径)
" %v     虚列号
" %w     如果为预览窗口则显示为[Preview]
" %y     缓冲区的文件类型，如[vim]
" %{expr}     表达式的结果

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   

set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

set laststatus=2    " 启动显示状态行(1),总是显示状态行(2) 
set showcmd  "输入的命令显示出来，linux下vim有用  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
" 插入状态 Ctrl+v 粘贴
imap <C-v> <Esc>"*pa


