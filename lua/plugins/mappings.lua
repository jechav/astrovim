return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["<leader>a"] = {
            function() require("harpoon.mark").add_file() end,
          },
          ["<C-e>"] = {
            function() require("harpoon.ui").toggle_quick_menu() end,
          },
          ["<C-h>"] = {
            function() require("harpoon.ui").nav_file(1) end,
          },
          ["<C-g>"] = {
            function() require("harpoon.ui").nav_file(2) end,
          },
          ["<C-n>"] = {
            function() require("harpoon.ui").nav_file(3) end,
          },
          ["<C-s>"] = {
            function() require("harpoon.ui").nav_file(4) end,
          },
          ["<leader>fp"] = { "<cmd>let @+=expand('%:p')<CR>", desc = "Copy file path" }, -- change description but the same command
          ["<leader>fP"] = { "<cmd>let @+=expand('%:~:.')<CR>", desc = "Copy file abs path" }, -- change description but the same command
          ["<leader>esl"] = { "<cmd>EslintFixAll<CR>", desc = "Eslint Fix All" }, -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
  -- {
  --   "AstroNvim/astrolsp",
  --   ---@type AstroLSPOpts
  --   opts = {
  --     mappings = {
  --       n = {
  --         -- this mapping will only be set in buffers with an LSP attached
  --         K = {
  --           function()
  --             vim.lsp.buf.hover()
  --           end,
  --           desc = "Hover symbol details",
  --         },
  --         -- condition for only server with declaration capabilities
  --         gD = {
  --           function()
  --             vim.lsp.buf.declaration()
  --           end,
  --           desc = "Declaration of current symbol",
  --           cond = "textDocument/declaration",
  --         },
  --       },
  --     },
  --   },
  -- },
}
