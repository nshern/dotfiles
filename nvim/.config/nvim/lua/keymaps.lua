vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>[", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>]", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>", { desc = "Delete current buffer" })
vim.keymap.set("n", "<leader>tl", "<CMD>set background=light<CR>", { desc = "Set background to light" })
vim.keymap.set("n", "<leader>td", "<CMD>set background=dark<CR>", { desc = "Set background to dark" })
vim.keymap.set(
	"n",
	"<leader>tt",
	"<CMD>hi Normal guibg=NONE ctermbg=NONE<CR>",
	{ desc = "Set background to transparent" }
)

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<leader>sf", "<CMD>Pick files<CR>", { desc = "Pick files" })
vim.keymap.set("n", "<leader>sb", "<CMD>Pick buffers<CR>", { desc = "Pick buffers" })
vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep live<CR>", { desc = "Pick grep" })
vim.keymap.set("n", "<leader>sg", "<CMD>Pick grep live<CR>", { desc = "Pick grep" })

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
vim.keymap.set("n", "re", "<CMD>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>")
