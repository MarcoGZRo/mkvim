return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	-- TODO: config diagnostic bufferline 
	config = function()
		require("bufferline").setup{}
	end,
}
