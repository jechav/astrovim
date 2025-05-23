-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.laravel" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.git.neogit" },
  -- { import = "astrocommunity.pack.python" },
  -- import/override with your plugins folder
}
