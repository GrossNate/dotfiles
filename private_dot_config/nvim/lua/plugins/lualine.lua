return {
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			local filename = {
				"filename",
				path = 1,
				file_status = true,
			}

			opts.winbar = {
				lualine_c = { filename },
			}

			opts.inactive_winbar = {
				lualine_c = { filename },
			}
		end,
	},
}
