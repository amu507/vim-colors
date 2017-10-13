
" GUI color definitions
let s:guiSoil="a07040"
let s:guiSoil_A6="E8D7C5"
let s:guiOther="a07040"

let s:guiGreen_D8="003300"
let s:guiGreen_D5="008000"
let s:guiComment="008000"
let s:guiGreen_A1="ccffcc"

let s:guibg="c7edcc"
let s:guibg="CCE8CF"

let s:guiYello="faf9de"
let s:guiYello_D1="faece0"

let s:guiBlue="0000ff"
let s:guiBlue_A1="3333ff"
let s:guiFunc	="3333ff"
let s:guiFunc	="105fa0"


let s:guiMatch	="96CF9B"
let s:guiMatch	="d1fa71"


let s:guiBlack="000000"

let s:guiGB="00ffff"
let s:guiGB_D1="00e6e6"
let s:guiGB_D2="00cccc"

let s:guiPurple="800080"
let s:guiPurple_A2="B300B3"
let s:guiPurple_A2="FFCCFF"

let s:guiRed="ff0000"

let s:guiWhite="ffffff"
let s:guiCursor="FFA500"
let s:guiCursorLine="ebebe4"
let s:guiCursorLine="dce2f1"
let s:guiCursorLine="e3edcd"
let s:guiCursorLine="faf9de"
let s:guiCursorLine="ccffcc"
"比ccffcc更亮
let s:guiCursorLine="D5FFD5"

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-atelierseaside"

" Highlighting function
fun! <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

"search highlight syntax
"有一些缺省的高亮组。'highlight' 选项缺省使用这些组。注意 高亮取决于
"'background' 的值。你可以用 ":highlight" 命令看到当前的设置。
"							*hl-ColorColumn*
"ColorColumn	用于 'colorcolumn' 设置的列
"							*hl-Conceal*
"Conceal		代替隐藏文本的填充字符 (见 'conceallevel')
"							*hl-Cursor*
"Cursor		光标所在的字符
"							*hl-CursorIM*
"CursorIM	类似于 Cursor，但用于 IME 模式 |CursorIM|
"							*hl-CursorColumn*
"CursorColumn	置位 'cursorcolumn' 时，光标所在的屏幕列
"							*hl-CursorLine*
"CursorLine	置位 'cursorline' 时，光标所在的屏幕行
"							*hl-Directory*
"Directory	目录名 (还有列表里的其它特殊名字)
"							*hl-DiffAdd*
"DiffAdd		diff 模式: 增加的行 |diff.txt|
"							*hl-DiffChange*
"DiffChange	diff 模式: 改变的行 |diff.txt|
"							*hl-DiffDelete*
"DiffDelete	diff 模式: 删除的行 |diff.txt|
"							*hl-DiffText*
"DiffText	diff 模式: 改变行里的改动文本 |diff.txt|
"							*hl-ErrorMsg*
"ErrorMsg	命令行上的错误信息
"							*hl-VertSplit*
"VertSplit	分离垂直分割窗口的列
"							*hl-Folded*
"Folded		用于关闭的折叠的行
"							*hl-FoldColumn*
"FoldColumn	'foldcolumn'
"							*hl-SignColumn*
"SignColumn	显示 |signs| 的列
"							*hl-IncSearch*
"IncSearch	'incsearch' 高亮；也用于被 ":s///c" 替换的文本
"							*hl-LineNr*
"LineNr		":number" 和 ":#" 命令与置位 'number' 或 'relativenumber' 选项
"		时的行号。
"							*hl-CursorLineNr*
"CursorLineNr	和 LineNr 类似，置位 'cursorline' 或 'relativenumber' 时用于光
"		标行。
"							*hl-MatchParen*
"MatchParen	如果光标所在或刚刚在它之前的字符是配对的括号一部分的话，它和它
"		的配对。|pi_paren.txt|
"
"							*hl-ModeMsg*
"ModeMsg		'showmode' 消息 (例如，"-- INSERT --")
"							*hl-MoreMsg*
"MoreMsg		|more-prompt|
"							*hl-NonText*
"NonText		窗口尾部的 '~' 和 '@'，'showbreak' 的字符和其它在文本里实际不
"		存在的字符 (例如，代替行尾放不下的双宽字符而显示的 ">")。
"							*hl-Normal*
"Normal		普通文本
"							*hl-Pmenu*
"Pmenu		弹出菜单: 普通项目。
"							*hl-PmenuSel*
"PmenuSel	弹出菜单: 选中项目。
"							*hl-PmenuSbar*
"PmenuSbar	弹出菜单: 滚动条。
"							*hl-PmenuThumb*
"PmenuThumb	弹出菜单: 滚动条的拇指 (thumb)。
"							*hl-Question*
"Question	|hit-enter| 提示和 yes/no 问题
"							*hl-Search*
"Search		最近搜索模式的高亮 (见 'hlsearch')。也用于 quickfix 当前行的
"		高亮和其它类似的要突出显示的项目。
"							*hl-SpecialKey*
"SpecialKey	":map" 列出的 Meta 和特殊键，也包括文本里不可显示字符的显示和
"		'listchars'。
"		一般的: 和实际内容显示上有差异的文本。
"							*hl-SpellBad*
"SpellBad	拼写检查器不能识别的单词。|spell|
"		它会和本来应该使用的高亮进行组合。
"							*hl-SpellCap*
"SpellCap	应该大写字母开头的单词。|spell|
"		它会和本来应该使用的高亮进行组合。
"							*hl-SpellLocal*
"SpellLocal	拼写检查器能识别但只在其它区域使用的单词。|spell|
"		它会和本来应该使用的高亮进行组合。
"							*hl-SpellRare*
"SpellRare	拼写检查器能识别但很少使用的单词。|spell|
"		它会和本来应该使用的高亮进行组合。
"							*hl-StatusLine*
"StatusLine	当前窗口的状态行
"							*hl-StatusLineNC*
"StatusLineNC	非当前窗口的状态行
"		注意: 如果等于 "StatusLine"，Vim 会使用 "^^^" 指示当前窗口的状
"		态行。
"							*hl-TabLine*
"TabLine		标签页行，非活动标签页标签
"							*hl-TabLineFill*
"TabLineFill	标签页行，没有标签的地方
"							*hl-TabLineSel*
"TabLineSel	标签页行，活动标签页标签
"							*hl-Title*
"Title		":set all"、":autocmd" 等输出的标题
"							*hl-Visual*
"Visual		可视模式的选择区
"							*hl-VisualNOS*
"VisualNOS	Vim 是 "选择区的非拥有者" 时，可视模式的选择区。只有 X11 GUI
"		的 |gui-x11| 和 |xterm-clipboard| 才提供此支持。
"							*hl-WarningMsg*
"WarningMsg	警告消息
"							*hl-WildMenu*
"WildMenu	'wildmenu' 补全的当前匹配
"
"					*hl-User1* *hl-User1..9* *hl-User9*
"'statusline' 语法允许在状态行和标尺 (通过 'rulerformat') 上使用 9 种不同的高
"亮。这些高亮组的名字是 User1 到 User9。
"
"GUI 里，你可以使用以下这些组来设置菜单、滚动条和工具提示的色彩。它们没有缺省
"值。这不适用于 Win32 GUI。这里，只有三种高亮参数有效: font、guibg 和 guifg。
"
"							*hl-Menu*
"Menu		当前菜单的字体、背景色和前景色。也包括工具栏。
"		可用的高亮参数: font、guibg、guifg。
"
"		注意: Motif 和 Athena 里，font 参数在所有情况下实际上指定字体
"		集 (fontset)，不管 'guifontset' 是否为空。所以，它和当前的
"		|:language| 有关系。
"
"							*hl-Scrollbar*
"Scrollbar	主窗口滚动条的当前背景和前景色。
"		可用的高亮参数: guibg、guifg。
"
"							*hl-Tooltip*
"Tooltip		当前工具提示的字体、背景色和前景色。也包括工具栏。
"		可用的高亮参数: font、guibg、guifg。
"
"		注意: Motif 和 Athena 里，font 参数在所有情况下都指定字体集
"		(fontset)，不管 'guifontset' 是否为空，从而在设置的时候和当前
"		|:language| 相联系。
"
" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:guiBlack, "", "", "", "")
call <sid>hi("Directory",     s:guiBlack, "", "", "", "")
call <sid>hi("ErrorMsg",      s:guiBlack, s:guibg, "", "", "")
call <sid>hi("Exception",     s:guiBlack, "", "", "", "")
call <sid>hi("FoldColumn",    s:guiBlack, s:guibg, "", "", "")
call <sid>hi("Folded",        s:guiBlack, s:guibg, "", "", "")
call <sid>hi("IncSearch",     "", s:guiYello_D1, "", "", "none")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:guiBlack, "", "", "", "")
call <sid>hi("MatchParen",    s:guiBlack, s:guiMatch, "", "",  "")
call <sid>hi("ModeMsg",       s:guiBlack, "", "", "", "")
call <sid>hi("MoreMsg",       s:guiBlack, "", "", "", "")
call <sid>hi("Question",      s:guiBlack, "", "", "", "")
call <sid>hi("Search",        "", s:guiYello, "", "",  "")
call <sid>hi("SpecialKey",    s:guiBlack, "", "", "", "")
call <sid>hi("TooLong",       s:guiBlack, "", "", "", "")
call <sid>hi("Underlined",    s:guiBlack, "", "", "", "")
call <sid>hi("Visual",        "", s:guiGB_D2, "", "", "")
call <sid>hi("VisualNOS",     s:guiBlack, "", "", "", "")
call <sid>hi("WarningMsg",    s:guiBlack, "", "", "", "")
call <sid>hi("WildMenu",      s:guiBlack, "", "", "", "")
call <sid>hi("Title",         s:guiBlack, "", "", "", "none")
call <sid>hi("Conceal",       s:guiBlack, s:guibg, "", "", "")
call <sid>hi("Cursor",        s:guiBlack, s:guiCursor, "", "", "")
call <sid>hi("NonText",       s:guiBlack, "", "", "", "")
call <sid>hi("Normal",        s:guiBlack, s:guibg, "", "", "")
call <sid>hi("LineNr",        s:guiBlack, s:guibg, "", "", "")
call <sid>hi("SignColumn",    s:guiBlack, s:guibg, "", "", "")
call <sid>hi("SpecialKey",    s:guiBlack, "", "", "", "")
call <sid>hi("StatusLine",    s:guiGreen_A1, s:guiGreen_D8, "", "", "none")
call <sid>hi("StatusLineNC",  s:guiGreen_A1, s:guiGreen_D8, "", "", "none")
call <sid>hi("VertSplit",     s:guiGreen_D8, s:guiGreen_D8, "", "", "none")
call <sid>hi("ColorColumn",   "", s:guiBlack, "", "", "none")
call <sid>hi("CursorColumn",  "", s:guiBlack, "", "", "none")
call <sid>hi("CursorLine",    "", s:guiCursorLine, "", "", "none")
call <sid>hi("CursorLineNr",  s:guiBlack, s:guibg, "", "", "")
call <sid>hi("PMenu",         "", s:guiGB, "", "", "none")
call <sid>hi("PMenuSel",      "", s:guiGB_D1, "", "", "")
call <sid>hi("TabLine",       s:guiBlack, s:guibg, "", "", "none")
call <sid>hi("TabLineFill",   s:guiBlack, s:guibg, "", "", "none")
call <sid>hi("TabLineSel",    s:guiBlack, s:guibg, "", "", "none")

"
"	*Comment	v 任何注释
"
"	*Constant	v 任何常数
"	 String		v 字符串常数: "这是字符串"
"	 Character	v 字符常数: 'c'、'\n'
"	 Number		v 数值常数: 234、0xff
"	 Boolean	v 布尔型常数: TRUE、false
"	 Float		v 浮点常数: 2.3e10
"
"	*Identifier	v 任何变量名
"	 Function	v 函数名 (也包括: 类的方法名)
"
"	*Statement	v 任何语句
"	 Conditional	v if、then、else、endif、switch 等
"	 Repeat		v for、do、while 等
"	 Label		v case、default 等
"	 Operator	v "sizeof"、"+"、"*" 等
"	 Keyword	v 其它关键字
"	 Exception	v try、catch、throw
"
"	*PreProc	v 通用预处理命令
"	 Include	v 预处理命令 #include
"	 Define		v 预处理命令 #define
"	 Macro		v 同 Define
"	 PreCondit	v 预处理命令 #if、#else、#endif 等
"
"	*Type		v int、long、char 等
"	 StorageClass	v static、register、volatile 等
"	 Structure	v struct、union、enum 等
"	 Typedef	v typedef 定义
"
"	*Special	v 任何特殊符号
"	 SpecialChar	v 常数中的特殊字符
"	 Tag		v 可以使用 CTRL-] 的项目
"	 Delimiter	v 需要注意的字符
"	 SpecialComment	v 注释里的特殊部分
"	 Debug		v 调试语句
"
"	*Underlined	v 需要突出的文本，HTML 链接
"
"	*Ignore		v 留空，被隐藏  |hl-Ignore|
"
"	*Error		v 有错的构造
"
"	*Todo		v 需要特殊注意的部分；主要是关键字 TODO FIXME 和 XXX

" Standard syntax highlighting
call <sid>hi("Comment",       s:guiComment, "", "", "", "")
call <sid>hi("Boolean",      s:guiBlack, "", "", "", "")
call <sid>hi("Character",    s:guiOther, "", "", "", "")
call <sid>hi("Constant",     s:guiOther, "", "", "", "")
call <sid>hi("Define",       s:guiOther, "", "", "", "none")
call <sid>hi("Delimiter",    s:guiOther, "", "", "", "")
call <sid>hi("Float",        s:guiOther, "", "", "", "")
call <sid>hi("Function",     s:guiFunc, "", "", "", "")
call <sid>hi("Identifier",   s:guiOther, "", "", "", "none")
call <sid>hi("Include",      s:guiOther, "", "", "", "")
call <sid>hi("Number",       s:guiOther, "", "", "", "")
call <sid>hi("PreProc",      s:guiOther, "", "", "", "")
call <sid>hi("Special",      s:guiOther, "", "", "", "")
call <sid>hi("SpecialChar",  s:guiOther, "", "", "", "")
call <sid>hi("Statement",    s:guiFunc, "", "", "", "bold")
call <sid>hi("StorageClass", s:guiOther, "", "", "", "")
call <sid>hi("Structure",    s:guiOther, "", "", "", "")
call <sid>hi("Tag",          s:guiOther, "", "", "", "")
call <sid>hi("Todo",         s:guiOther, s:guibg, "", "", "")
call <sid>hi("Type",         s:guiOther, "", "", "", "none")
call <sid>hi("Typedef",      s:guiOther, "", "", "", "")

hi! link String Comment

hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Statement
hi! link Keyword Statement
hi! link Exception Statement

" C highlighting
call <sid>hi("cOperator",   s:guiOther, "", "", "", "")
call <sid>hi("cPreCondit",  s:guiOther, "", "", "", "")

" C# highlighting
call <sid>hi("csClass",                 s:guiOther, "", "", "", "")
call <sid>hi("csAttribute",             s:guiOther, "", "", "", "")
call <sid>hi("csModifier",              s:guiOther, "", "", "", "")
call <sid>hi("csType",                  s:guiOther, "", "", "", "")
call <sid>hi("csUnspecifiedStatement",  s:guiOther, "", "", "", "")
call <sid>hi("csContextualStatement",   s:guiOther, "", "", "", "")
call <sid>hi("csNewDecleration",        s:guiOther, "", "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:guiOther, "", "", "", "")
call <sid>hi("cssClassName",   s:guiOther, "", "", "", "")
call <sid>hi("cssColor",       s:guiOther, "", "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffChange",   s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffDelete",   s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffText",     s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffAdded",    s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffFile",     s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffNewFile",  s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffLine",     s:guiOther, s:guibg,  "", "", "")
call <sid>hi("DiffRemoved",  s:guiOther, s:guibg,  "", "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:guiOther, "", "", "", "")
call <sid>hi("gitCommitSummary",   s:guiOther, "", "", "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:guiOther, s:guibg, "", "", "")
call <sid>hi("GitGutterChange",  s:guiOther, s:guibg, "", "", "")
call <sid>hi("GitGutterDelete",  s:guiOther, s:guibg, "", "", "")
call <sid>hi("GitGutterChangeDelete",  s:guiOther, s:guibg, "", "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:guiOther, "", "", "", "")
call <sid>hi("htmlItalic",  s:guiOther, "", "", "", "")
call <sid>hi("htmlEndTag",  s:guiOther, "", "", "", "")
call <sid>hi("htmlTag",     s:guiOther, "", "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:guiOther, "", "", "", "")
call <sid>hi("javaScriptBraces",  s:guiOther, "", "", "", "")
call <sid>hi("javaScriptNumber",  s:guiOther, "", "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:guiOther, "", "", "", "")
call <sid>hi("markdownError",             s:guiOther, s:guibg, "", "", "")
call <sid>hi("markdownCodeBlock",         s:guiOther, "", "", "", "")
call <sid>hi("markdownHeadingDelimiter",  s:guiOther, "", "", "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:guiOther, "", "", "", "")
call <sid>hi("NERDTreeExecFile",  s:guiOther, "", "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:guiOther, "", "", "", "")
call <sid>hi("phpComparison",      s:guiOther, "", "", "", "")
call <sid>hi("phpParent",          s:guiOther, "", "", "", "")

" Python highlighting
"call <sid>hi("pythonOperator",  s:guiOther, "", "", "", "")
"call <sid>hi("pythonRepeat",    s:guiOther, "", "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:guiOther, "", "", "", "")
call <sid>hi("rubyConstant",                s:guiOther, "", "", "", "")
call <sid>hi("rubyInterpolation",           s:guiOther, "", "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:guiOther, "", "", "", "")
call <sid>hi("rubyRegexp",                  s:guiOther, "", "", "", "")
call <sid>hi("rubySymbol",                  s:guiOther, "", "", "", "")
call <sid>hi("rubyStringDelimiter",         s:guiOther, "", "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:guiOther, "", "", "", "")
call <sid>hi("sassClassChar",  s:guiOther, "", "", "", "")
call <sid>hi("sassInclude",    s:guiOther, "", "", "", "")
call <sid>hi("sassMixing",     s:guiOther, "", "", "", "")
call <sid>hi("sassMixinName",  s:guiOther, "", "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:guiOther, s:guibg, "", "", "")
call <sid>hi("SignifySignChange",  s:guiOther, s:guibg, "", "", "")
call <sid>hi("SignifySignDelete",  s:guiOther, s:guibg, "", "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:guiOther, "", "", "undercurl")
call <sid>hi("SpellLocal",   "", s:guiOther, "", "", "undercurl")
call <sid>hi("SpellCap",     "", s:guiOther, "", "", "undercurl")
call <sid>hi("SpellRare",    "", s:guiOther, "", "", "undercurl")

" Remove functions
