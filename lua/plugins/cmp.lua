return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  dependencies = {
    "mlaursen/vim-react-snippets",
  },
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    -- local cmp = require("cmp")
    require("vim-react-snippets").lazy_load()
  end,
}
