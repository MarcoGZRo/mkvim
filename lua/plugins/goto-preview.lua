return {
    -- NOTE: Plugin: goto-preview
    -- NOTE: https://github.com/rmagatti/goto-preview
    -- NOTE: A plugin for LSPs that allows visualizing implementations, declarations, references, definitions, and type definitions.
    -- NOTE: My key mappings are in options.lua
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },
  event = "BufEnter",
    config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
    default_mappings = false
}
