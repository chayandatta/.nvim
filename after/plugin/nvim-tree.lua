vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        side = 'right',
        adaptive_size = true
    }
})

local fixBufferLineSeparator = function()
    vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", vim.api.nvim_get_hl_by_name('NvimTreeWinSeparator', true))
end

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = fixBufferLineSeparator,
})

fixBufferLineSeparator()

vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')
