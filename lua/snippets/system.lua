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
  s(
    "pack",
    fmt(
      [[
      \usepackage{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "nc",
    fmt(
      [[
      \newcommand{{{}}}{{{}}}{}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "s",
    fmt(
      [[
      \section{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "ss",
    fmt(
      [[
      \subsection{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "sss",
    fmt(
      [[
      \subsubsection{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "ns",
    fmt(
      [[
      \newsec{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "toc",
    fmt(
      [[
      \tableofcontents{}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "np",
    fmt(
      [[
      \newpage{}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "TODOO",
    fmt(
      [[
      \TODO{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "lbl",
    fmt(
      [[
      \label{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "RR",
    fmt(
      [[
      \ref{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "REF",
    fmt(
      [[
      \TODO{{referencia}}{}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "hr",
    fmt(
      [[
      \href{{{}}}{{{}}}{}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "hrr",
    fmt(
      [[
      \hyperref[{}]{{{}}}{}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})
