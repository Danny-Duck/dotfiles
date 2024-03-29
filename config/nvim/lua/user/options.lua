vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.smartcase = true -- smart case for / searching
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.textwidth = 100 -- set textwidth to 100 to match colorcolumn
vim.opt.colorcolumn = "0" -- set colorcolumn to 100 to match textwidth
vim.opt.incsearch = true
-- UI
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.pumheight = 100 -- pop up menu height
-- Window
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
-- Undo
vim.opt.undofile = true -- enable persistent undo
-- vim.opt.undodir = "~/.vim/undo"
-- Spelling
vim.opt.spell = true
vim.opt.spelllang = "en_au"
-- Tabs/lines
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.scrolloff = 12 -- is one of my fav
vim.opt.sidescrolloff = 15
vim.opt.showtabline = 0 -- don't show tabs
vim.opt.relativenumber = false -- set relative numbered lines
vim.opt.number = true -- set numbered lines
-- cursor
vim.opt.cursorline = true -- highlight the current line
-- other quality of life
vim.opt.errorbells = false
vim.opt.timeoutlen = 0 -- time to wait for a mapped sequence to complete (in milliseconds)

--[[ -- On thejBufWrite event, format the current buffer ]]
--[[ --[[ vim.api.nvim_create_autocmd({ "BufWrite" }, { ]]
--[[ --[[   callback = function() ]]
--[[ --[[     vim.lsp.buf.format() ]]
--[[ --[[   end,] ]]
--[[ --[[ }) ]]

-- just before vim exits kill eslint_d and prettierd
vim.api.nvim_create_autocmd({ "QuitPre", "VimLeavePre" }, {
	callback = function()
		os.execute("pkill -f 'eslint_d'")
		os.execute("pkill -f 'prettierd'")
	end,
})
