return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- Harpoon shortcuts
          ["<leader>a"] = {
            function() require("harpoon.mark").add_file() end,
            desc = "Add file to harpoon",
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
          ["<C-b>"] = {
            function() require("harpoon.ui").nav_file(4) end,
          },
          ["<leader>fp"] = { "<cmd>let @+=expand('%:p')<CR>", desc = "Copy file path" }, -- change description but the same command
          ["<leader>fP"] = { "<cmd>let @+=expand('%:~:.')<CR>", desc = "Copy file abs path" }, -- change description but the same command
          ["<leader>fR"] = {
            function() require("telescope").extensions.live_grep_args.live_grep_args() end,
            desc = "Open live grep",
          }, -- Live grep
          ["<leader>fB"] = {
            function() require("telescope-live-grep-args.shortcuts").grep_word_under_cursor() end,
            desc = "Open live grep word under cursor",
          }, -- Live current word

          ["<leader>esl"] = { "<cmd>EslintFixAll<CR>", desc = "Eslint Fix All" }, -- change description but the same command
          -- Utils
          ["<leader>k"] = { "<cmd>cnext<CR>zz", desc = "Quick fix next" },
          ["<leader>j"] = { "<cmd>cprev<CR>zz", desc = "Quick fix prev" },
          ["<leader>dd"] = { "<cmd>ccl<CR>", desc = "Close Quick fix" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        x = {
          ["<leader>p"] = { '[["_dP]]', desc = "Paste whitout overriding register" },
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
