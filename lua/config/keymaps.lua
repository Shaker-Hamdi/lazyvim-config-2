-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<C-d>", "<C-d>zz", { desc = "Center cursor in screen after jumpting down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Center cursor in screen after jumpting up" })

map("n", "n", "nzz", { desc = "Center cursor in screen after going to next selection" })
map("n", "N", "Nzz", { desc = "Center cursor in screen after going to previous selection" })

map("v", "<leader>p", "\"_dP", { desc = "Paste from void" })
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move up" })

map("i", "<A-j>", "<esc>A", { desc = "Go to end of line in insert mode" })
