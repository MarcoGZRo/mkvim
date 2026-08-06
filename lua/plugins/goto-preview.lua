return {
    --[[
    NOTE:
    Plugin: goto-preview
    GitHub: https://github.com/rmagatti/goto-preview
    A plugin for LSPs that allows visualizing implementations, declarations, references, definitions, and type definitions.
    My key mappings are in options.lua
    ]]
    "rmagatti/goto-preview",
    dependencies = { "rmagatti/logger.nvim" },
    event = "BufEnter",
    config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
    default_mappings = false
}
