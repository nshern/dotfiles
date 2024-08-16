vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>[", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>]", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>ba", "<CMD>bufdo bd<CR>", { desc = "Delete all buffers" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<leader>sb", "<CMD>Pick buffers<CR>", { desc = "Pick buffers" })
vim.keymap.set("n", "<leader>sf", "<CMD>Pick diagnostic<CR>", { desc = "Pick diagnostic" })
vim.keymap.set("n", "<leader>ss", "<CMD>Pick spellsuggest<CR>", { desc = "Pick spellsuggest" })
vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep live<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>svc", "<CMD>Pick git_commits<CR>", { desc = "Pick git commits" })
vim.keymap.set("n", "<leader>svb", "<CMD>Pick git_branches<CR>", { desc = "Pick git branches" })
vim.keymap.set("n", "<leader>svh", "<CMD>Pick git_hunks<CR>", { desc = "Pick git hunks" })
vim.keymap.set("n", "<leader>svf", "<CMD>Pick git_files<CR>", { desc = "Pick git files" })
vim.keymap.set("n", "<leader>sh", "<CMD>Pick help<CR>", { desc = "Pick help" })
vim.keymap.set("n", "<leader>sk", "<CMD>Pick keymaps<CR>", { desc = "Pick keymaps" })
vim.keymap.set("n", "<leader>so", "<CMD>Pick oldfiles<CR>", { desc = "Pick old files" })

vim.keymap.set("n", "<leader>li", "<CMD>LspInfo<CR>", { desc = "Lsp Info" })
vim.keymap.set("n", "<leader>lr", "<CMD>LspRestart<CR>", { desc = "Lsp Restart" })

-- Open Mini files for current file location
vim.keymap.set("n", "<leader>-", "<CMD>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>")

vim.keymap.set("n", "-", "<CMD>lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<S-l>", "<CMD>bn<CR>", { desc = "Jump to next buffer" })
vim.keymap.set("n", "<S-h>", "<CMD>bp<CR>", { desc = "Jump to previous buffer" })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>os", "<CMD>lua MiniStarter.open()<CR>", { desc = "Open starter" })

-- lsp
vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "ca", "<CMD>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>re", "<CMD>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gl", "<CMDcd %p:h<CR>")

-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })

vim.keymap.set("n", "<leader>du", "<CMD>DepsUpdate<CR>", { desc = "Deps update" })
vim.keymap.set("n", "<leader>dc", "<CMD>DepsClean<CR>", { desc = "Deps clean" })
vim.keymap.set("n", "<leader>da", "<CMD>DepsAdd<CR>", { desc = "Deps add" })
