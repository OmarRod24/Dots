local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep
local d = ls.dynamic_node
local sn = ls.snippet_node

ls.add_snippets("tex", {
  s("rule", {
    t("\\rule{{\\textwidth}}{{0.5pt}}"),
  }),
})

ls.add_snippets("tex", {
  s("ii", {
    t("\\item"),
  }),
})

ls.add_snippets("tex", {
  s(
    "sb",
    fmt(
      [[
      \begin{{bbox}}[{}]{{{}}}
        {}
      \end{{bbox}}
      ]],
      { i(1, "colror"), i(0, "titulo"), i(2, "desc") }
    )
  ),
})

ls.add_snippets("tex", {
  s("nind", {
    t("\\noindent"),
  }),
})

ls.add_snippets("tex", {
  s(
    "todo",
    fmt(
      [[
      \TODO{{{}}} {}
      ]],
      { i(1), i(0) }
    )
  ),
})
