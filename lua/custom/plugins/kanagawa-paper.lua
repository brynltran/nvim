return {
  'thesimonho/kanagawa-paper.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
  },
  config = function()
    vim.cmd.colorscheme 'kanagawa-paper'
  end,
}
