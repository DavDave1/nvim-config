local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--- Window navigation
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

-- Window splitting
map('n', 'ss', ':split<CR>', opts)
map('n', 'vs', ':vsplit<CR>', opts)
map('n', 'sc', ':close<CR>', opts)

-- Tabs navigation
map('n', '<Tab>', ':BufferNext<CR>', opts)
map('n', '<S-Tab>', ':BufferPrevious<CR>', opts)
map('n', '<C-p>', ':BufferPick<CR>', opts)
map('n', '<C-q>', ':BufferClose<CR>', opts)


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
            name = "file",
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
    },
    { prefix = '<leader>' }
)
