return {
  -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  event = 'VeryLazy',
  -- Enable `lukas-reineke/indent-blankline.nvim`
  -- See `:help ibl`
  main = 'ibl',
  config = function()
    require('ibl').setup {
      indent = {
        char = '▏', -- This is a slightly thinner char than the default one, check :help ibl.config.indent.char
      },
    }
  end,
}
