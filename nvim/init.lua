vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("options")
require("lazy").setup("plugins")
require("mappings")

vim.cmd("colorscheme deep-sea")

local function transparent_bg()
  vim.cmd([[
    highlight Normal       ctermbg=NONE guibg=NONE
    highlight NormalNC     ctermbg=NONE guibg=NONE
    highlight EndOfBuffer  ctermbg=NONE guibg=NONE
    highlight SignColumn   ctermbg=NONE guibg=NONE
    highlight LineNr       ctermbg=NONE guibg=NONE
    highlight CursorColumn ctermbg=NONE guibg=NONE
    highlight NormalFloat  ctermbg=NONE guibg=NONE
    highlight FloatBorder  ctermbg=NONE guibg=NONE
    highlight Pmenu        ctermbg=NONE guibg=NONE
    highlight PmenuSel     ctermbg=NONE guibg=NONE
  ]])
end

vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  callback = transparent_bg,
})
