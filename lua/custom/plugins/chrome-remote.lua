return {
  'carlosrocha/chrome-remote.nvim',
  config = function()
    require('chrome-remote').setup {
      connection = {
        host = 'localhost',
        port = 9222,
      },
    }
  end,
}
