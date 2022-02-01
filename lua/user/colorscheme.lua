-- colorschemes installeds by packer:
-- onedark, gruvbox, tokyonight, PaperColor

-- default colorscheme
local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found!")
  return
end