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
    { trig = "'", wordTrig = false, regTrig = true },
    fmt(
      [[
    {}^{{{}}}
    ]],
      {
        d(1, function(_, snip)
          return sn(nil, t(snip.captures[1]))
        end, {}),
        d(2, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = ";", wordTrig = false, regTrig = true },
    fmt(
      [[
    {}_{{{}}}
    ]],
      {
        d(1, function(_, snip)
          return sn(nil, t(snip.captures[1]))
        end, {}),
        d(2, get_visual, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "ee", wordTrig = false, regTrig = true },
    fmt(
      [[
      e^{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "TT", wordTrig = false, regTrig = true },
    fmt(
      [[
    {}^{{\top}}
    ]],
      {
        d(1, function(_, snip)
          return sn(nil, t(snip.captures[1]))
        end, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "CC", wordTrig = false, regTrig = true },
    fmt(
      [[
    {}^{{\complement}}
    ]],
      {
        d(1, function(_, snip)
          return sn(nil, t(snip.captures[1]))
        end, {}),
      }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "ff", wordTrig = false, regTrig = true },
    fmt(
      [[
      \frac{{{}}}{{{}}}{}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "sq", wordTrig = false, regTrig = true },
    fmt(
      [[
      \sqrt{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "intt", wordTrig = false, regTrig = true },
    fmt(
      [[
      \int_{{{}}}^{{{}}} {}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "innt", wordTrig = false, regTrig = true },
    fmt(
      [[
      \int_{{-{}}}^{{{}}} {}
      ]],
      { i(1), rep(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "int3", wordTrig = false, regTrig = true },
    fmt(
      [[
      \iiint {}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "int2", wordTrig = false, regTrig = true },
    fmt(
      [[
      \iint {}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "sM", wordTrig = false, regTrig = true },
    fmt(
      [[
      \sum_{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "smm", wordTrig = false, regTrig = true },
    fmt(
      [[
      \sum_{{{}}}^{{{}}}{}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "smf", wordTrig = false, regTrig = true },
    fmt(
      [[
      \sum_{{{}-\infty}}^{{\infty}} {}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "sMl", wordTrig = false, regTrig = true },
    fmt(
      [[
      \sum \limits_{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "smml", wordTrig = false, regTrig = true },
    fmt(
      [[
      \sum \limits_{{{}}}^{{{}}}{}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "lM", wordTrig = false, regTrig = true },
    fmt(
      [[
      \limits_{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "lmm", wordTrig = false, regTrig = true },
    fmt(
      [[
      \limits_{{{}}}^{{{}}}{}
      ]],
      { i(1), i(2), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "inf", wordTrig = false, regTrig = true },
    fmt(
      [[
      \infty{}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "intf", wordTrig = false, regTrig = true },
    fmt(
      [[
      \int_{{-\infty}}^{{\infty}} {}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = ">>", wordTrig = false, regTrig = true },
    fmt(
      [[
      \implies {}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "lra", wordTrig = false, regTrig = true },
    fmt(
      [[
      \Longleftrightarrow {}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "px", wordTrig = false, regTrig = true },
    fmt(
      [[
      \approx {}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "eqq", wordTrig = false, regTrig = true },
    fmt(
      [[
      \equiv {}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "dt", wordTrig = false, regTrig = true },
    fmt(
      [[
      \dot{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "ddo", wordTrig = false, regTrig = true },
    fmt(
      [[
      \ddot{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "dn", wordTrig = false, regTrig = true },
    fmt(
      [[
      \ndiff{{{}}}{{{}}}{{{}}}{}
      ]],
      { i(1), i(2), i(3), i(0) }
    )
  ),
})
ls.add_snippets("tex", {
  s(
    { trig = "diag", wordTrig = false, regTrig = true },
    fmt(
      [[
      \begin{{figure}}[H]
        \centering
        \scalebox{{{}}}{{
        {}

        }}
      \end{{figure}}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "vec", wordTrig = false, regTrig = true },
    fmt(
      [[
      \vec{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "cd", wordTrig = false, regTrig = true },
    fmt(
      [[
      \cdot{}
      ]],
      { i(0) }
    )
  ),
})
ls.add_snippets("tex", {
  s(
    { trig = "dts", wordTrig = false, regTrig = true },
    fmt(
      [[
      \dots{}
      ]],
      { i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "lp", wordTrig = false, regTrig = true },
    fmt(
      [[
      \Lap{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})

ls.add_snippets("tex", {
  s(
    { trig = "lpi", wordTrig = false, regTrig = true },
    fmt(
      [[
      \Lapinv{{{}}}{}
      ]],
      { i(1), i(0) }
    )
  ),
})
