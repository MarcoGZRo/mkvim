return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-file-browser.nvim',
	},
	config = function()
		require('telescope').setup()
	end,
	keys = {
		{
			'<leader>ff',
			function()
				require('telescope.builtin').find_files()
			end,
			desc = 'Telescope find files',
		},
		{
			'<leader>fb',
			function()
				require('telescope.builtin').buffers()
			end,
			desc = 'Telescope buffers',
		},
		{
			'<leader>gf',
			function()
				require('telescope.builtin').git_files({ show_untracked = true })
			end,
			desc = 'Telescope git files',
		},
		{
			'<leader>gs',
			function()
				require('telescope.builtin').git_status()
			end,
			desc = 'Telescope git status',
		},
		{
			'<leader>gc',
			function()
				require('telescope.builtin').git_commits()
			end,
			desc = 'Telescope git commits',
		},
		{
			'<leader>bb',
			function()
				require('telescope').extensions.file_browser.file_browser({ path = '%:h:p', select_buffer = true })
			end,
			desc = 'Telescope file browser',
		}
	}
}
