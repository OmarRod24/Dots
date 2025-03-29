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

ls.add_snippets("tex", {
  s(
    "nhw",
    fmt(
      [[
      \documentclass[11pt]{{scrartcl}}
      \usepackage{{silence}}
      \WarningFilter{{latex}}{{You have requested package}}
      \usepackage{{/home/omar/Plantillas/mystd}}

      \newcommand{{\Tarea}}{{{}}}
      \newcommand{{\Unidad}}{{}}

      \title{{\Tarea}}
      \author{{\Nombre}}

      \begin{{document}}

      \thispagestyle{{empty}}
      \vspace*{{1cm}}

      \begin{{center}}
        \includegraphics[width=0.15\textwidth]{{/home/omar/Plantillas/udgEPS.eps}}\\

	      {{\textbf{{\large UNIVERSIDAD DE GUADALAJARA}}}}\\
	      {{\scshape\tiny CENTRO UNIVERSITARIO DE CIENCIAS EXACTAS E INGENIERIAS}}\\[2cm]
	      \rule{{0.8\textwidth}}{{1pt}}\\[1cm]

	      {{\huge\textbf{{\Tarea}}}}\\[0.7cm]

	      \rule{{0.8\textwidth}}{{1pt}}\\[0.2cm]
	      \makebox[\textwidth]{{
		      \makebox[0pt][r]{{Materia: \itshape \Materia}}
		      \hspace{{1em}}
		      \makebox[0pt][l]{{Profesor: \itshape \Profesor}}
	      }}

	      Unidad de Aprendizaje: {{\itshape \Unidad}}\\[1cm]

	      {{\itshape \Nombre}}\\
	      {{\itshape \Codigo}}\\[10cm]

	      Fecha de Entrega: \today
      \end{{center}}

      \newpage

      {}



















      \end{{document}}
      ]],
      { i(1, "Nombre de la Nota"), i(0) }
    )
  ),
})
