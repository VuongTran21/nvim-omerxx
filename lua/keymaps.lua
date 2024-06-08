local opts = { noremap = true, silent = true }
local noremapopts = { noremap = true }

-- Directory navigation
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>b", ":NvimTreeFindFile<CR>", opts)

-- Moving, indent text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = false })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = false })

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', noremapopts)

-- greatest remap ever from ThePrimagen
vim.keymap.set("x", "<leader>p", '"_dP', noremapopts)
vim.keymap.set("n", "<leader>y", '"+y', noremapopts)
vim.keymap.set("v", "<leader>y", '"+y', noremapopts)
vim.keymap.set("n", "<leader>Y", '"+Y', { noremap = false })
vim.keymap.set("n", "<leader>d", '"_d', noremapopts)
vim.keymap.set("v", "<leader>d", '"_d', noremapopts)

-- format
vim.keymap.set("n", "<leader>lf", ":Format<CR>")
