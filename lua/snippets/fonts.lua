local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep
local d = ls.dynamic_node
local sn = ls.snippet_node

local get_visual = function(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else
    return sn(nil, i(1))
  end
end

ls.add_snippets("tex", {
  s(
    "tt",
    fmt(
      [[
    \texttt{{{}}}
  ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "tii",
    fmt(
      [[
    \textit{{{}}}
  ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "tbb",
    fmt(
      [[
    \textbf{{{}}}
  ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "ul",
    fmt(
      [[
    \underline{{{}}}
  ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "tee",
    fmt(
      [[
    \text{{{}}}
  ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "mbb",
    fmt(
      [[
    \mathbb{{{}}}
  ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "mbf",
    fmt(
      [[
    \mathbf{{{}}}
  ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "vb",
    fmt(
      [[
      \vocab{{{}}}
      ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    "tst",
    fmt(
      [[
      \textst{{{}}}
      ]],
      {
        d(1, get_visual, {}),
      }
    )
  ),
})
