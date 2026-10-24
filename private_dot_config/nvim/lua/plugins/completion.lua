local function is_prose()
	return vim.bo.filetype == "markdown" or vim.bo.filetype == "text"
end

return {
	{
		"saghen/blink.cmp",
		opts = {
			sources = {
				providers = {
					snippets = {
						-- Disables annoying suggestions. If I want to add back in custom
						-- snippets then need to re-enable this and do some fine tuning.
						enabled = false,
					},
				},
			},
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
