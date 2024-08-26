require('neoscroll').setup({
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,       -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,             -- Function to run after the scrolling animation ends
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<M-k>'] = {'scroll', {'-vim.wo.scroll', 'true', '80'}}
t['<M-j>'] = {'scroll', { 'vim.wo.scroll', 'true', '80'}}
t['<PageUp>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '80'}}
t['<PageDown>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '80'}}
t['<Up>'] = {'scroll', {'-4', 'true', '80'}}
t['<Down>'] = {'scroll', { '4', 'true', '80'}}
t['zt']    = {'zt', {'80'}}
t['zz']    = {'zz', {'80'}}
t['zb']    = {'zb', {'80'}}

require('neoscroll.config').set_mappings(t)
