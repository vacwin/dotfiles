vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.showcmd = false

vim.opt.wildmenu = true
vim.opt.wildmode = { 'longest', 'list', 'full' }

vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'

vim.opt.termguicolors = true

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

-- the active light/dark mode is written by ~/dotfiles/scripts/theme
local function detect_background()
  local state = (os.getenv('XDG_STATE_HOME') or (os.getenv('HOME') .. '/.local/state')) .. '/theme/mode'
  local f = io.open(state, 'r')
  if not f then
    return vim.o.background
  end
  local mode = f:read('*l') or ''
  f:close()
  if mode == 'light' or mode == 'dark' then
    return mode
  end
  return vim.o.background
end

vim.o.background = detect_background()

local function apply_colorscheme()
  -- nvim/colors/mono.vim is generated from themes/mono.conf by scripts/theme
  vim.cmd.colorscheme('mono')
end

-- follow terminal light/dark switches while running
vim.api.nvim_create_autocmd('OptionSet', {
  pattern = 'background',
  callback = apply_colorscheme,
})

apply_colorscheme()
