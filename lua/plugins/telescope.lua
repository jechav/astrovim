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

    local telescope = require "telescope"
    -- then load the extension
    telescope.load_extension "live_grep_args"
  end,
}
