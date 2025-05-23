return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  opts = function(_, opts)
    local actions = require "telescope.actions"

    opts.defaults.mappings.i["<Esc>"] = actions.close

    opts.defaults.layout_config = {
      horizontal = {
        width = 0.99,
        prompt_position = "top",
        mirror = false,
        preview_width = 0.65,
      },
    }

    opts.defaults.layout_strategy = "horizontal"

    -- 🧠 Enable cache_picker globally
    opts.defaults.cache_picker = {
      num_pickers = 120, -- Optional: cache the 5 most recent pickers
    }

    local telescope = require "telescope"
    -- then load the extension
    telescope.load_extension "live_grep_args"
  end,
}
