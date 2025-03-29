local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node

ls.add_snippets("tex", {
  s(";N", {
    t("\\nabla"),
  }),
})

ls.add_snippets("tex", {
  s(";a", {
    t("\\alpha"),
  }),
})

ls.add_snippets("tex", {
  s(";b", {
    t("\\beta"),
  }),
})

ls.add_snippets("tex", {
  s(";g", {
    t("\\gamma"),
  }),
})

ls.add_snippets("tex", {
  s(";G", {
    t("\\Gamma"),
  }),
})

ls.add_snippets("tex", {
  s(";d", {
    t("\\delta"),
  }),
})

ls.add_snippets("tex", {
  s(";D", {
    t("\\Delta"),
  }),
})

ls.add_snippets("tex", {
  s(";e", {
    t("\\epsilon"),
  }),
})

ls.add_snippets("tex", {
  s(";ve", {
    t("\\varepsilon"),
  }),
})

ls.add_snippets("tex", {
  s(";z", {
    t("\\zeta"),
  }),
})

ls.add_snippets("tex", {
  s(";h", {
    t("\\eta"),
  }),
})

ls.add_snippets("tex", {
  s(";o", {
    t("\\theta"),
  }),
})

ls.add_snippets("tex", {
  s(";vo", {
    t("\\vartheta"),
  }),
})

ls.add_snippets("tex", {
  s(";O", {
    t("\\Theta"),
  }),
})

ls.add_snippets("tex", {
  s(";k", {
    t("\\kappa"),
  }),
})

ls.add_snippets("tex", {
  s(";l", {
    t("\\lambda"),
  }),
})

ls.add_snippets("tex", {
  s(";L", {
    t("\\Lambda"),
  }),
})

ls.add_snippets("tex", {
  s(";m", {
    t("\\mu"),
  }),
})

ls.add_snippets("tex", {
  s(";n", {
    t("\\nu"),
  }),
})

ls.add_snippets("tex", {
  s(";x", {
    t("\\xi"),
  }),
})

ls.add_snippets("tex", {
  s(";X", {
    t("\\Xi"),
  }),
})

ls.add_snippets("tex", {
  s(";i", {
    t("\\pi"),
  }),
})

ls.add_snippets("tex", {
  s(";I", {
    t("\\Pi"),
  }),
})

ls.add_snippets("tex", {
  s(";r", {
    t("\\rho"),
  }),
})

ls.add_snippets("tex", {
  s(";s", {
    t("\\sigma"),
  }),
})

ls.add_snippets("tex", {
  s(";S", {
    t("\\Sigma"),
  }),
})

ls.add_snippets("tex", {
  s(";t", {
    t("\\tau"),
  }),
})

ls.add_snippets("tex", {
  s(";f", {
    t("\\phi"),
  }),
})

ls.add_snippets("tex", {
  s(";vf", {
    t("\\varphi"),
  }),
})

ls.add_snippets("tex", {
  s(";F", {
    t("\\Phi"),
  }),
})

ls.add_snippets("tex", {
  s(";c", {
    t("\\chi"),
  }),
})

ls.add_snippets("tex", {
  s(";p", {
    t("\\psi"),
  }),
})

ls.add_snippets("tex", {
  s(";P", {
    t("\\Psi"),
  }),
})

ls.add_snippets("tex", {
  s(";w", {
    t("\\omega"),
  }),
})

ls.add_snippets("tex", {
  s(";W", {
    t("\\Omega"),
  }),
})
