vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.showcmd = false

vim.opt.wildmenu = true
vim.opt.wildmode = { 'longest', 'list', 'full' }

vim.opt.clipboard = 'unnamedplus'

vim.opt.termguicolors = true
vim.opt.background = 'dark'

local transparent_groups = {
  'Normal',
  'NormalNC',
  'NormalFloat',
  'SignColumn',
  'FoldColumn',
  'LineNr',
  'CursorLineNr',
  'EndOfBuffer',
  'VertSplit',
  'WinSeparator',
  'StatusLine',
  'StatusLineNC',
  'TabLine',
  'TabLineFill',
  'Pmenu',
  'PmenuSbar',
}

vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    for _, group in ipairs(transparent_groups) do
      local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
      hl.bg = nil
      vim.api.nvim_set_hl(0, group, hl)
    end
  end,
})

vim.cmd.colorscheme('guts')
