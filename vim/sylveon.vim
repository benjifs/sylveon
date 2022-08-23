"                                        .Cf
"                                       ;G8t ,;
"                                    .iC88Gif8t
"                                 ,iLGGCCGG001
"                             .iL0@801GLLCCt,
"        i1:               .iC8@@@@@8GGfi:.   ,itL,
"        L80Ct:          .f8@@@@@@0C1:.    ,iC0000.
"        1f0000L;       ;8@@@@0L1:.      ,tG00GG01
"       .fCGGGGG0L;    :@  0t:         .1G0GGGGGt
"        1GGGCtfCG0t.  t LG:          ;CGCfLGGGt             .,.
"         10GGtttfC0C: ;@0L.  .L0C; .fGLtttCGCG1         ,ifCLi
"          iG0CttttfCC, C@G, ,0@@@@;LCttttCGGC1.      ,1fLCG0Ctt:
"           ,fGGttfttCf  iCC;L@@@00L1ttttCGL1,      ;C00GCLGCt1;,
"             :tLftt1fCi,:iff0 i0G0CfLLLGGt.      ,C@@i0GC1,
"              .ifLLfLG00000GL08GCLG1GtLii@t    .t8@L@@Ci.
"             ,tfLCC00GGGGGCG0GGCLC88@@@@8f. .:t0@@@@Gi
"               .1iG088CGGC0@8000GC080GG00LC0@@@@80f;
"                 tGG80@CL8 G88CC@C     :itLLfti:,
"                 GC00L@80@0L00GCG@.
"                 0@088@88@880000@8.
"    ,::,         .G8888888888888C:     ,ifLLt;.
"  10@@@@0L;       C@@0G00GGG@@@C     ,L8@@@@@@8t
" 1@@i@@@@@@Gi.    .0 8GGCCG0@iG.   :f8@@@8GLG8 @f    ,.
" C 801.,if0@@@Cti1fCG80GCC088GCfffG@@@@C1,  tCG 0    ;0i
" ;@8CC;    :tG8@@8ft80000000088CC880Ct:   .10GG@1    .G0:
"  ;CG88GLti,   ..  0 i@@8@@@@L 8;.      ,tG80081     ,Gtf
"    ,1C888880Ci   ;@08i@@@@8@@@@@8Ci. ;C08008G:      iGGL
"       ,t88@@@@f  18G0888@G8@@@00@@@0L@@@8880.      .CGGL
"         ftGGGG0i .C80GG0G8@@@@00@88G0008800;      ,CGC0i
"        ,fCCCCC01  .L80GGC@@@@@GG08@CGGGGGCCt.   ,1GGG0L.
"     .:t0GLLffCC.    C800C8@@@8C0@@i0LGCLLLLCC11fCGGGGL.
"    ,1LLttCGG0C:     ,800G8@@iCC@@@@ 8CCCLCCCGGGCLfft;
"       ,1C0GLi.       t80LG@@CLC8 @@@@@GGGG0CffLCLLfi.
"       :i:,.          ,CLfCGCfCGC0@@880000L1CG1:;;;:,
"                      .GLfCGCfCCt ,tCGG0L1.  .,
"                      ;0C1CtL;i1iifCGCL1.
"                     :CLLf00G:.tfCLti,
"                      ...,;1:.

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "sylveon"

" Colors
let s:bg            = [233, "#121213"]
let s:fg            = [231, "#ffffff"]
let s:alt           = [67,  "#c499f0"]
let s:cursor        = [238, "#464646"]
let s:color0        = [235, "#262626"]
let s:color8        = [241, "#666666"]
let s:color1        = [204, "#f18895"]
let s:color9        = [204, "#f099a3"]
let s:color2        = [84,  "#91f188"]
let s:color10       = [121, "#a0f099"]
let s:color3        = [228, "#e8f188"]
let s:color11       = [229, "#e9f099"]
let s:color4        = [75,  "#88c9f1"]
let s:color12       = [111, "#99cef0"]
let s:color5        = [210, "#f188b0"]
let s:color13       = [211, "#f099ba"]
let s:color6        = [81,  "#88e5f1"]
let s:color14       = [81,  "#99e6f0"]
let s:color7        = [255, "#5f5f5f"]
let s:color15       = [15,  "#fbfbfb"]
let s:none          = ["NONE", ""]

" func
function! s:Color(name, fg, bg, style)
  execute "hi " . a:name . " ctermfg=" . a:fg[0] . " ctermbg=" . a:bg[0] " cterm=" . a:style
  if a:fg[1] != ""
    execute "hi " . a:name . " guifg=" . a:fg[1]
  endif
  if a:bg[1] != ""
    execute "hi " . a:name . " guibg=" . a:bg[1]
  endif
  execute "hi " . a:name . " gui=" . a:style
endfun

call s:Color("Normal", s:fg, s:bg, "NONE")
call s:Color("Cursor", s:bg, s:fg, "NONE")
call s:Color("Visual", s:none, s:color8, "NONE")
call s:Color("CursorLine", s:none, s:bg, "NONE")
call s:Color("CursorColumn", s:none, s:bg, "NONE")
call s:Color("CursorLineNr", s:color5, s:none, "NONE")
call s:Color("ColorColumn", s:none, s:bg, "NONE")
call s:Color("LineNr", s:color8, s:bg, "NONE")
call s:Color("VertSplit", s:color8, s:color8, "NONE")
call s:Color("MatchParen", s:color8, s:color6, "NONE")
call s:Color("StatusLine", s:fg, s:color0, "NONE")
call s:Color("StatusLineNC", s:fg, s:color8, "NONE")
call s:Color("Pmenu", s:fg, s:color8, "NONE")
call s:Color("PmenuSel", s:color8, s:color6, "NONE")
call s:Color("IncSearch", s:color8, s:color6, "NONE")
call s:Color("Search", s:color8, s:color6, "NONE")
call s:Color("Directory", s:color6, s:none, "NONE")
call s:Color("Folded", s:color4, s:color0, "NONE")
call s:Color("Define", s:color8, s:none, "NONE")

" Diff
call s:Color("DiffAdd", s:fg, s:color2, "NONE")
call s:Color("DiffDelete", s:color1, s:none, "NONE")
call s:Color("DiffChange", s:fg, s:bg, "NONE")
call s:Color("DiffText", s:color8, s:color6, "NONE")

" Command line
call s:Color("ErrorMsg", s:fg, s:color5, "NONE")
call s:Color("Overlength", s:color8, s:color3, "NONE")
call s:Color("WarningMsg", s:fg, s:color5, "NONE")

" Elements
call s:Color("Boolean", s:color3, s:none, "NONE")
call s:Color("Character", s:color3, s:none, "NONE")
call s:Color("Comment", s:color8, s:none, "NONE")
call s:Color("Conditional", s:color4, s:none, "NONE")
call s:Color("Constant", s:color4, s:none, "NONE")
call s:Color("Float", s:color3, s:none, "NONE")
call s:Color("Function", s:color2, s:none, "NONE")
call s:Color("Identifier", s:color2, s:none, "NONE")
call s:Color("Keyword", s:color2, s:none, "NONE")
call s:Color("Label", s:color12, s:none, "NONE")
call s:Color("NonText", s:color8, s:none, "NONE")
call s:Color("Number", s:color4, s:none, "NONE")
call s:Color("Operator", s:color4, s:none, "NONE")
call s:Color("PreProc", s:color12, s:none, "NONE")
call s:Color("Special", s:color2, s:none, "NONE")
call s:Color("SpecialKey", s:color8, s:bg, "NONE")
call s:Color("Statement", s:color12, s:none, "NONE")
call s:Color("StorageClass", s:color4, s:none, "NONE")
call s:Color("String", s:color4, s:none, "NONE")
call s:Color("Tag", s:color4, s:none, "NONE")
call s:Color("Title", s:fg, s:none, "NONE")
call s:Color("Todo", s:color5, s:fg, "inverse,NONE")
call s:Color("Type", s:color4, s:none, "NONE")
call s:Color("Underlined", s:none, s:none, "underline")

" Tab line
call s:Color("TabLine",  s:color4, s:color0, "NONE")
call s:Color("TabLineSel", s:color0, s:color4, "NONE")
call s:Color("TabLineFill",  s:fg, s:bg, "NONE")

" Language and filetype specific
call s:Color("pythonStatement", s:color12, s:none, "NONE")

call s:Color("htmlTag", s:none, s:none, "NONE")
call s:Color("htmlEndTag", s:none, s:none, "NONE")
call s:Color("htmlTagName", s:none, s:none, "NONE")
call s:Color("htmlArg", s:none, s:none, "NONE")
call s:Color("htmlSpecialChar", s:color3, s:none, "NONE")
call s:Color("htmlItalic", s:color4, s:none, "NONE")
call s:Color("htmlBold", s:color2, s:none, "NONE")

call s:Color("javaScriptFunction", s:color4, s:none, "NONE")
call s:Color("javaScriptRailsFunction", s:color4, s:none, "NONE")
call s:Color("javaScriptBraces", s:none, s:none, "NONE")

call s:Color("yamlKey", s:color4, s:none, "NONE")
call s:Color("yamlAnchor", s:none, s:none, "NONE")
call s:Color("yamlAlias", s:none, s:none, "NONE")
call s:Color("yamlDocumentHeader", s:color3, s:none, "NONE")
call s:Color("yamlPlainScalar", s:color6, s:none, "NONE")
call s:Color("yamlBlockCollectionItemStart", s:color4, s:none, "NONE")

call s:Color("cssURL", s:color5, s:none, "NONE")
call s:Color("cssFunctionName", s:color4, s:none, "NONE")
call s:Color("cssColor", s:color3, s:none, "NONE")
call s:Color("cssPseudoClassId", s:color4, s:none, "NONE")
call s:Color("cssClassName", s:color4, s:none, "NONE")
call s:Color("cssValueLength", s:color3, s:none, "NONE")
call s:Color("cssCommonAttr", s:color4, s:none, "NONE")
call s:Color("cssBraces", s:none, s:none, "NONE")

call s:Color("jsThis", s:color4, s:none, "NONE")
call s:Color("jsBraces", s:color2, s:none, "NONE")
call s:Color("jsGlobalObjects", s:color4, s:none, "NONE")

call s:Color("coffeeCurly", s:color3, s:none, "NONE")
call s:Color("coffeeObjAssign", s:color2, s:none, "NONE")

call s:Color("cjsxAttribProperty", s:color3, s:none, "NONE")

call s:Color("markdownH1", s:color6, s:none, "NONE")
call s:Color("markdownH2", s:color6, s:none, "NONE")
call s:Color("markdownH3", s:color6, s:none, "NONE")
call s:Color("markdownH4", s:color6, s:none, "NONE")
call s:Color("markdownH5", s:color6, s:none, "NONE")
call s:Color("markdownH6", s:color6, s:none, "NONE")
call s:Color("markdownHeadingDelimiter", s:color6, s:none, "NONE")
call s:Color("markdownRule", s:color6, s:none, "NONE")
