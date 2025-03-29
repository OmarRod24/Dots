return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    event = "VeryLazy",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("snippets.template")
        require("snippets.greek_letters")
        require("snippets.environments")
        require("snippets.fonts")
        require("snippets.math")
        require("snippets.static")
        require("snippets.system")
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
  },
}
