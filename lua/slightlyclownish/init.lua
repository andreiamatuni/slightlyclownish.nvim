local M = {}

function M.setup(options)
  local settings = require "slightlyclownish.settings"
  if options then
    settings.set(options)
  end
end

function M.load()
  local settings = require "slightlyclownish.settings"
  local options = settings.options

  vim.api.nvim_command "hi clear"
  if vim.fn.exists "syntax_on" then
    vim.api.nvim_command "syntax reset"
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "slightlyclownish"

  local util = require "slightlyclownish.util"
  local palette = require "slightlyclownish.palette"
  local highlights = require("slightlyclownish.groups.highlights").highlight(
    palette,
    options
  )

  local alpha = require("slightlyclownish.groups.alpha").highlight(palette)
  local git = require("slightlyclownish.groups.git").highlight(palette)
  local hop = require("slightlyclownish.groups.hop").highlight(palette)
  local lir = require("slightlyclownish.groups.lir").highlight(palette)
  local lsp = require("slightlyclownish.groups.lsp").highlight(palette)
  local markdown = require("slightlyclownish.groups.markdown").highlight(palette)
  local neogit = require("slightlyclownish.groups.neogit").highlight(palette)
  local nvimtree = require("slightlyclownish.groups.nvim-tree").highlight(palette)
  local nvimcmp = require("slightlyclownish.groups.nvim-cmp").highlight(palette)
  local statusline = require("slightlyclownish.groups.statusline").highlight(palette)
  local telescope = require("slightlyclownish.groups.telescope").highlight(palette)
  local treesitter = require("slightlyclownish.groups.treesitter").highlight(
    palette,
    options
  )
  local whichkey = require("slightlyclownish.groups.whichkey").highlight(palette)

  local skeletons = {
    alpha,
    git,
    hop,
    highlights,
    lir,
    lsp,
    markdown,
    neogit,
    nvimtree,
    nvimcmp,
    statusline,
    telescope,
    treesitter,
    whichkey,
  }

  for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
  end
end

return M
