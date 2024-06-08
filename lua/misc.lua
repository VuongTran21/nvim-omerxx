-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- highlight
vim.cmd [[
  augroup highlight_yank
      autocmd!
      autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
  augroup END
]]
