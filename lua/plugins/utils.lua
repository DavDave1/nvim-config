return {
    -- Easy comment toggling shortcuts
    {
        "numToStr/Comment.nvim",
        opts = {},
        lazy = false,
    },

    -- Undotree
    {
        "mbbill/undotree",
        configure = function()
            require('undotree').setup()

            vim.keymap.set('n', '<leader>fu', ":UndotreeToggle<CR>")
        end
    },

    -- Automatic parent pairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },

    -- Indentation guidelines
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },

    -- Git integration
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
    },

    -- Session restore
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        opts = {},
        config = function()
            vim.api.nvim_set_keymap('n', '<leader>pr', [[<cmd>lua require('persistence').load()<cr>]], {})
        end
    },

}
