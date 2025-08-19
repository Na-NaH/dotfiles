vim.g.mapleader = " " -- mapleader to space


-- Search
vim.keymap.set('n', 'n', 'nzzzv', { desc = "next result of search & middle cursor"})
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "prev result of search & middle cursor"})


-- Move lines up/down
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })


-- Close terminal without closing the buffer
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Open horizontal terminal split
vim.api.nvim_set_keymap('n', '<C-w>ts', ':cd %:p:h | split | terminal<CR>', { noremap = true, silent = true })
-- Open vertical terminal split
vim.api.nvim_set_keymap('n', '<C-w>tv', ':cd %:p:h | vsplit | terminal<CR>', { noremap = true, silent = true })



