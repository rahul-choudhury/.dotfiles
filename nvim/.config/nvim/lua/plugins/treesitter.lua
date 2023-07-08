return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
        'nvim-treesitter/nvim-treesitter-context',
        'JoosepAlviste/nvim-ts-context-commentstring',
    },
    build = ":TSUpdate",
    config = function ()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { 'css', 'html', 'javascript', 'lua', 'tsx', 'typescript', 'vim', 'vimdoc' },

            sync_install = false,
            auto_install = true,

            highlight = { enable = true },
            indent = { enable = true },
            context_commentstring = {
                enable = true,
                enable_autocmd = false,
            },
        }
    end
}
