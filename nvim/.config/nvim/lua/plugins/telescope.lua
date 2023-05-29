return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
    },
    keys = {
        { '<leader>sf', "<cmd>Telescope find_files<cr>" },
        { '<leader>sg', "<cmd>Telescope live_grep<cr>" },
        { '<leader>gf', "<cmd>Telescope git_files<cr>" },
        { '<leader>sh', "<cmd>Telescope help_tags<cr>" },
        { '<leader>?', "<cmd>Telescope oldfiles<cr>" },
        { '<leader><space>', "<cmd>Telescope buffers<cr>" },
    },
    config = function ()
        pcall(require('telescope').load_extension, 'fzf')
    end
}
