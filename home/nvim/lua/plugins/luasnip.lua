return {
  "L3MON4D3/LuaSnip",             -- snippet engine
  dependencies = {
    "rafamadriz/friendly-snippets", -- a bunch of snippets to use
  },

  config = function()
    local luasnip = TryRequire("luasnip.loaders.from_vscode")

    if not luasnip then
      return
    end

    local loader_ok, _ = pcall(luasnip.load, { paths = "~/.dotfiles/home/nvim/lua/lsp/snippets" })

    if not loader_ok then
      print("Whoops seems like your snippets are whack dog, check ~/.dotfiles/home/nvim/lua/lsp/snippets")
      return
    end
  end,
}
