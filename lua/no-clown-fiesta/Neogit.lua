local Neogit = {
  NeogitNotificationInfo = { fg = C.sign_add },
  NeogitNotificationWarning = { fg = C.warning_orange },
  NeogitNotificationError = { fg = C.sign_delete },
  NeogitDiffAddHighlight = { fg = C.sign_add, bg = C.accent },
  NeogitDiffDeleteHighlight = { fg = C.sign_delete, bg = C.accent },
  NeogitDiffContextHighlight = { fg = C.fg, bg = C.accent },
  NeogitHunkHeader = { fg = C.fg, bg = C.gray },
  NeogitHunkHeaderHighlight = { fg = C.fg, bg = C.gray_blue },
}

return Neogit