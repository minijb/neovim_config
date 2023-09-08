local M = {}

function M.setup()
  local ls = require("luasnip")
  local s = ls.snippet
  local sn = ls.snippet_node
  local isn = ls.indent_snippet_node
  local t = ls.text_node
  local i = ls.insert_node
  local f = ls.function_node
  local c = ls.choice_node
  local d = ls.dynamic_node
  local r = ls.restore_node
  local events = require("luasnip.util.events")
  local ai = require("luasnip.nodes.absolute_indexer")
  local extras = require("luasnip.extras")
  local fmt = extras.fmt
  local m = extras.m
  local l = extras.l

  ls.add_snippets("cpp", {
    s("pp", {
      t({
        "#include <iostream>",
        "using namespace std;",
        "using ll = long long;",
        "const int N = 1e5 +9;",
        "",
        "",
        "",
        "",
        "int main()",
        "{",
        "\tios::sync_with_stdio(0), cin.tie(0), cout.tie(0);",
        "\t",
      }),
      i(1),
      t({
        "\t",
        "\treturn 0;",
        "}",
      }),
    }),
  })
end

return M
