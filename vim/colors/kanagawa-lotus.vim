" kanagawa-lotus — сгенерировано из kanagawa.nvim (lotus)

hi clear
if exists('syntax_on')
  syntax reset
endif

set background=light
let g:colors_name = 'kanagawa-lotus'

hi Added guifg=#b3f6c0
hi BlinkCmpGhostText guifg=#8a8980
hi BlinkCmpKind guifg=#43436c
hi BlinkCmpKindText guifg=#545464
hi BlinkCmpKindVariable guifg=#43436c
hi BlinkCmpLabel guifg=#43436c
hi BlinkCmpLabelDeprecated guifg=#8a8980 gui=strikethrough
hi BlinkCmpLabelDetails guifg=#8a8980
hi BlinkCmpLabelMatch guifg=#4d699b
hi BlinkCmpMenuBorder guifg=#b5cbd2 guibg=#c7d7e0
hi Bold gui=bold
hi Boolean guifg=#cc6d00 gui=bold
hi Changed guifg=#8cf8f7
hi CmpCompletionBorder guifg=#b5cbd2 guibg=#c7d7e0
hi CmpGhostText guifg=#8a8980
hi CmpItemAbbr guifg=#43436c
hi CmpItemAbbrDeprecated guifg=#8a8980 gui=strikethrough
hi CmpItemAbbrMatch guifg=#4d699b
hi CmpItemKindDefault guifg=#43436c
hi CmpItemKindText guifg=#545464
hi CmpItemKindVariable guifg=#43436c
hi CmpItemMenu guifg=#43436c
hi ColorColumn guibg=#e7dba0
hi Comment guifg=#8a8980 gui=italic
hi Conceal guifg=#766b90 gui=bold
hi Constant guifg=#cc6d00
hi CurSearch guifg=#545464 guibg=#b5cbd2 gui=bold
hi Cursor guifg=#f2ecbc guibg=#545464
hi CursorLine guibg=#e4d794
hi CursorLineNr guifg=#e98a00 guibg=#e7dba0 gui=bold
hi DapUIBreakpointsCurrentLine guifg=#77713f gui=bold
hi DapUIBreakpointsInfo guifg=#5a7785
hi DapUIDecoration guifg=#716e61
hi DapUIFloatBorder guifg=#716e61
hi DapUILineNumber guifg=#6693bf
hi DapUIModifiedValue guifg=#6693bf gui=bold
hi DapUIPlayPause guifg=#6f894e
hi DapUIRestart guifg=#6f894e
hi DapUISource guifg=#c84053
hi DapUIStepBack guifg=#6693bf
hi DapUIStepInto guifg=#6693bf
hi DapUIStepOut guifg=#6693bf
hi DapUIStepOver guifg=#6693bf
hi DapUIStop guifg=#e82424
hi DapUIStoppedThread guifg=#6693bf
hi DapUIThread guifg=#77713f
hi DapUIUnavailable guifg=#8a8980
hi DapUIWatchesEmpty guifg=#e82424
hi DapUIWatchesError guifg=#e82424
hi DapUIWatchesValue guifg=#77713f
hi DashboardCenter guifg=#77713f
hi DashboardDesc guifg=#77713f
hi DashboardFooter guifg=#8a8980
hi DashboardHeader guifg=#d7474b
hi DashboardIcon guifg=#766b90
hi DashboardKey guifg=#6693bf
hi DashboardShortCut guifg=#6693bf
hi Delimiter guifg=#4e8ca2
hi DiagnosticDeprecated guisp=#ffc0b9 gui=strikethrough
hi DiagnosticError guifg=#e82424
hi DiagnosticFloatingError guifg=#e82424
hi DiagnosticFloatingHint guifg=#5e857a
hi DiagnosticFloatingInfo guifg=#5a7785
hi DiagnosticFloatingOk guifg=#6f894e
hi DiagnosticFloatingWarn guifg=#e98a00
hi DiagnosticHint guifg=#5e857a
hi DiagnosticInfo guifg=#5a7785
hi DiagnosticOk guifg=#6f894e
hi DiagnosticSignError guifg=#e82424 guibg=#e7dba0
hi DiagnosticSignHint guifg=#5e857a guibg=#e7dba0
hi DiagnosticSignInfo guifg=#5a7785 guibg=#e7dba0
hi DiagnosticSignWarn guifg=#e98a00 guibg=#e7dba0
hi DiagnosticUnderlineError guisp=#e82424 gui=undercurl
hi DiagnosticUnderlineHint guisp=#5e857a gui=undercurl
hi DiagnosticUnderlineInfo guisp=#5a7785 gui=undercurl
hi DiagnosticUnderlineOk guisp=#b3f6c0 gui=underline
hi DiagnosticUnderlineWarn guisp=#e98a00 gui=undercurl
hi DiagnosticWarn guifg=#e98a00
hi DiffAdd guibg=#b7d0ae
hi DiffChange guibg=#d7e3d8
hi DiffDelete guifg=#d7474b guibg=#d9a594
hi DiffText guibg=#f9d791
hi Directory guifg=#4d699b
hi EndOfBuffer guifg=#f2ecbc
hi Error guifg=#e82424
hi ErrorMsg guifg=#e82424
hi Exception guifg=#c84053
hi FloatBorder guifg=#716e61 guibg=#d5cea3
hi FloatFooter guifg=#a09cac guibg=#d5cea3
hi FloatShadow guibg=#4f5258
hi FloatShadowThrough guibg=#4f5258
hi FloatTitle guifg=#766b90 guibg=#d5cea3 gui=bold
hi FloatermBorder guifg=#716e61 guibg=#f2ecbc
hi FoldColumn guifg=#a09cac guibg=#e7dba0
hi Folded guifg=#766b90 guibg=#e7dba0
hi Function guifg=#4d699b
hi GitSignsAdd guifg=#6e915f guibg=#e7dba0
hi GitSignsChange guifg=#de9800 guibg=#e7dba0
hi GitSignsDelete guifg=#d7474b guibg=#e7dba0
hi IblIndent guifg=#a09cac
hi IblScope guifg=#766b90
hi IblWhitespace guifg=#a09cac
hi Identifier guifg=#77713f
hi IncSearch guifg=#dcd7ba guibg=#e98a00
hi IndentBlanklineChar guifg=#a09cac
hi IndentBlanklineContextChar guifg=#766b90
hi IndentBlanklineContextStart guisp=#766b90 gui=underline
hi IndentBlanklineSpaceChar guifg=#a09cac
hi IndentBlanklineSpaceCharBlankline guifg=#a09cac
hi Italic gui=italic
hi Keyword guifg=#624c83 gui=italic
hi LazyProgressTodo guifg=#a09cac
hi LineNr guifg=#a09cac guibg=#e7dba0
hi LspCodeLens guifg=#8a8980
hi LspReferenceText guibg=#f9d791
hi LspReferenceWrite guibg=#f9d791 gui=underline
hi LspSignatureActiveParameter guifg=#e98a00
hi MatchParen guifg=#e98a00 gui=bold
hi MiniAnimateCursor gui=reverse,nocombine
hi MiniCompletionActiveParameter gui=underline
hi MiniCursorword gui=underline
hi MiniCursorwordCurrent gui=underline
hi MiniDepsHint guifg=#5e857a
hi MiniDepsInfo guifg=#5a7785
hi MiniDepsMsgBreaking guifg=#e98a00
hi MiniDiffSignAdd guifg=#6e915f guibg=#e7dba0
hi MiniDiffSignChange guifg=#de9800 guibg=#e7dba0
hi MiniDiffSignDelete guifg=#d7474b guibg=#e7dba0
hi MiniFilesFile guifg=#545464
hi MiniFilesTitle guifg=#766b90 guibg=#d5cea3 gui=bold
hi MiniFilesTitleFocused guifg=#545464 guibg=#d5cea3 gui=bold
hi MiniHipatternsFixme guifg=#f2ecbc guibg=#e82424 gui=bold
hi MiniHipatternsHack guifg=#f2ecbc guibg=#e98a00 gui=bold
hi MiniHipatternsNote guifg=#f2ecbc guibg=#5a7785 gui=bold
hi MiniHipatternsTodo guifg=#f2ecbc guibg=#5e857a gui=bold
hi MiniIconsAzure guifg=#6693bf
hi MiniIconsBlue guifg=#4d699b
hi MiniIconsCyan guifg=#597b75
hi MiniIconsGreen guifg=#6f894e
hi MiniIconsGrey guifg=#545464
hi MiniIconsOrange guifg=#cc6d00
hi MiniIconsPurple guifg=#624c83
hi MiniIconsRed guifg=#c84053
hi MiniIconsYellow guifg=#77713f
hi MiniIndentscopePrefix gui=nocombine
hi MiniIndentscopeSymbol guifg=#6693bf
hi MiniJump2dSpot guifg=#cc6d00 gui=bold,nocombine
hi MiniJump2dSpotAhead guifg=#5e857a guibg=#dcd5ac gui=nocombine
hi MiniJump2dSpotUnique guifg=#6693bf gui=bold,nocombine
hi MiniPickPrompt guifg=#4d699b guibg=#d5cea3
hi MiniStarterCurrent gui=nocombine
hi MiniStarterFooter guifg=#8a8980
hi MiniStarterItemPrefix guifg=#e98a00
hi MiniStarterQuery guifg=#5a7785
hi MiniStarterSection guifg=#6f894e
hi MiniStatuslineDevinfo guifg=#43436c guibg=#e7dba0
hi MiniStatuslineFileinfo guifg=#43436c guibg=#e7dba0
hi MiniStatuslineFilename guifg=#43436c guibg=#dcd5ac
hi MiniStatuslineModeCommand guifg=#f2ecbc guibg=#836f4a gui=bold
hi MiniStatuslineModeInsert guifg=#f2ecbc guibg=#6f894e gui=bold
hi MiniStatuslineModeNormal guifg=#d5cea3 guibg=#4d699b gui=bold
hi MiniStatuslineModeOther guifg=#f2ecbc guibg=#597b75 gui=bold
hi MiniStatuslineModeReplace guifg=#f2ecbc guibg=#cc6d00 gui=bold
hi MiniStatuslineModeVisual guifg=#f2ecbc guibg=#624c83 gui=bold
hi MiniTablineCurrent guifg=#43436c guibg=#e7dba0 gui=bold
hi MiniTablineHidden guifg=#766b90 guibg=#d5cea3
hi MiniTablineModifiedCurrent guifg=#e7dba0 guibg=#43436c gui=bold
hi MiniTablineModifiedHidden guifg=#d5cea3 guibg=#766b90
hi MiniTablineModifiedVisible guifg=#d5cea3 guibg=#766b90 gui=bold
hi MiniTablineTabpagesection guifg=#545464 guibg=#b5cbd2 gui=bold
hi MiniTablineVisible guifg=#766b90 guibg=#d5cea3 gui=bold
hi MiniTestEmphasis gui=bold
hi MiniTestFail guifg=#e82424 gui=bold
hi MiniTestPass guifg=#6f894e gui=bold
hi MiniTrailspace guibg=#d7474b
hi ModeMsg guifg=#e98a00 gui=bold
hi MoreMsg guifg=#5a7785
hi MsgArea guifg=#43436c
hi MsgSeparator guifg=#d5cea3 guibg=#d5cea3
hi NavicSeparator guifg=#545464
hi NavicText guifg=#545464
hi NeoTreeGitAdded guifg=#6e915f
hi NeoTreeGitConflict guifg=#e82424
hi NeoTreeGitDeleted guifg=#d7474b
hi NeoTreeGitModified guifg=#de9800
hi NeoTreeGitStaged guifg=#6e915f
hi NeoTreeRootName guifg=#77713f gui=bold
hi NeogitDiffAddHighlight guibg=#b7d0ae
hi NeogitDiffContextHighlight guibg=#d7e3d8
hi NeogitDiffDeleteHighlight guibg=#d9a594
hi NeogitHunkHeader guifg=#4d699b
hi NeogitHunkHeaderHighlight guifg=#cc6d00 guibg=#d7e3d8
hi NeotestAdapterName guifg=#c84053
hi NeotestDir guifg=#4d699b
hi NeotestExpandMarker guifg=#4e8ca2 gui=bold
hi NeotestFailed guifg=#e82424
hi NeotestFile guifg=#4d699b
hi NeotestFocused gui=bold,underline
hi NeotestIndent guifg=#766b90 gui=bold
hi NeotestMarked guifg=#e98a00 gui=italic
hi NeotestNamespace guifg=#4d699b
hi NeotestPassed guifg=#6f894e
hi NeotestRunning guifg=#de9800
hi NeotestSkipped guifg=#6693bf
hi NeotestTarget guifg=#c84053
hi NeotestTest guifg=#43436c
hi NeotestUnknown guifg=#8a8980
hi NeotestWatching guifg=#de9800
hi NeotestWinSelect guifg=#5e857a
hi NonText guifg=#a09cac
hi Normal guifg=#545464 guibg=#f2ecbc
hi NormalFloat guifg=#43436c guibg=#d5cea3
hi NotifyBackground guibg=#f2ecbc
hi Number guifg=#b35b79
hi OkMsg guifg=#b3f6c0
hi Operator guifg=#836f4a
hi Pmenu guifg=#43436c guibg=#c7d7e0
hi PmenuExtra guifg=#766b90 guibg=#c7d7e0
hi PmenuExtraSel guifg=#766b90 guibg=#9fb5c9
hi PmenuKind guifg=#43436c guibg=#c7d7e0
hi PmenuKindSel guifg=#43436c guibg=#9fb5c9
hi PmenuMatch gui=bold
hi PmenuMatchSel gui=bold
hi PmenuSbar guibg=#c7d7e0
hi PmenuSel guibg=#9fb5c9
hi PmenuThumb guibg=#b5cbd2
hi PreProc guifg=#c84053
hi QuickFixLine guibg=#e7dba0
hi RedrawDebugClear guibg=#6b5300
hi RedrawDebugComposed guibg=#005523
hi RedrawDebugNormal gui=reverse
hi RedrawDebugRecompose guibg=#590008
hi Removed guifg=#ffc0b9
hi Search guifg=#545464 guibg=#b5cbd2
hi SignColumn guifg=#766b90 guibg=#e7dba0
hi Special guifg=#6693bf
hi SpecialKey guifg=#766b90
hi SpellBad guisp=#e82424 gui=undercurl
hi SpellCap guisp=#e98a00 gui=undercurl
hi SpellLocal guisp=#e98a00 gui=undercurl
hi SpellRare guisp=#e98a00 gui=undercurl
hi Statement guifg=#624c83 gui=bold
hi StatusLine guifg=#43436c guibg=#d5cea3
hi StatusLineNC guifg=#a09cac guibg=#d5cea3
hi String guifg=#6f894e
hi Substitute guifg=#545464 guibg=#d7474b
hi TabLine guifg=#766b90 guibg=#d5cea3
hi TabLineFill guibg=#f2ecbc
hi TabLineSel guifg=#43436c guibg=#e7dba0
hi TelescopeBorder guifg=#716e61 guibg=#f2ecbc
hi TelescopeTitle guifg=#766b90
hi TermCursor gui=reverse
hi Title guifg=#4d699b gui=bold
hi Todo guifg=#dcd7ba guibg=#5a7785 gui=bold
hi TreesitterContextLineNumber guifg=#766b90 guibg=#e7dba0
hi TroubleIndent guifg=#a09cac
hi TroublePos guifg=#766b90
hi Type guifg=#597b75
hi Underlined guifg=#6693bf gui=underline
hi Visual guibg=#c9cbd1
hi WarningMsg guifg=#e98a00
hi Whitespace guifg=#a09cac
hi WinBar guifg=#43436c
hi WinBarNC guifg=#43436c
hi WinSeparator guifg=#d5cea3
hi debugBreakpoint guifg=#6693bf guibg=#e7dba0
hi debugPC guibg=#d9a594
hi diffAdded guifg=#6e915f
hi diffChanged guifg=#de9800
hi diffDeleted guifg=#d7474b
hi diffNewFile guifg=#6e915f
hi diffOldFile guifg=#d7474b
hi diffRemoved guifg=#d7474b
hi healthError guifg=#e82424
hi healthSuccess guifg=#6f894e
hi healthWarning guifg=#e98a00
hi markdownCode guifg=#6f894e
hi markdownCodeBlock guifg=#6f894e

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
