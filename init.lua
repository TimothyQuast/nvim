vim.opt.wrap = false
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.signcolumn = "yes"

vim.opt.winborder = "rounded"

local function available_message()
    vim.notify("command available", vim.log.levels.WARN)
end

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>g', function() vim.diagnostic.jump({ count = 1, float = true }) end)
vim.keymap.set('n', '<leader>G', function() vim.diagnostic.jump({ count = -1, float = true }) end)

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d')

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>lf', vim.lsp.buf.format)

vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
vim.keymap.set('i', '<C-a>', "<C-x><C-o>", {noremap = true})


-- available commands
vim.keymap.set('n', '<leader>q', available_message)
vim.keymap.set('n', '<leader>w', available_message)
vim.keymap.set('n', '<leader>b', available_message)
vim.keymap.set('n', '<leader>a', available_message)
vim.keymap.set('n', '<leader>r', available_message)
vim.keymap.set('n', '<leader>s', available_message)
vim.keymap.set('n', '<leader>t', available_message)
vim.keymap.set('n', '<leader>z', available_message)
vim.keymap.set('n', '<leader>x', available_message)
vim.keymap.set('n', '<leader>c', available_message)
vim.keymap.set('n', '<leader>d', available_message)
vim.keymap.set('n', '<leader>v', available_message)
vim.keymap.set('n', '<leader>j', available_message)
vim.keymap.set('n', '<leader>u', available_message)
vim.keymap.set('n', '<leader>\'', available_message)
vim.keymap.set('n', '<leader>m', available_message)
vim.keymap.set('n', '<leader>n', available_message)
vim.keymap.set('n', '<leader>i', available_message)
vim.keymap.set('n', '<leader>o', available_message)
vim.keymap.set('n', '<leader>k', available_message)
vim.keymap.set('n', '<leader>,', available_message)
vim.keymap.set('n', '<leader>.', available_message)
vim.keymap.set('n', '<leader>/', available_message)

vim.pack.add({
    { src = 'https://github.com/folke/tokyonight.nvim.git' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/nvim-mini/mini.pick.git' },

    { src = 'https://github.com/mason-org/mason.nvim.git' },
    { src = 'https://github.com/mfussenegger/nvim-dap.git' },
})

require "mini.pick".setup()
require "mason".setup()

vim.lsp.enable({ "lua_ls", "zls", "ruff", "svelte"})
vim.cmd("set completeopt+=noselect")

vim.cmd("colo tokyonight-moon")

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            }
        }
    }
})

