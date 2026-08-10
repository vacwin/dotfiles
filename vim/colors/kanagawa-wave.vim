" kanagawa-wave — сгенерировано из kanagawa.nvim (wave)

hi clear
if exists('syntax_on')
  syntax reset
endif

set background=dark
let g:colors_name = 'kanagawa-wave'

hi Added guifg=#b3f6c0
hi BlinkCmpGhostText guifg=#727169
hi BlinkCmpKind guifg=#c8c093
hi BlinkCmpKindText guifg=#dcd7ba
hi BlinkCmpKindVariable guifg=#c8c093
hi BlinkCmpLabel guifg=#dcd7ba
hi BlinkCmpLabelDeprecated guifg=#727169 gui=strikethrough
hi BlinkCmpLabelDetails guifg=#727169
hi BlinkCmpLabelMatch guifg=#7e9cd8
hi BlinkCmpMenuBorder guifg=#2d4f67 guibg=#223249
hi Bold gui=bold
hi Boolean guifg=#ffa066 gui=bold
hi Changed guifg=#8cf8f7
hi CmpCompletionBorder guifg=#2d4f67 guibg=#223249
hi CmpGhostText guifg=#727169
hi CmpItemAbbr guifg=#dcd7ba
hi CmpItemAbbrDeprecated guifg=#727169 gui=strikethrough
hi CmpItemAbbrMatch guifg=#7e9cd8
hi CmpItemKindDefault guifg=#c8c093
hi CmpItemKindText guifg=#dcd7ba
hi CmpItemKindVariable guifg=#c8c093
hi CmpItemMenu guifg=#c8c093
hi ColorColumn guibg=#2a2a37
hi Comment guifg=#727169 gui=italic
hi Conceal guifg=#938aa9 gui=bold
hi Constant guifg=#ffa066
hi CurSearch guifg=#dcd7ba guibg=#2d4f67 gui=bold
hi Cursor guifg=#1f1f28 guibg=#dcd7ba
hi CursorLine guibg=#363646
hi CursorLineNr guifg=#ff9e3b guibg=#2a2a37 gui=bold
hi DapUIBreakpointsCurrentLine guifg=#e6c384 gui=bold
hi DapUIBreakpointsInfo guifg=#658594
hi DapUIDecoration guifg=#54546d
hi DapUIFloatBorder guifg=#54546d
hi DapUILineNumber guifg=#7fb4ca
hi DapUIModifiedValue guifg=#7fb4ca gui=bold
hi DapUIPlayPause guifg=#98bb6c
hi DapUIRestart guifg=#98bb6c
hi DapUISource guifg=#e46876
hi DapUIStepBack guifg=#7fb4ca
hi DapUIStepInto guifg=#7fb4ca
hi DapUIStepOut guifg=#7fb4ca
hi DapUIStepOver guifg=#7fb4ca
hi DapUIStop guifg=#e82424
hi DapUIStoppedThread guifg=#7fb4ca
hi DapUIThread guifg=#e6c384
hi DapUIUnavailable guifg=#727169
hi DapUIWatchesEmpty guifg=#e82424
hi DapUIWatchesError guifg=#e82424
hi DapUIWatchesValue guifg=#e6c384
hi DashboardCenter guifg=#e6c384
hi DashboardDesc guifg=#e6c384
hi DashboardFooter guifg=#727169
hi DashboardHeader guifg=#c34043
hi DashboardIcon guifg=#938aa9
hi DashboardKey guifg=#7fb4ca
hi DashboardShortCut guifg=#7fb4ca
hi Delimiter guifg=#9cabca
hi DiagnosticDeprecated guisp=#ffc0b9 gui=strikethrough
hi DiagnosticError guifg=#e82424
hi DiagnosticFloatingError guifg=#e82424
hi DiagnosticFloatingHint guifg=#6a9589
hi DiagnosticFloatingInfo guifg=#658594
hi DiagnosticFloatingOk guifg=#98bb6c
hi DiagnosticFloatingWarn guifg=#ff9e3b
hi DiagnosticHint guifg=#6a9589
hi DiagnosticInfo guifg=#658594
hi DiagnosticOk guifg=#98bb6c
hi DiagnosticSignError guifg=#e82424 guibg=#2a2a37
hi DiagnosticSignHint guifg=#6a9589 guibg=#2a2a37
hi DiagnosticSignInfo guifg=#658594 guibg=#2a2a37
hi DiagnosticSignWarn guifg=#ff9e3b guibg=#2a2a37
hi DiagnosticUnderlineError guisp=#e82424 gui=undercurl
hi DiagnosticUnderlineHint guisp=#6a9589 gui=undercurl
hi DiagnosticUnderlineInfo guisp=#658594 gui=undercurl
hi DiagnosticUnderlineOk guisp=#b3f6c0 gui=underline
hi DiagnosticUnderlineWarn guisp=#ff9e3b gui=undercurl
hi DiagnosticWarn guifg=#ff9e3b
hi DiffAdd guibg=#2b3328
hi DiffChange guibg=#252535
hi DiffDelete guifg=#c34043 guibg=#43242b
hi DiffText guibg=#49443c
hi Directory guifg=#7e9cd8
hi EndOfBuffer guifg=#1f1f28
hi Error guifg=#e82424
hi ErrorMsg guifg=#e82424
hi Exception guifg=#e46876
hi FloatBorder guifg=#54546d guibg=#16161d
hi FloatFooter guifg=#54546d guibg=#16161d
hi FloatShadow guibg=#4f5258
hi FloatShadowThrough guibg=#4f5258
hi FloatTitle guifg=#938aa9 guibg=#16161d gui=bold
hi FloatermBorder guifg=#54546d guibg=#1f1f28
hi FoldColumn guifg=#54546d guibg=#2a2a37
hi Folded guifg=#938aa9 guibg=#2a2a37
hi Function guifg=#7e9cd8
hi GitSignsAdd guifg=#76946a guibg=#2a2a37
hi GitSignsChange guifg=#dca561 guibg=#2a2a37
hi GitSignsDelete guifg=#c34043 guibg=#2a2a37
hi IblIndent guifg=#54546d
hi IblScope guifg=#938aa9
hi IblWhitespace guifg=#54546d
hi Identifier guifg=#e6c384
hi IncSearch guifg=#223249 guibg=#ff9e3b
hi IndentBlanklineChar guifg=#54546d
hi IndentBlanklineContextChar guifg=#938aa9
hi IndentBlanklineContextStart guisp=#938aa9 gui=underline
hi IndentBlanklineSpaceChar guifg=#54546d
hi IndentBlanklineSpaceCharBlankline guifg=#54546d
hi Italic gui=italic
hi Keyword guifg=#957fb8 gui=italic
hi LazyProgressTodo guifg=#54546d
hi LineNr guifg=#54546d guibg=#2a2a37
hi LspCodeLens guifg=#727169
hi LspReferenceText guibg=#49443c
hi LspReferenceWrite guibg=#49443c gui=underline
hi LspSignatureActiveParameter guifg=#ff9e3b
hi MatchParen guifg=#ff9e3b gui=bold
hi MiniAnimateCursor gui=reverse,nocombine
hi MiniCompletionActiveParameter gui=underline
hi MiniCursorword gui=underline
hi MiniCursorwordCurrent gui=underline
hi MiniDepsHint guifg=#6a9589
hi MiniDepsInfo guifg=#658594
hi MiniDepsMsgBreaking guifg=#ff9e3b
hi MiniDiffSignAdd guifg=#76946a guibg=#2a2a37
hi MiniDiffSignChange guifg=#dca561 guibg=#2a2a37
hi MiniDiffSignDelete guifg=#c34043 guibg=#2a2a37
hi MiniFilesFile guifg=#dcd7ba
hi MiniFilesTitle guifg=#938aa9 guibg=#16161d gui=bold
hi MiniFilesTitleFocused guifg=#dcd7ba guibg=#16161d gui=bold
hi MiniHipatternsFixme guifg=#1f1f28 guibg=#e82424 gui=bold
hi MiniHipatternsHack guifg=#1f1f28 guibg=#ff9e3b gui=bold
hi MiniHipatternsNote guifg=#1f1f28 guibg=#658594 gui=bold
hi MiniHipatternsTodo guifg=#1f1f28 guibg=#6a9589 gui=bold
hi MiniIconsAzure guifg=#7fb4ca
hi MiniIconsBlue guifg=#7e9cd8
hi MiniIconsCyan guifg=#7aa89f
hi MiniIconsGreen guifg=#98bb6c
hi MiniIconsGrey guifg=#dcd7ba
hi MiniIconsOrange guifg=#ffa066
hi MiniIconsPurple guifg=#957fb8
hi MiniIconsRed guifg=#ff5d62
hi MiniIconsYellow guifg=#e6c384
hi MiniIndentscopePrefix gui=nocombine
hi MiniIndentscopeSymbol guifg=#7fb4ca
hi MiniJump2dSpot guifg=#ffa066 gui=bold,nocombine
hi MiniJump2dSpotAhead guifg=#6a9589 guibg=#181820 gui=nocombine
hi MiniJump2dSpotUnique guifg=#7fb4ca gui=bold,nocombine
hi MiniPickPrompt guifg=#7e9cd8 guibg=#16161d
hi MiniStarterCurrent gui=nocombine
hi MiniStarterFooter guifg=#717c7c
hi MiniStarterItemPrefix guifg=#ff9e3b
hi MiniStarterQuery guifg=#658594
hi MiniStarterSection guifg=#98bb6c
hi MiniStatuslineDevinfo guifg=#c8c093 guibg=#2a2a37
hi MiniStatuslineFileinfo guifg=#c8c093 guibg=#2a2a37
hi MiniStatuslineFilename guifg=#c8c093 guibg=#181820
hi MiniStatuslineModeCommand guifg=#1f1f28 guibg=#c0a36e gui=bold
hi MiniStatuslineModeInsert guifg=#1f1f28 guibg=#98bb6c gui=bold
hi MiniStatuslineModeNormal guifg=#16161d guibg=#7e9cd8 gui=bold
hi MiniStatuslineModeOther guifg=#1f1f28 guibg=#7aa89f gui=bold
hi MiniStatuslineModeReplace guifg=#1f1f28 guibg=#ffa066 gui=bold
hi MiniStatuslineModeVisual guifg=#1f1f28 guibg=#957fb8 gui=bold
hi MiniTablineCurrent guifg=#c8c093 guibg=#2a2a37 gui=bold
hi MiniTablineHidden guifg=#938aa9 guibg=#16161d
hi MiniTablineModifiedCurrent guifg=#2a2a37 guibg=#c8c093 gui=bold
hi MiniTablineModifiedHidden guifg=#16161d guibg=#938aa9
hi MiniTablineModifiedVisible guifg=#16161d guibg=#938aa9 gui=bold
hi MiniTablineTabpagesection guifg=#dcd7ba guibg=#2d4f67 gui=bold
hi MiniTablineVisible guifg=#938aa9 guibg=#16161d gui=bold
hi MiniTestEmphasis gui=bold
hi MiniTestFail guifg=#e82424 gui=bold
hi MiniTestPass guifg=#98bb6c gui=bold
hi MiniTrailspace guibg=#c34043
hi ModeMsg guifg=#ff9e3b gui=bold
hi MoreMsg guifg=#658594
hi MsgArea guifg=#c8c093
hi MsgSeparator guifg=#16161d guibg=#16161d
hi NavicSeparator guifg=#dcd7ba
hi NavicText guifg=#dcd7ba
hi NeoTreeGitAdded guifg=#76946a
hi NeoTreeGitConflict guifg=#e82424
hi NeoTreeGitDeleted guifg=#c34043
hi NeoTreeGitModified guifg=#dca561
hi NeoTreeGitStaged guifg=#76946a
hi NeoTreeRootName guifg=#e6c384 gui=bold
hi NeogitDiffAddHighlight guibg=#2b3328
hi NeogitDiffContextHighlight guibg=#252535
hi NeogitDiffDeleteHighlight guibg=#43242b
hi NeogitHunkHeader guifg=#7e9cd8
hi NeogitHunkHeaderHighlight guifg=#ffa066 guibg=#252535
hi NeotestAdapterName guifg=#ff5d62
hi NeotestDir guifg=#7e9cd8
hi NeotestExpandMarker guifg=#9cabca gui=bold
hi NeotestFailed guifg=#e82424
hi NeotestFile guifg=#7e9cd8
hi NeotestFocused gui=bold,underline
hi NeotestIndent guifg=#938aa9 gui=bold
hi NeotestMarked guifg=#ff9e3b gui=italic
hi NeotestNamespace guifg=#7e9cd8
hi NeotestPassed guifg=#98bb6c
hi NeotestRunning guifg=#dca561
hi NeotestSkipped guifg=#7fb4ca
hi NeotestTarget guifg=#ff5d62
hi NeotestTest guifg=#c8c093
hi NeotestUnknown guifg=#717c7c
hi NeotestWatching guifg=#dca561
hi NeotestWinSelect guifg=#6a9589
hi NonText guifg=#54546d
hi Normal guifg=#dcd7ba guibg=#1f1f28
hi NormalFloat guifg=#c8c093 guibg=#16161d
hi NotifyBackground guibg=#1f1f28
hi Number guifg=#d27e99
hi OkMsg guifg=#b3f6c0
hi Operator guifg=#c0a36e
hi Pmenu guifg=#dcd7ba guibg=#223249
hi PmenuExtra guifg=#938aa9 guibg=#223249
hi PmenuExtraSel guifg=#938aa9 guibg=#2d4f67
hi PmenuKind guifg=#c8c093 guibg=#223249
hi PmenuKindSel guifg=#c8c093 guibg=#2d4f67
hi PmenuMatch gui=bold
hi PmenuMatchSel gui=bold
hi PmenuSbar guibg=#223249
hi PmenuSel guibg=#2d4f67
hi PmenuThumb guibg=#2d4f67
hi PreProc guifg=#e46876
hi QuickFixLine guibg=#2a2a37
hi RedrawDebugClear guibg=#6b5300
hi RedrawDebugComposed guibg=#005523
hi RedrawDebugNormal gui=reverse
hi RedrawDebugRecompose guibg=#590008
hi Removed guifg=#ffc0b9
hi Search guifg=#dcd7ba guibg=#2d4f67
hi SignColumn guifg=#938aa9 guibg=#2a2a37
hi Special guifg=#7fb4ca
hi SpecialKey guifg=#938aa9
hi SpellBad guisp=#e82424 gui=undercurl
hi SpellCap guisp=#ff9e3b gui=undercurl
hi SpellLocal guisp=#ff9e3b gui=undercurl
hi SpellRare guisp=#ff9e3b gui=undercurl
hi Statement guifg=#957fb8 gui=bold
hi StatusLine guifg=#c8c093 guibg=#16161d
hi StatusLineNC guifg=#54546d guibg=#16161d
hi String guifg=#98bb6c
hi Substitute guifg=#dcd7ba guibg=#c34043
hi TabLine guifg=#938aa9 guibg=#16161d
hi TabLineFill guibg=#1f1f28
hi TabLineSel guifg=#c8c093 guibg=#2a2a37
hi TelescopeBorder guifg=#54546d guibg=#1f1f28
hi TelescopeTitle guifg=#938aa9
hi TermCursor gui=reverse
hi Title guifg=#7e9cd8 gui=bold
hi Todo guifg=#223249 guibg=#658594 gui=bold
hi TreesitterContextLineNumber guifg=#938aa9 guibg=#2a2a37
hi TroubleIndent guifg=#54546d
hi TroublePos guifg=#938aa9
hi Type guifg=#7aa89f
hi Underlined guifg=#7fb4ca gui=underline
hi Visual guibg=#223249
hi WarningMsg guifg=#ff9e3b
hi Whitespace guifg=#54546d
hi WinBar guifg=#c8c093
hi WinBarNC guifg=#c8c093
hi WinSeparator guifg=#16161d
hi debugBreakpoint guifg=#7fb4ca guibg=#2a2a37
hi debugPC guibg=#43242b
hi diffAdded guifg=#76946a
hi diffChanged guifg=#dca561
hi diffDeleted guifg=#c34043
hi diffNewFile guifg=#76946a
hi diffOldFile guifg=#c34043
hi diffRemoved guifg=#c34043
hi healthError guifg=#e82424
hi healthSuccess guifg=#98bb6c
hi healthWarning guifg=#ff9e3b
hi markdownCode guifg=#98bb6c
hi markdownCodeBlock guifg=#98bb6c

hi! link AerialArrayIcon Type
hi! link AerialBooleanIcon Boolean
hi! link AerialClassIcon Type
hi! link AerialConstantIcon Constant
hi! link AerialEnumIcon Type
hi! link AerialEnumMemberIcon Constant
hi! link AerialEventIcon Structure
hi! link AerialFileIcon Directory
hi! link AerialFunctionIcon Function
hi! link AerialInterfaceIcon Type
hi! link AerialKeyIcon Identifier
hi! link AerialNullIcon Type
hi! link AerialNumberIcon Number
hi! link AerialObjectIcon Type
hi! link AerialOperatorIcon Operator
hi! link AerialStringIcon String
hi! link AerialStructIcon Structure
hi! link AerialTypeParameterIcon Type
hi! link BlinkCmpDoc NormalFloat
hi! link BlinkCmpDocBorder FloatBorder
hi! link BlinkCmpDocCursorLine Visual
hi! link BlinkCmpKindClass Type
hi! link BlinkCmpKindColor Special
hi! link BlinkCmpKindConstant Constant
hi! link BlinkCmpKindCopilot String
hi! link BlinkCmpKindEnum Type
hi! link BlinkCmpKindEnumMember Constant
hi! link BlinkCmpKindEvent Type
hi! link BlinkCmpKindFile Directory
hi! link BlinkCmpKindFolder Directory
hi! link BlinkCmpKindFunction Function
hi! link BlinkCmpKindInterface Type
hi! link BlinkCmpKindKeyword Keyword
hi! link BlinkCmpKindOperator Operator
hi! link BlinkCmpKindReference Special
hi! link BlinkCmpKindSnippet Special
hi! link BlinkCmpKindStruct Type
hi! link BlinkCmpKindTypeParameter Type
hi! link BlinkCmpKindUnit Number
hi! link BlinkCmpKindValue String
hi! link BlinkCmpMenu Pmenu
hi! link BlinkCmpMenuSelection PmenuSel
hi! link BlinkCmpScrollBarGutter PmenuSbar
hi! link BlinkCmpScrollBarThumb PmenuThumb
hi! link BlinkCmpSignatureHelp NormalFloat
hi! link BlinkCmpSignatureHelpActiveParameter LspSignatureActiveParameter
hi! link BlinkCmpSignatureHelpBorder FloatBorder
hi! link Character String
hi! link CmpCompletion Pmenu
hi! link CmpCompletionSbar PmenuSbar
hi! link CmpCompletionSel PmenuSel
hi! link CmpCompletionThumb PmenuThumb
hi! link CmpDocumentation NormalFloat
hi! link CmpDocumentationBorder FloatBorder
hi! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch
hi! link CmpItemKindClass Type
hi! link CmpItemKindColor Special
hi! link CmpItemKindConstant Constant
hi! link CmpItemKindCopilot String
hi! link CmpItemKindEnum Type
hi! link CmpItemKindEnumMember Constant
hi! link CmpItemKindEvent Type
hi! link CmpItemKindFile Directory
hi! link CmpItemKindFolder Directory
hi! link CmpItemKindFunction Function
hi! link CmpItemKindInterface Type
hi! link CmpItemKindKeyword Keyword
hi! link CmpItemKindOperator Operator
hi! link CmpItemKindReference Special
hi! link CmpItemKindSnippet Special
hi! link CmpItemKindStruct Type
hi! link CmpItemKindTypeParameter Type
hi! link CmpItemKindUnit Number
hi! link CmpItemKindValue String
hi! link ComplHint NonText
hi! link ComplHintMore MoreMsg
hi! link Conditional Statement
hi! link CursorColumn CursorLine
hi! link CursorIM Cursor
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link DapUIBreakpointsDisabledLine Comment
hi! link DapUIBreakpointsPath Directory
hi! link DapUIScope Special
hi! link DapUIType Type
hi! link Debug Special
hi! link Define PreProc
hi! link DiagnosticSignOk DiagnosticOk
hi! link DiagnosticUnnecessary Comment
hi! link DiagnosticVirtualLinesError DiagnosticError
hi! link DiagnosticVirtualLinesHint DiagnosticHint
hi! link DiagnosticVirtualLinesInfo DiagnosticInfo
hi! link DiagnosticVirtualLinesOk DiagnosticOk
hi! link DiagnosticVirtualLinesWarn DiagnosticWarn
hi! link DiagnosticVirtualTextError DiagnosticError
hi! link DiagnosticVirtualTextHint DiagnosticHint
hi! link DiagnosticVirtualTextInfo DiagnosticInfo
hi! link DiagnosticVirtualTextOk DiagnosticOk
hi! link DiagnosticVirtualTextWarn DiagnosticWarn
hi! link DiffTextAdd DiffText
hi! link Float Number
hi! link Ignore NonText
hi! link Include PreProc
hi! link Label Statement
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link LspCodeLensSeparator LspCodeLens
hi! link LspInlayHint NonText
hi! link LspReferenceRead LspReferenceText
hi! link LspReferenceTarget LspReferenceText
hi! link Macro PreProc
hi! link MiniAnimateNormalFloat NormalFloat
hi! link MiniClueBorder FloatBorder
hi! link MiniClueDescGroup DiagnosticFloatingWarn
hi! link MiniClueDescSingle NormalFloat
hi! link MiniClueNextKey DiagnosticFloatingHint
hi! link MiniClueNextKeyWithPostkeys DiagnosticFloatingError
hi! link MiniClueSeparator DiagnosticFloatingInfo
hi! link MiniClueTitle FloatTitle
hi! link MiniDepsChangeAdded diffAdded
hi! link MiniDepsChangeRemoved diffRemoved
hi! link MiniDepsPlaceholder Comment
hi! link MiniDepsTitle Title
hi! link MiniDepsTitleError DiffDelete
hi! link MiniDepsTitleSame DiffText
hi! link MiniDepsTitleUpdate DiffAdd
hi! link MiniDiffOverAdd DiffAdd
hi! link MiniDiffOverChange DiffText
hi! link MiniDiffOverContext DiffChange
hi! link MiniDiffOverDelete DiffDelete
hi! link MiniFilesBorder FloatBorder
hi! link MiniFilesBorderModified DiagnosticFloatingWarn
hi! link MiniFilesCursorLine CursorLine
hi! link MiniFilesDirectory Directory
hi! link MiniFilesNormal NormalFloat
hi! link MiniJump SpellRare
hi! link MiniJump2dDim Comment
hi! link MiniMapNormal NormalFloat
hi! link MiniMapSymbolCount Special
hi! link MiniMapSymbolLine Title
hi! link MiniMapSymbolView Delimiter
hi! link MiniNotifyBorder FloatBorder
hi! link MiniNotifyNormal NormalFloat
hi! link MiniNotifyTitle FloatTitle
hi! link MiniOperatorsExchangeFrom IncSearch
hi! link MiniPickBorder FloatBorder
hi! link MiniPickBorderBusy DiagnosticFloatingWarn
hi! link MiniPickBorderText FloatTitle
hi! link MiniPickHeader DiagnosticFloatingHint
hi! link MiniPickIconDirectory Directory
hi! link MiniPickIconFile MiniPickNormal
hi! link MiniPickMatchCurrent CursorLine
hi! link MiniPickMatchMarked Visual
hi! link MiniPickMatchRanges DiagnosticFloatingHint
hi! link MiniPickNormal NormalFloat
hi! link MiniPickPreviewLine CursorLine
hi! link MiniPickPreviewRegion IncSearch
hi! link MiniStarterHeader Title
hi! link MiniStarterInactive Comment
hi! link MiniStarterItem Normal
hi! link MiniStarterItemBullet Delimiter
hi! link MiniStatuslineInactive StatusLineNC
hi! link MiniSurround IncSearch
hi! link MiniTablineFill TabLineFill
hi! link NavicIconsArray Type
hi! link NavicIconsBoolean Boolean
hi! link NavicIconsClass Type
hi! link NavicIconsConstant Constant
hi! link NavicIconsEnum Type
hi! link NavicIconsEnumMember Constant
hi! link NavicIconsEvent Structure
hi! link NavicIconsFile Directory
hi! link NavicIconsFunction Function
hi! link NavicIconsInterface Type
hi! link NavicIconsKey Identifier
hi! link NavicIconsNull Type
hi! link NavicIconsNumber Number
hi! link NavicIconsObject Type
hi! link NavicIconsOperator Operator
hi! link NavicIconsString String
hi! link NavicIconsStruct Structure
hi! link NavicIconsTypeParameter Type
hi! link NeoTreeGitUnstaged NeoTreeGitModified
hi! link NeoTreeGitUntracked NeoTreeGitModified
hi! link NeoTreeIndentMarker NonText
hi! link NeoTreeModified String
hi! link NeoTreeTabActive TabLineSel
hi! link NeoTreeTabInactive TabLine
hi! link NeoTreeTabSeparatorActive NeoTreeTabActive
hi! link NeoTreeTabSeparatorInactive NeoTreeTabInactive
hi! link NormalNC Normal
hi! link NotifyDEBUGBorder Debug
hi! link NotifyDEBUGIcon Debug
hi! link NotifyDEBUGTitle Debug
hi! link NotifyERRORBorder DiagnosticError
hi! link NotifyERRORIcon DiagnosticError
hi! link NotifyERRORTitle DiagnosticError
hi! link NotifyHINTBorder DiagnosticHint
hi! link NotifyHINTIcon DiagnosticHint
hi! link NotifyHINTTitle DiagnosticHint
hi! link NotifyINFOBorder DiagnosticInfo
hi! link NotifyINFOIcon DiagnosticInfo
hi! link NotifyINFOTitle DiagnosticInfo
hi! link NotifyTRACEBorder Comment
hi! link NotifyTRACEIcon Comment
hi! link NotifyTRACETitle Comment
hi! link NotifyWARNBorder DiagnosticWarn
hi! link NotifyWARNIcon DiagnosticWarn
hi! link NotifyWARNTitle DiagnosticWarn
hi! link PmenuBorder FloatBorder
hi! link PmenuShadow FloatShadow
hi! link PmenuShadowThrough FloatShadowThrough
hi! link PreCondit PreProc
hi! link PreInsert Added
hi! link Question MoreMsg
hi! link Repeat Statement
hi! link SnippetTabstop Visual
hi! link SnippetTabstopActive SnippetTabstop
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link StderrMsg ErrorMsg
hi! link StorageClass Type
hi! link Structure Type
hi! link Tag Special
hi! link TelescopeResultsClass Structure
hi! link TelescopeResultsMethod Function
hi! link TelescopeResultsStruct Structure
hi! link TelescopeSelection CursorLine
hi! link TelescopeSelectionCaret CursorLineNr
hi! link TreesitterContext Folded
hi! link Typedef Type
hi! link VertSplit WinSeparator
hi! link VisualNOS Visual
hi! link WildMenu Pmenu
hi! link lCursor Cursor
hi! link qfFileName Directory
hi! link qfLineNr LineNr
