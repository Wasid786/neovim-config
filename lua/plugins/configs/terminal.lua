-- terminal.lua

-- Open terminal with <Space> + t + t
vim.api.nvim_set_keymap('n', '<Space>tt', ':ToggleTerm<CR>', { noremap = true, silent = true })

-- Switch between terminal and current file with <Space> + t + s
vim.api.nvim_set_keymap('n', '<Space>ts', ':ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })

-- Optional: Customize the terminal toggle to close when it's open and open when it's closed
-- This requires you to have the 'toggleterm' plugin installed
require("toggleterm").setup({
  size = 20, -- Set the size of the terminal
  open_mapping = [[<Space>tt]], -- Keybinding to open the terminal
  direction = 'float', -- Terminal direction (can also be 'horizontal', 'vertical', or 'tab')
  shade_filetypes = {},
  shading_factor = 2,
  start_in_insert = true, -- Start in insert mode when opening the terminal
  insert_mappings = true, -- Enable insert mappings
})
