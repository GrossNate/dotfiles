local function is_prose()
	return vim.bo.filetype == "markdown" or vim.bo.filetype == "text"
end

return {
	{
		"saghen/blink.cmp",
		opts = {
			completion = {
				menu = {
					auto_show = function()
						return not is_prose()
					end,
				},
				ghost_text = {
					enabled = function()
						return not is_prose()
					end,
				},
			},
		},
	},
}
