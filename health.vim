
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
"��ccffcc����
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
"��һЩȱʡ�ĸ����顣'highlight' ѡ��ȱʡʹ����Щ�顣ע�� ����ȡ����
"'background' ��ֵ��������� ":highlight" �������ǰ�����á�
"							*hl-ColorColumn*
"ColorColumn	���� 'colorcolumn' ���õ���
"							*hl-Conceal*
"Conceal		���������ı�������ַ� (�� 'conceallevel')
"							*hl-Cursor*
"Cursor		������ڵ��ַ�
"							*hl-CursorIM*
"CursorIM	������ Cursor�������� IME ģʽ |CursorIM|
"							*hl-CursorColumn*
"CursorColumn	��λ 'cursorcolumn' ʱ��������ڵ���Ļ��
"							*hl-CursorLine*
"CursorLine	��λ 'cursorline' ʱ��������ڵ���Ļ��
"							*hl-Directory*
"Directory	Ŀ¼�� (�����б����������������)
"							*hl-DiffAdd*
"DiffAdd		diff ģʽ: ���ӵ��� |diff.txt|
"							*hl-DiffChange*
"DiffChange	diff ģʽ: �ı���� |diff.txt|
"							*hl-DiffDelete*
"DiffDelete	diff ģʽ: ɾ������ |diff.txt|
"							*hl-DiffText*
"DiffText	diff ģʽ: �ı�����ĸĶ��ı� |diff.txt|
"							*hl-ErrorMsg*
"ErrorMsg	�������ϵĴ�����Ϣ
"							*hl-VertSplit*
"VertSplit	���봹ֱ�ָ�ڵ���
"							*hl-Folded*
"Folded		���ڹرյ��۵�����
"							*hl-FoldColumn*
"FoldColumn	'foldcolumn'
"							*hl-SignColumn*
"SignColumn	��ʾ |signs| ����
"							*hl-IncSearch*
"IncSearch	'incsearch' ������Ҳ���ڱ� ":s///c" �滻���ı�
"							*hl-LineNr*
"LineNr		":number" �� ":#" ��������λ 'number' �� 'relativenumber' ѡ��
"		ʱ���кš�
"							*hl-CursorLineNr*
"CursorLineNr	�� LineNr ���ƣ���λ 'cursorline' �� 'relativenumber' ʱ���ڹ�
"		���С�
"							*hl-MatchParen*
"MatchParen	���������ڻ�ո�����֮ǰ���ַ�����Ե�����һ���ֵĻ���������
"		����ԡ�|pi_paren.txt|
"
"							*hl-ModeMsg*
"ModeMsg		'showmode' ��Ϣ (���磬"-- INSERT --")
"							*hl-MoreMsg*
"MoreMsg		|more-prompt|
"							*hl-NonText*
"NonText		����β���� '~' �� '@'��'showbreak' ���ַ����������ı���ʵ�ʲ�
"		���ڵ��ַ� (���磬������β�Ų��µ�˫���ַ�����ʾ�� ">")��
"							*hl-Normal*
"Normal		��ͨ�ı�
"							*hl-Pmenu*
"Pmenu		�����˵�: ��ͨ��Ŀ��
"							*hl-PmenuSel*
"PmenuSel	�����˵�: ѡ����Ŀ��
"							*hl-PmenuSbar*
"PmenuSbar	�����˵�: ��������
"							*hl-PmenuThumb*
"PmenuThumb	�����˵�: ��������Ĵָ (thumb)��
"							*hl-Question*
"Question	|hit-enter| ��ʾ�� yes/no ����
"							*hl-Search*
"Search		�������ģʽ�ĸ��� (�� 'hlsearch')��Ҳ���� quickfix ��ǰ�е�
"		�������������Ƶ�Ҫͻ����ʾ����Ŀ��
"							*hl-SpecialKey*
"SpecialKey	":map" �г��� Meta ���������Ҳ�����ı��ﲻ����ʾ�ַ�����ʾ��
"		'listchars'��
"		һ���: ��ʵ��������ʾ���в�����ı���
"							*hl-SpellBad*
"SpellBad	ƴд���������ʶ��ĵ��ʡ�|spell|
"		����ͱ���Ӧ��ʹ�õĸ���������ϡ�
"							*hl-SpellCap*
"SpellCap	Ӧ�ô�д��ĸ��ͷ�ĵ��ʡ�|spell|
"		����ͱ���Ӧ��ʹ�õĸ���������ϡ�
"							*hl-SpellLocal*
"SpellLocal	ƴд�������ʶ��ֻ����������ʹ�õĵ��ʡ�|spell|
"		����ͱ���Ӧ��ʹ�õĸ���������ϡ�
"							*hl-SpellRare*
"SpellRare	ƴд�������ʶ�𵫺���ʹ�õĵ��ʡ�|spell|
"		����ͱ���Ӧ��ʹ�õĸ���������ϡ�
"							*hl-StatusLine*
"StatusLine	��ǰ���ڵ�״̬��
"							*hl-StatusLineNC*
"StatusLineNC	�ǵ�ǰ���ڵ�״̬��
"		ע��: ������� "StatusLine"��Vim ��ʹ�� "^^^" ָʾ��ǰ���ڵ�״
"		̬�С�
"							*hl-TabLine*
"TabLine		��ǩҳ�У��ǻ��ǩҳ��ǩ
"							*hl-TabLineFill*
"TabLineFill	��ǩҳ�У�û�б�ǩ�ĵط�
"							*hl-TabLineSel*
"TabLineSel	��ǩҳ�У����ǩҳ��ǩ
"							*hl-Title*
"Title		":set all"��":autocmd" ������ı���
"							*hl-Visual*
"Visual		����ģʽ��ѡ����
"							*hl-VisualNOS*
"VisualNOS	Vim �� "ѡ�����ķ�ӵ����" ʱ������ģʽ��ѡ������ֻ�� X11 GUI
"		�� |gui-x11| �� |xterm-clipboard| ���ṩ��֧�֡�
"							*hl-WarningMsg*
"WarningMsg	������Ϣ
"							*hl-WildMenu*
"WildMenu	'wildmenu' ��ȫ�ĵ�ǰƥ��
"
"					*hl-User1* *hl-User1..9* *hl-User9*
"'statusline' �﷨������״̬�кͱ�� (ͨ�� 'rulerformat') ��ʹ�� 9 �ֲ�ͬ�ĸ�
"������Щ������������� User1 �� User9��
"
"GUI ������ʹ��������Щ�������ò˵����������͹�����ʾ��ɫ�ʡ�����û��ȱʡ
"ֵ���ⲻ������ Win32 GUI�����ֻ�����ָ���������Ч: font��guibg �� guifg��
"
"							*hl-Menu*
"Menu		��ǰ�˵������塢����ɫ��ǰ��ɫ��Ҳ������������
"		���õĸ�������: font��guibg��guifg��
"
"		ע��: Motif �� Athena �font ���������������ʵ����ָ������
"		�� (fontset)������ 'guifontset' �Ƿ�Ϊ�ա����ԣ����͵�ǰ��
"		|:language| �й�ϵ��
"
"							*hl-Scrollbar*
"Scrollbar	�����ڹ������ĵ�ǰ������ǰ��ɫ��
"		���õĸ�������: guibg��guifg��
"
"							*hl-Tooltip*
"Tooltip		��ǰ������ʾ�����塢����ɫ��ǰ��ɫ��Ҳ������������
"		���õĸ�������: font��guibg��guifg��
"
"		ע��: Motif �� Athena �font ��������������¶�ָ�����弯
"		(fontset)������ 'guifontset' �Ƿ�Ϊ�գ��Ӷ������õ�ʱ��͵�ǰ
"		|:language| ����ϵ��
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
"	*Comment	v �κ�ע��
"
"	*Constant	v �κγ���
"	 String		v �ַ�������: "�����ַ���"
"	 Character	v �ַ�����: 'c'��'\n'
"	 Number		v ��ֵ����: 234��0xff
"	 Boolean	v �����ͳ���: TRUE��false
"	 Float		v ���㳣��: 2.3e10
"
"	*Identifier	v �κα�����
"	 Function	v ������ (Ҳ����: ��ķ�����)
"
"	*Statement	v �κ����
"	 Conditional	v if��then��else��endif��switch ��
"	 Repeat		v for��do��while ��
"	 Label		v case��default ��
"	 Operator	v "sizeof"��"+"��"*" ��
"	 Keyword	v �����ؼ���
"	 Exception	v try��catch��throw
"
"	*PreProc	v ͨ��Ԥ��������
"	 Include	v Ԥ�������� #include
"	 Define		v Ԥ�������� #define
"	 Macro		v ͬ Define
"	 PreCondit	v Ԥ�������� #if��#else��#endif ��
"
"	*Type		v int��long��char ��
"	 StorageClass	v static��register��volatile ��
"	 Structure	v struct��union��enum ��
"	 Typedef	v typedef ����
"
"	*Special	v �κ��������
"	 SpecialChar	v �����е������ַ�
"	 Tag		v ����ʹ�� CTRL-] ����Ŀ
"	 Delimiter	v ��Ҫע����ַ�
"	 SpecialComment	v ע��������ⲿ��
"	 Debug		v �������
"
"	*Underlined	v ��Ҫͻ�����ı���HTML ����
"
"	*Ignore		v ���գ�������  |hl-Ignore|
"
"	*Error		v �д�Ĺ���
"
"	*Todo		v ��Ҫ����ע��Ĳ��֣���Ҫ�ǹؼ��� TODO FIXME �� XXX

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
