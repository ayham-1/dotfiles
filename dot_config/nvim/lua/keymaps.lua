-- General Keymaps and Plugin Specific
-- plug in specific is added when there is no separate file.

-- general
vim.keymap.set("n", "<leader>ll", ":Lazy<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>s", ":update<CR>")

vim.keymap.set("v", "<C-j>", ":m .+1")
vim.keymap.set("v", "<C-k>", ":m .-2")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<leader>k", ":m .-2<CR>==")
vim.keymap.set("n", "<leader>j", ":m .+1<CR>==")

vim.keymap.set("n", "<leader>ac", ":center<CR>")
vim.keymap.set("n", "<leader>ar", ":right<CR>")
vim.keymap.set("n", "<leader>al", ":left<CR>")

vim.keymap.set("n", "<leader>bb", ":buffers<CR>")
vim.keymap.set("n", "<leader>bn", ":bp<CR>")
vim.keymap.set("n", "<leader>bp", ":bn<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")

vim.keymap.set("n", "<leader>ws", ":split<CR>")
vim.keymap.set("n", "<leader>wvs", ":vsplit<CR>")
vim.keymap.set("n", "<leader>wc", ":close<CR>")

-- formatter
vim.keymap.set("n", "<leader>F", ":FormatWrite<CR>")

-- trouble 
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
