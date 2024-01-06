local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--- Window navigation
map('n', '<A-l>', '<C-w>l', opts)
map('n', '<A-h>', '<C-w>h', opts)
map('n', '<A-j>', '<C-w>j', opts)
map('n', '<A-k>', '<C-w>k', opts)

-- Tabs navigation
map('n', '<Tab>', ':BufferNext<CR>', opts)
map('n', '<S-Tab>', ':BufferPrevious<CR>', opts)


-- Which key descriptions
local wk = require('which-key')

wk.register({
        c = {
            name = "code",
            a = "action",
            f = "format",
            h = "hover",
            r = "rename symbol",
        },
        d = {
            name = "diagnostics",
            d = "open",
            n = "next",
            p = "prev",
        },
        f = {
            name = "find",
            b = { "<cmd>Telescope buffers<cr>", "buffers" },
            f = { "<cmd>Telescope find_files<cr>", "find" },
            g = { "<cmd>Telescope live_grep<cr>", "grep" },
        },
        g = {
            name = "goto",
            d = "definition",
            D = "declaration",
            i = "implementation",
            r = "references",
        },
        p = {
            name = "project",
            r = "restore",
        },
        w = {
            name = "window",
            c = { ":close<CR>", "close" },
            s = { ":split<CR>", "split" },
            v = { ":vsplit<CR>", "v split" },

        },
    },
    { prefix = '<leader>' }
)
