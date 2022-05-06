vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.smartcase = true -- smart case
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
-- Search
vim.opt.incsearch = true
-- UI
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.pumheight = 100 -- pop up menu height
-- Window
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
-- undo
vim.opt.undofile = true -- creates a undo file
-- vim.opt.undodir = "~/.vim/undo"
-- Spelling
vim.opt.spell = true
vim.opt.spelllang = "en-au"
vim.opt.spellfile = "~/.dotfiles/source/vim/spell/en.utf-8.add"
-- Tabs/lines
vim.cmd("set colorcolumn=100")
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.showtabline = 2 -- always show tabs
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.number = true -- set numbered lines
-- cursor
vim.opt.cursorline = true -- highlight the current line
-- other quality of life
vim.opt.errorbells = false
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)

-- On the BufWrite event, format the current buffer
vim.api.nvim_create_autocmd({ "BufWrite" }, {
	callback = function()
		vim.lsp.buf.formatting_sync()
	end,
})

-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- MINE
-- syntax on
-- set relativenumber
-- set nu
-- set smartcase
-- set noswapfile
-- set nobackup
-- set hidden
-- set incsearch
-- set cursorline
-- set backspace=indent,eol,start
-- set showmatch
-- set matchtime=3
-- filetype plugin indent on
-- " Spelling
-- " Undo
-- set undofile
-- " Colours
-- set colorcolumn=100
-- colorscheme gruvbox
-- highlight ColorColumn ctermbg=0 guibg=lightgrey
-- vim.opt.shortmess:append "c"