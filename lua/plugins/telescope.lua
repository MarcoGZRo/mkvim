return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = {
		'nvim-lua/plenary.nvim',
		"nvim-telescope/telescope-live-grep-args.nvim",
		'nvim-telescope/telescope-file-browser.nvim',
	},
    config = function()
        -- NOTE: Init telescope and live grep
        local telescope = require('telescope')
        telescope.setup({
            telescope.load_extension("live_grep_args")
        })



        -- builtin
        local builtin = require("telescope.builtin")



        -- Keys
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent Files" })
        vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Grep Word" })
        vim.keymap.set("n", "<leader>fc", builtin.git_commits, { desc = "Git Commits" })
        vim.keymap.set("n", "<leader>fs", builtin.git_status, { desc = "Git Status" })
        vim.keymap.set("n", "<leader>fgf", builtin.git_files, { desc = "Git Files" })
    end,
}
