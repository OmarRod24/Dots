local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

ls.add_snippets("tex", {
  s(
    "env",
    fmt(
      [[
    \begin{{{}}}
        {}
    \end{{{}}}
    ]],
      { i(1), i(0), rep(1) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "eenv",
    fmt(
      [[
      \begin{{{}}}{{{}}}
          {}
      \end{{{}}}
    ]],
      { i(1), i(2), i(0), rep(1) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "ali",
    fmt(
      [[
      \begin{{align*}}
          {}
      \end{{align*}}
      {}
    ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "itt",
    fmt(
      [[
    \begin{{itemize}}
        \item {}
    \end{{itemize}}
    ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "enn",
    fmt(
      [[
    \begin{{enumerate}}
        \item {}
    \end{{enumerate}}
    ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "case",
    fmt(
      [[
    \begin{{cases}}
        {}
    \end{{cases}}{}
    ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "figu",
    fmt(
      [[
      \begin{{figure}}
          \centering
          \includegraphics[width={}\textwidth]{{{}}}
          \caption{{{}}}
      \end{{figure}}{}
      ]],
      { i(1), i(2), i(3), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "thm",
    fmt(
      [[
      \begin{{theorem}}
          {}
      \end{{theorem}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "exm",
    fmt(
      [[
      \begin{{example}}
          {}
      \end{{example}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "rmk",
    fmt(
      [[
      \begin{{remark}}
          {}
      \end{{remark}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "def",
    fmt(
      [[
      \begin{{definition}}
          {}
      \end{{definition}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "exs",
    fmt(
      [[
      \begin{{exercise}}
          {}
      \end{{exercise}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "fact",
    fmt(
      [[
      \begin{{fact}}
          {}
      \end{{fact}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "prob",
    fmt(
      [[
      \begin{{problem}}
          {}
      \end{{problem}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "quest",
    fmt(
      [[
      \begin{{question}}
          {}
      \end{{question}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "prp",
    fmt(
      [[
      \begin{{proposition}}
          {}
      \end{{proposition}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})
