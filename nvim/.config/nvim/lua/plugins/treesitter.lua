return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
        'nvim-treesitter/nvim-treesitter-context',
    },
    build = ":TSUpdate",
    config = function ()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = { 'javascript', 'lua', 'tsx', 'typescript', 'vim', 'vimdoc' },

            sync_install = false,
            auto_install = true,

            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
