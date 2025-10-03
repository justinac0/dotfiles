print('Hello Justin, get coding!')

require('plugins')
require('colorscheme')
require('keymaps')
--require('lsp') -- mason handles our lsps
require('options')

require("toggleterm").setup{
   open_mapping = [[<c-\>]],
   direction = 'float',
   float_opts = {
    border = 'double',
    width = 80,
    height = 25,
    winblend = 3,
    title_pos = 'center',
   },
}
