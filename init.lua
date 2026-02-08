vim.opt.wrap = false
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.opt.winborder = "rounded"

local function available_message()
    vim.notify("command available", vim.log.levels.WARN)
end

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>g', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>G', vim.diagnostic.goto_prev)

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d')

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>lf', vim.lsp.buf.format)



-- available commands
vim.keymap.set('n', '<leader>q', available_message)
vim.keymap.set('n', '<leader>w', available_message)
vim.keymap.set('n', '<leader>f', available_message)
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
vim.keymap.set('n', '<leader>h', available_message)
vim.keymap.set('n', '<leader>,', available_message)
vim.keymap.set('n', '<leader>.', available_message)
vim.keymap.set('n', '<leader>/', available_message)

vim.pack.add({
    { src = 'https://github.com/folke/tokyonight.nvim.git' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/nvim-mini/mini.pick.git' },

    { src = 'https://github.com/mfussenegger/nvim-dap.git' },
})

vim.lsp.enable({ "lua_ls", "zls" })

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
