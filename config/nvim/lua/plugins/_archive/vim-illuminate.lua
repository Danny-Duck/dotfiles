local status_ok, illuminate = pcall(require, "illuminate")
if not status_ok then
	return
end

-- default configuration
illuminate.configure({
	-- providers: provider used to get references in the buffer, ordered by priority
	providers = {
		"lsp",
		"nvim_lsp",
		"treesitter",
		"regex",
	},
	-- delay: delay in milliseconds
	delay = 100,
	-- filetype_overrides: filetype specific overrides.
	-- The keys are strings to represent the filetype while the values are tables that
	-- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
	filetype_overrides = {},
	-- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
	filetypes_denylist = {
		--[[ "dirvish", ]]
		--[[ "fugitive", ]]
		"nvim-tree",
		"telescope",
	},
	-- filetypes_allowlist: filetypes to illuminate, this is overriden by filetypes_denylist
	filetypes_allowlist = {},

	-- modes_denylist: modes to not illuminate, this overrides modes_allowlist
	modes_denylist = {},

	-- modes_allowlist: modes to illuminate, this is overriden by modes_denylist
	modes_allowlist = {},

	-- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
	-- Only applies to the 'regex' provider
	-- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
	providers_regex_syntax_denylist = {},

	-- providers_regex_syntax_allowlist: syntax to illuminate, this is overriden by providers_regex_syntax_denylist
	-- Only applies to the 'regex' provider
	-- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
	providers_regex_syntax_allowlist = {},

	-- under_cursor: whether or not to illuminate under the cursor
	under_cursor = true,

	-- large_file_cutoff: number of lines at which to use large_file_config
	-- The `under_cursor` option is disabled when this cutoff is hit
	large_file_cutoff = 100,

	-- large_file_config: config to use for large files (based on large_file_cutoff).
	-- Supports the same keys passed to .configure
	-- If nil, vim-illuminate will be disabled for large files.
	large_file_overrides = nil,
})

--[[ https://github.com/RRethy/vim-illuminate/issues/115#issuecomment-1221297926 ]]
vim.api.nvim_set_hl(0, "IlluminatedWordText", { bold = true, fg = "#fabd2f" })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bold = true, fg = "#fabd2f" })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bold = true, fg = "#fabd2f" })
