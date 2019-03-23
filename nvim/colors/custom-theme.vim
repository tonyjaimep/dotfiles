let s:background = "00"
let s:foreground = "07"
let s:gray = "08"
let s:red = "09"
let s:green = "10"
let s:yellow = "11"
let s:blue = "12"
let s:magenta = "13"
let s:cyan = "14"

" Theme setup
hi clear
syntax reset
let g:colors_name = "custom-theme"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=#" . a:guisp
  endif
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold", "")
call <sid>hi("Debug",         "", "", s:red, "", "", "")
call <sid>hi("Directory",     "", "", s:foreground, "", "", "")
call <sid>hi("Error",         "", "", "", s:red, "", "")
call <sid>hi("ErrorMsg",      "", "", s:red, s:background, "", "")
call <sid>hi("Exception",     "", "", s:red, "", "", "")
call <sid>hi("FoldColumn",    "", "", s:cyan, s:green, "", "")
call <sid>hi("Folded",        "", "", s:foreground, s:gray, "", "")
call <sid>hi("IncSearch",     "", "", s:foreground, s:gray, "", "")
call <sid>hi("Italic",        "", "", "", "", "italic", "")
call <sid>hi("Macro",         "", "", s:red, "", "", "")
call <sid>hi("MatchParen",    "", "", "", s:gray,  "", "")
call <sid>hi("ModeMsg",       "", "", s:green, "", "", "")
call <sid>hi("MoreMsg",       "", "", s:green, "", "", "")
call <sid>hi("Question",      "", "", s:blue, "", "", "")
call <sid>hi("Search",        "", "", s:foreground, s:gray,  "", "")
call <sid>hi("SpecialKey",    "", "", s:gray, "", "", "")
call <sid>hi("TooLong",       "", "", s:red, "", "", "")
call <sid>hi("Underlined",    "", "", s:red, "", "", "")
call <sid>hi("Visual",        "", "", s:foreground, s:gray, "", "")
call <sid>hi("VisualNOS",     "", "", s:red, "", "", "")
call <sid>hi("WarningMsg",    "", "", s:red, "", "", "")
call <sid>hi("WildMenu",      "", "", s:red, "", "", "")
call <sid>hi("Title",         "", "", s:blue, "", "", "")
call <sid>hi("Conceal",       "", "", s:blue, s:background, "", "")
call <sid>hi("Cursor",        "", "", s:background, s:foreground, "", "")
call <sid>hi("NonText",       "", "", s:gray, "", "", "")
call <sid>hi("Normal",        "", "", s:foreground, s:background, "", "")
call <sid>hi("LineNr",        "", "", s:gray, s:background, "", "")
call <sid>hi("SignColumn",    "", "", s:gray, s:green, "", "")
call <sid>hi("StatusLine",    "", "", s:foreground, s:background, "", "")
call <sid>hi("StatusLineNC",  "", "", s:gray, s:background, "", "")
call <sid>hi("VertSplit",     "", "", s:foreground, s:foreground, "", "")
call <sid>hi("ColorColumn",   "", "", "", s:gray, "", "")
call <sid>hi("CursorColumn",  "", "", "", s:gray, "", "")
call <sid>hi("CursorLine",    "", "", "", s:gray, "", "")
call <sid>hi("CursorLineNr",  "", "", s:foreground, s:background, "", "")
call <sid>hi("TabLine",       "", "", s:gray, s:background, "", "")
call <sid>hi("TabLineFill",   "", "", s:gray, s:background, "", "")
call <sid>hi("TabLineSel",    "", "", s:foreground, s:background, "", "")

" YouCompleteMe highlighting
call <sid>hi("Pmenu",    "", "", s:background, s:gray, "", "")
call <sid>hi("PmenuSel",    "", "", s:background, s:foreground, "", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      "", "", s:blue, "", "", "")
call <sid>hi("Character",    "", "", s:red, "", "", "")
call <sid>hi("Comment",      "", "", s:gray, "", "italic", "")
call <sid>hi("Conditional",  "", "", s:magenta, "", "", "")
call <sid>hi("Constant",     "", "", s:red, "", "", "")
call <sid>hi("Define",       "", "", s:magenta, "", "", "")
call <sid>hi("Delimiter",    "", "", s:magenta, "", "", "")
call <sid>hi("Float",        "", "", s:red, "", "", "")
call <sid>hi("Function",     "", "", s:blue, "", "", "")
call <sid>hi("Identifier",   "", "", s:red, "", "", "")
call <sid>hi("Include",      "", "", s:blue, "", "", "")
call <sid>hi("Keyword",      "", "", s:magenta, "", "", "")
call <sid>hi("Label",        "", "", s:yellow, "", "", "")
call <sid>hi("Number",       "", "", s:red, "", "", "")
call <sid>hi("Operator",     "", "", s:foreground, "", "", "")
call <sid>hi("PreProc",      "", "", s:yellow, "", "", "")
call <sid>hi("Repeat",       "", "", s:yellow, "", "", "")
call <sid>hi("Special",      "", "", s:cyan, "", "", "")
call <sid>hi("SpecialChar",  "", "", s:magenta, "", "", "")
call <sid>hi("Statement",    "", "", s:red, "", "", "")
call <sid>hi("StorageClass", "", "", s:yellow, "", "", "")
call <sid>hi("String",       "", "", s:green, "", "", "")
call <sid>hi("Structure",    "", "", s:magenta, "", "", "")
call <sid>hi("Tag",          "", "", s:yellow, "", "", "")
call <sid>hi("Todo",         "", "", s:magenta, s:background, "bold", "")
call <sid>hi("Type",         "", "", s:yellow, "", "bold", "")
call <sid>hi("Typedef",      "", "", s:yellow, "", "", "")

" C highlighting
call <sid>hi("cOperator",   "", "", s:cyan, "", "", "")
call <sid>hi("cPreCondit",  "", "", s:magenta, "", "", "")

" C# highlighting
call <sid>hi("csClass",                 "", "", s:yellow, "", "", "")
call <sid>hi("csAttribute",             "", "", s:yellow, "", "", "")
call <sid>hi("csModifier",              "", "", s:magenta, "", "", "")
call <sid>hi("csType",                  "", "", s:red, "", "", "")
call <sid>hi("csUnspecifiedStatement",  "", "", s:blue, "", "", "")
call <sid>hi("csContextualStatement",   "", "", s:magenta, "", "", "")
call <sid>hi("csNewDecleration",        "", "", s:red, "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      "", "", s:foreground, "", "", "")
call <sid>hi("cssClassName",   "", "", s:magenta, "", "", "")
call <sid>hi("cssColor",       "", "", s:cyan, "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      "", "",  s:green, s:background, "", "")
call <sid>hi("DiffChange",   "", "",  s:gray, s:green, "", "")
call <sid>hi("DiffDelete",   "", "",  s:red, s:green, "", "")
call <sid>hi("DiffText",     "", "",  s:blue, s:green, "", "")
call <sid>hi("DiffAdded",    "", "",  s:green, s:background, "", "")
call <sid>hi("DiffFile",     "", "",  s:red, s:background, "", "")
call <sid>hi("DiffNewFile",  "", "",  s:green, s:background, "", "")
call <sid>hi("DiffLine",     "", "",  s:blue, s:background, "", "")
call <sid>hi("DiffRemoved",  "", "",  s:red, s:background, "", "")

" Git highlighting
call <sid>hi("gitcommitOverflow",       "", "", s:red, "", "", "")
call <sid>hi("gitcommitSummary",        "", "", s:green, "", "", "")
call <sid>hi("gitcommitComment",        "", "", s:gray, "", "", "")
call <sid>hi("gitcommitUntracked",      "", "", s:gray, "", "", "")
call <sid>hi("gitcommitDiscarded",      "", "", s:gray, "", "", "")
call <sid>hi("gitcommitSelected",       "", "", s:gray, "", "", "")
call <sid>hi("gitcommitHeader",         "", "", s:magenta, "", "", "")
call <sid>hi("gitcommitSelectedType",   "", "", s:blue, "", "", "")
call <sid>hi("gitcommitUnmergedType",   "", "", s:blue, "", "", "")
call <sid>hi("gitcommitDiscardedType",  "", "", s:blue, "", "", "")
call <sid>hi("gitcommitBranch",         "", "", s:red, "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  "", "", s:yellow, "", "", "")
call <sid>hi("gitcommitUnmergedFile",   "", "", s:red, "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  "", "", s:red, "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   "", "", s:green, "", "bold", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     "", "", s:background, s:green, "", "")
call <sid>hi("GitGutterChange",  "", "", s:background, s:yellow, "", "")
call <sid>hi("GitGutterDelete",  "", "", s:background, s:red, "", "")
call <sid>hi("GitGutterChangeDelete",  "", "", s:red, s:yellow, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    "", "", s:foreground, "", "bold", "")
call <sid>hi("htmlItalic",  "", "", s:foreground, "", "italic", "")
call <sid>hi("htmlEndTag",  "", "", s:foreground, "", "", "")
call <sid>hi("htmlTag",     "", "", s:foreground, "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        "", "", s:foreground, "", "", "")
call <sid>hi("javaScriptBraces",  "", "", s:foreground, "", "", "")
call <sid>hi("javaScriptNumber",  "", "", s:red, "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",          "", "", s:blue, "", "", "")
call <sid>hi("jsStatement",         "", "", s:magenta, "", "", "")
call <sid>hi("jsReturn",            "", "", s:magenta, "", "", "")
call <sid>hi("jsThis",              "", "", s:red, "", "", "")
call <sid>hi("jsClassDefinition",   "", "", s:yellow, "", "", "")
call <sid>hi("jsFunction",          "", "", s:magenta, "", "", "")
call <sid>hi("jsFuncName",          "", "", s:blue, "", "", "")
call <sid>hi("jsFuncCall",          "", "", s:blue, "", "", "")
call <sid>hi("jsClassFuncName",     "", "", s:blue, "", "", "")
call <sid>hi("jsClassMethodType",   "", "", s:magenta, "", "", "")
call <sid>hi("jsRegexpString",      "", "", s:cyan, "", "", "")
call <sid>hi("jsGlobalObjects",     "", "", s:yellow, "", "", "")
call <sid>hi("jsGlobalNodeObjects", "", "", s:yellow, "", "", "")
call <sid>hi("jsExceptions",        "", "", s:yellow, "", "", "")
call <sid>hi("jsBuiltins",          "", "", s:yellow, "", "", "")

" Mail highlighting
call <sid>hi("mailQuoted1",  "", "", s:yellow, "", "", "")
call <sid>hi("mailQuoted2",  "", "", s:green, "", "", "")
call <sid>hi("mailQuoted3",  "", "", s:magenta, "", "", "")
call <sid>hi("mailQuoted4",  "", "", s:cyan, "", "", "")
call <sid>hi("mailQuoted5",  "", "", s:blue, "", "", "")
call <sid>hi("mailQuoted6",  "", "", s:yellow, "", "", "")
call <sid>hi("mailURL",      "", "", s:blue, "", "", "")
call <sid>hi("mailEmail",    "", "", s:blue, "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              "", "", s:green, "", "", "")
call <sid>hi("markdownError",             "", "", s:foreground, s:background, "", "")
call <sid>hi("markdownCodeBlock",         "", "", s:green, "", "", "")
call <sid>hi("markdownHeadingDelimiter",  "", "", s:blue, "", "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  "", "", s:foreground, "", "", "")
call <sid>hi("NERDTreeExecFile",  "", "", s:foreground, "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  "", "", s:foreground, "", "", "")
call <sid>hi("phpComparison",      "", "", s:foreground, "", "", "")
call <sid>hi("phpParent",          "", "", s:foreground, "", "", "")

" Python highlighting
call <sid>hi("pythonOperator",  "", "", s:magenta, "", "", "")
call <sid>hi("pythonRepeat",    "", "", s:magenta, "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               "", "", s:blue, "", "", "")
call <sid>hi("rubyConstant",                "", "", s:yellow, "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  "", "", s:magenta, "", "", "")
call <sid>hi("rubyRegexp",                  "", "", s:cyan, "", "", "")
call <sid>hi("rubySymbol",                  "", "", s:green, "", "", "")
call <sid>hi("rubyStringDelimiter",         "", "", s:green, "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     "", "", s:red, "", "", "")
call <sid>hi("sassClassChar",  "", "", s:red, "", "", "")
call <sid>hi("sassInclude",    "", "", s:magenta, "", "", "")
call <sid>hi("sassMixing",     "", "", s:magenta, "", "", "")
call <sid>hi("sassMixinName",  "", "", s:blue, "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     "", "", s:green, s:green, "", "")
call <sid>hi("SignifySignChange",  "", "", s:blue, s:green, "", "")
call <sid>hi("SignifySignDelete",  "", "", s:red, s:green, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "", "", s:background, "undercurl", "")
call <sid>hi("SpellLocal",   "", "", "", s:background, "undercurl", "")
call <sid>hi("SpellCap",     "", "", "", s:background, "undercurl", "")
call <sid>hi("SpellRare",    "", "", "", s:background, "undercurl", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:background s:foreground s:gray s:red s:green s:yellow s:blue s:magenta s:cyan
