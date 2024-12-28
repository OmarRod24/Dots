local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

vim.keymap.set({ "i", "s" }, "<A-n>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

vim.keymap.set({ "i", "s" }, "<Tab>", function()
  if ls.expand_or_locally_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

ls.add_snippets("tex", {
  s(
    "nhub",
    fmt(
      [[
      \documentclass[11pt]{{scrartcl}}
      \usepackage{{silence}}
      \WarningFilter{{latex}}{{You have requested package}}
      \usepackage{{/home/omar/Plantillas/mystd}}

      % Datos
      \title{{Notas {}}}
      \author{{C. Omar Rodriguez}}
      \date{{\today}}

      \newcommand{{\graphref}}[1]{{\begin{{flushright}}\vspace{{-.5em}} \tiny \texttt{{#1}} \kern-1em\vspace{{-.5em}}\end{{flushrigth}}}}

      \begin{{document}}
      \maketitle
      \tableofcontents
      \newpage

      {}


      \end{{document}}
      ]],
      { i(1, "Nombre de la Nota"), i(0) }
    )
  ),
})
