" Electric Dreams - A bold neon colorscheme for Vim
" Maintainer: nylanalyn
" Version: 1.0.0
" URL: https://github.com/nylanalyn/electric-dreams-theme

" Initialization {{{
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "electric_dreams"
set background=dark
" }}}

" Color Palette {{{
let s:colors = {}

" Base colors
let s:colors.base00 = ['#0A0A0F', 0]   " Pure black
let s:colors.base01 = ['#151520', 8]   " Slightly lighter black
let s:colors.base02 = ['#1A1A2E', 10]  " Dark navy
let s:colors.base03 = ['#252535', 11]  " Mid-dark navy
let s:colors.base04 = ['#4A4A6A', 12]  " Cool purple-gray
let s:colors.base05 = ['#D0D0E0', 7]   " Light lavender-white (primary text)
let s:colors.base06 = ['#E8E8F0', 15]  " Bright lavender-white
let s:colors.base07 = ['#FFFFFF', 15]  " Pure white

" Accent colors
let s:colors.red = ['#FF1744', 1]           " Vivid crimson
let s:colors.red_dark = ['#C41E3A', 1]      " Deep red
let s:colors.magenta = ['#FF006E', 5]       " Hot magenta
let s:colors.magenta_dark = ['#D81B60', 5]  " Deep magenta
let s:colors.cyan = ['#00D9FF', 6]          " Electric cyan
let s:colors.cyan_bright = ['#1DE9B6', 14]  " Turquoise
let s:colors.cyan_dark = ['#00BFA5', 6]     " Deep cyan
let s:colors.purple = ['#9C27B0', 13]       " Vibrant purple
let s:colors.purple_dark = ['#7B1FA2', 5]   " Deep purple
let s:colors.purple_mid = ['#6B5B95', 13]   " Mid purple
let s:colors.pink = ['#E91E63', 13]         " Hot pink
let s:colors.violet = ['#BB86FC', 13]       " Soft violet

" UI-specific
let s:colors.bg = s:colors.base00
let s:colors.bg_alt = s:colors.base01
let s:colors.bg_float = s:colors.base02
let s:colors.fg = s:colors.base05
let s:colors.fg_bright = s:colors.base06

let s:colors.border = s:colors.magenta
let s:colors.border_active = s:colors.cyan
let s:colors.border_inactive = s:colors.base04

" Status colors
let s:colors.success = s:colors.cyan_bright
let s:colors.warning = s:colors.magenta
let s:colors.error = s:colors.red
let s:colors.info = s:colors.purple
" }}}

" Highlighting Function {{{
function! s:HL(group, fg, ...)
  " Arguments: group, fg, bg, style
  let l:fg = a:fg
  let l:bg = get(a:, 1, ['NONE', 'NONE'])
  let l:style = get(a:, 2, 'NONE')

  execute 'highlight' a:group
    \ 'guifg=' . l:fg[0] 'ctermfg=' . l:fg[1]
    \ 'guibg=' . l:bg[0] 'ctermbg=' . l:bg[1]
    \ 'gui=' . l:style 'cterm=' . l:style
endfunction
" }}}

" Editor UI {{{
call s:HL('Normal', s:colors.fg, s:colors.bg)
call s:HL('NormalFloat', s:colors.fg, s:colors.bg_float)
call s:HL('NormalNC', s:colors.fg, s:colors.bg)
call s:HL('Cursor', s:colors.bg, s:colors.cyan)
call s:HL('CursorLine', ['NONE', 'NONE'], s:colors.base01, 'NONE')
call s:HL('CursorColumn', ['NONE', 'NONE'], s:colors.base01)
call s:HL('ColorColumn', ['NONE', 'NONE'], s:colors.base01)
call s:HL('CursorLineNr', s:colors.cyan, s:colors.base01, 'bold')
call s:HL('LineNr', s:colors.base04, s:colors.bg)
call s:HL('SignColumn', s:colors.base04, s:colors.bg)
call s:HL('VertSplit', s:colors.base04, s:colors.bg)
call s:HL('StatusLine', s:colors.fg_bright, s:colors.base02, 'NONE')
call s:HL('StatusLineNC', s:colors.base04, s:colors.base01, 'NONE')
call s:HL('Tabline', s:colors.base04, s:colors.base01)
call s:HL('TablineFill', ['NONE', 'NONE'], s:colors.base01)
call s:HL('TablineSel', s:colors.cyan, s:colors.base02, 'bold')
call s:HL('Visual', ['NONE', 'NONE'], s:colors.base02)
call s:HL('VisualNOS', ['NONE', 'NONE'], s:colors.base02)
call s:HL('Search', s:colors.bg, s:colors.cyan)
call s:HL('IncSearch', s:colors.bg, s:colors.magenta, 'bold')
call s:HL('MatchParen', s:colors.cyan, s:colors.base03, 'bold')
call s:HL('Folded', s:colors.base04, s:colors.base01)
call s:HL('FoldColumn', s:colors.base04, s:colors.bg)
call s:HL('Pmenu', s:colors.fg, s:colors.base02)
call s:HL('PmenuSel', s:colors.bg, s:colors.cyan, 'bold')
call s:HL('PmenuSbar', ['NONE', 'NONE'], s:colors.base02)
call s:HL('PmenuThumb', ['NONE', 'NONE'], s:colors.base04)
call s:HL('WildMenu', s:colors.bg, s:colors.cyan, 'bold')
call s:HL('QuickFixLine', ['NONE', 'NONE'], s:colors.base02)
" }}}

" Syntax Highlighting {{{
call s:HL('Comment', s:colors.base04, ['NONE', 'NONE'], 'italic')
call s:HL('Todo', s:colors.magenta, s:colors.bg, 'bold,italic')

call s:HL('Constant', s:colors.purple)
call s:HL('String', s:colors.cyan_bright)
call s:HL('Character', s:colors.cyan_bright)
call s:HL('Number', s:colors.purple)
call s:HL('Boolean', s:colors.purple)
call s:HL('Float', s:colors.purple)

call s:HL('Identifier', s:colors.fg)
call s:HL('Function', s:colors.cyan, ['NONE', 'NONE'], 'bold')

call s:HL('Statement', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('Conditional', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('Repeat', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('Label', s:colors.magenta)
call s:HL('Operator', s:colors.magenta)
call s:HL('Keyword', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('Exception', s:colors.red, ['NONE', 'NONE'], 'bold')

call s:HL('PreProc', s:colors.pink)
call s:HL('Include', s:colors.pink, ['NONE', 'NONE'], 'bold')
call s:HL('Define', s:colors.pink)
call s:HL('Macro', s:colors.pink)
call s:HL('PreCondit', s:colors.pink)

call s:HL('Type', s:colors.cyan, ['NONE', 'NONE'], 'NONE')
call s:HL('StorageClass', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('Structure', s:colors.cyan)
call s:HL('Typedef', s:colors.cyan)

call s:HL('Special', s:colors.violet)
call s:HL('SpecialChar', s:colors.violet)
call s:HL('Tag', s:colors.cyan)
call s:HL('Delimiter', s:colors.fg)
call s:HL('SpecialComment', s:colors.purple_mid, ['NONE', 'NONE'], 'italic')
call s:HL('Debug', s:colors.red)

call s:HL('Underlined', s:colors.cyan, ['NONE', 'NONE'], 'underline')
call s:HL('Ignore', s:colors.base04)
call s:HL('Error', s:colors.red, s:colors.bg, 'bold')
" }}}

" Diff {{{
call s:HL('DiffAdd', s:colors.cyan_bright, s:colors.base01)
call s:HL('DiffChange', s:colors.magenta, s:colors.base01)
call s:HL('DiffDelete', s:colors.red, s:colors.base01)
call s:HL('DiffText', s:colors.cyan, s:colors.base02, 'bold')
" }}}

" Git Gutter / Signify {{{
call s:HL('GitGutterAdd', s:colors.cyan_bright, s:colors.bg)
call s:HL('GitGutterChange', s:colors.magenta, s:colors.bg)
call s:HL('GitGutterDelete', s:colors.red, s:colors.bg)
call s:HL('GitGutterChangeDelete', s:colors.magenta, s:colors.bg)

call s:HL('SignifySignAdd', s:colors.cyan_bright, s:colors.bg)
call s:HL('SignifySignChange', s:colors.magenta, s:colors.bg)
call s:HL('SignifySignDelete', s:colors.red, s:colors.bg)
" }}}

" LSP / Diagnostics {{{
call s:HL('DiagnosticError', s:colors.red)
call s:HL('DiagnosticWarn', s:colors.magenta)
call s:HL('DiagnosticInfo', s:colors.purple)
call s:HL('DiagnosticHint', s:colors.cyan)

call s:HL('DiagnosticUnderlineError', ['NONE', 'NONE'], ['NONE', 'NONE'], 'underline')
call s:HL('DiagnosticUnderlineWarn', ['NONE', 'NONE'], ['NONE', 'NONE'], 'underline')
call s:HL('DiagnosticUnderlineInfo', ['NONE', 'NONE'], ['NONE', 'NONE'], 'underline')
call s:HL('DiagnosticUnderlineHint', ['NONE', 'NONE'], ['NONE', 'NONE'], 'underline')

call s:HL('LspReferenceText', ['NONE', 'NONE'], s:colors.base02)
call s:HL('LspReferenceRead', ['NONE', 'NONE'], s:colors.base02)
call s:HL('LspReferenceWrite', ['NONE', 'NONE'], s:colors.base02)
" }}}

" TreeSitter {{{
hi! link TSAnnotation PreProc
hi! link TSAttribute PreProc
hi! link TSBoolean Boolean
hi! link TSCharacter Character
hi! link TSComment Comment
hi! link TSConditional Conditional
hi! link TSConstant Constant
hi! link TSConstBuiltin Constant
hi! link TSConstMacro Macro
hi! link TSConstructor Function
hi! link TSException Exception
hi! link TSField Identifier
hi! link TSFloat Float
hi! link TSFunction Function
hi! link TSFuncBuiltin Function
hi! link TSFuncMacro Function
hi! link TSInclude Include
hi! link TSKeyword Keyword
hi! link TSKeywordFunction Keyword
hi! link TSKeywordOperator Operator
hi! link TSLabel Label
hi! link TSMethod Function
hi! link TSNamespace Identifier
hi! link TSNumber Number
hi! link TSOperator Operator
hi! link TSParameter Identifier
hi! link TSParameterReference Identifier
hi! link TSProperty Identifier
hi! link TSPunctDelimiter Delimiter
hi! link TSPunctBracket Delimiter
hi! link TSPunctSpecial Special
hi! link TSRepeat Repeat
hi! link TSString String
hi! link TSStringRegex String
hi! link TSStringEscape SpecialChar
hi! link TSSymbol Identifier
hi! link TSTag Tag
hi! link TSTagDelimiter Delimiter
hi! link TSText Normal
hi! link TSStrong Bold
hi! link TSEmphasis Italic
hi! link TSUnderline Underlined
hi! link TSStrike Strikethrough
hi! link TSTitle Title
hi! link TSLiteral String
hi! link TSURI Underlined
hi! link TSMath Special
hi! link TSTextReference Constant
hi! link TSEnvironment Macro
hi! link TSEnvironmentName Type
hi! link TSNote SpecialComment
hi! link TSWarning Todo
hi! link TSDanger Error
hi! link TSType Type
hi! link TSTypeBuiltin Type
hi! link TSVariable Identifier
hi! link TSVariableBuiltin Identifier
" }}}

" Markdown {{{
call s:HL('markdownHeadingDelimiter', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH1', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH2', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH3', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH4', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH5', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('markdownH6', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('markdownBold', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('markdownItalic', s:colors.purple, ['NONE', 'NONE'], 'italic')
call s:HL('markdownCode', s:colors.cyan_bright)
call s:HL('markdownCodeBlock', s:colors.cyan_bright)
call s:HL('markdownCodeDelimiter', s:colors.cyan_bright)
call s:HL('markdownUrl', s:colors.cyan, ['NONE', 'NONE'], 'underline')
call s:HL('markdownLink', s:colors.purple)
call s:HL('markdownLinkText', s:colors.purple)
" }}}

" HTML/XML {{{
call s:HL('htmlTag', s:colors.base04)
call s:HL('htmlEndTag', s:colors.base04)
call s:HL('htmlTagName', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('htmlArg', s:colors.cyan)
call s:HL('htmlSpecialChar', s:colors.violet)
call s:HL('htmlLink', s:colors.cyan, ['NONE', 'NONE'], 'underline')
call s:HL('htmlBold', s:colors.fg, ['NONE', 'NONE'], 'bold')
call s:HL('htmlItalic', s:colors.fg, ['NONE', 'NONE'], 'italic')
" }}}

" CSS {{{
call s:HL('cssClassName', s:colors.cyan)
call s:HL('cssClassNameDot', s:colors.cyan)
call s:HL('cssIdentifier', s:colors.cyan)
call s:HL('cssProp', s:colors.fg)
call s:HL('cssAttr', s:colors.purple)
call s:HL('cssAttrComma', s:colors.fg)
call s:HL('cssColor', s:colors.purple)
call s:HL('cssFunction', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('cssBraces', s:colors.fg)
call s:HL('cssPseudoClassId', s:colors.violet)
call s:HL('cssImportant', s:colors.magenta, ['NONE', 'NONE'], 'bold')
" }}}

" JavaScript/TypeScript {{{
call s:HL('javaScriptFunction', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('javaScriptIdentifier', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('javaScriptNull', s:colors.purple)
call s:HL('javaScriptNumber', s:colors.purple)
call s:HL('javaScriptBraces', s:colors.fg)

call s:HL('typescriptStorageClass', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('typescriptVariable', s:colors.magenta, ['NONE', 'NONE'], 'bold')
call s:HL('typescriptBraces', s:colors.fg)
call s:HL('typescriptEndColons', s:colors.fg)
call s:HL('typescriptFunction', s:colors.cyan, ['NONE', 'NONE'], 'bold')
" }}}

" Python {{{
call s:HL('pythonBuiltin', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('pythonFunction', s:colors.cyan, ['NONE', 'NONE'], 'bold')
call s:HL('pythonDecorator', s:colors.pink)
call s:HL('pythonDecoratorName', s:colors.pink)
call s:HL('pythonExClass', s:colors.cyan)
" }}}

" Cleanup {{{
delfunction s:HL
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
