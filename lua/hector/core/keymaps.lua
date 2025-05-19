-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- Richart keymaps
vim.keymap.set("i", "<C-s>", "<Esc>:wa<CR>")
vim.keymap.set("n", "<C-s>", "<Esc>:wa<CR>")
vim.keymap.set("n", "<C-c>", ":q<CR>")

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
keymap.set("n", "<Esc>", "<Esc>:nohlsearch<CR>", { silent = true })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

--ToggleTerm
keymap.set("n", "<C-t>", "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", { silent = true, desc = "Toggle Terminal" })

keymap.set(
  "i",
  "<C-t>",
  "<Esc><Cmd>exe v:count1 . 'ToggleTerm'<CR>",
  { silent = true, desc = "Toggle Terminal from insert" }
)

keymap.set(
  "t",
  "<C-t>",
  [[<C-\><C-n><Cmd>exe v:count1 . "ToggleTerm"<CR>]],
  { silent = true, desc = "Toggle Terminal from terminal mode" }
)

-- Floating terminal
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle Floating Terminal" }) -- Floating Terminal
keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Toggle Horizontal Terminal" }) -- Terminal horizontal
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Toggle Vertical Terminal" }) -- Terminal vertical
