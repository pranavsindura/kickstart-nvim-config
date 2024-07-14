return {
  'max397574/better-escape.nvim',
  event = 'InsertCharPre',
  opts = {
    timeout = 300,
    default_mappings = false,
    mappings = {
      i = {
        j = {
          k = '<Esc>',
          j = '<Esc>',
        },
      },
    },
  },
}
