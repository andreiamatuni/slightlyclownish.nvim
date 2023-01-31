-- Colorscheme for lualine

local colors = {
  bg = "#171717",
  fg = "#D0D0D0",
  normal_bg = "#417d41",
  normal_b = "#353535",
  normal_c = "#555555",
  insert = "#c77e30",
  visual = "#66315e",
  command = "#a83619"
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.normal_bg, gui = "bold" },
    b = { fg = colors.fg, bg = colors.normal_b},
    c = { fg = colors.fg, bg = colors.bg},
  },
  insert = { a = { fg = colors.bg, bg = colors.insert, gui = "bold" } },
  visual = { a = { fg = colors.fg, bg = colors.visual, gui = "bold" } },
  command = { a = { fg = colors.fg, bg = colors.command, gui = "bold" } },
  replace = { a = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
  inactive = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
}
