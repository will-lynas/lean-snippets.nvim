local M = {}

function M.setup()
	local ls = require("luasnip")
	local s = ls.snippet
	local t = ls.text_node
	local i = ls.insert_node
	local r = require("luasnip.extras").rep

	ls.add_snippets("lean", {
		s("cs", {
			t({ "constructor", "· " }),
			i(1),
			t({ "", "  sorry", "·", "  sorry" }),
		}),

		s("cor", {
			t("cases "),
			i(1),
			t({ " with", "| inl h =>", "  sorry", "| inr h =>", "  sorry" }),
		}),

		s("ot", {
			t("obtain ⟨ _, _ ⟩ := "),
			i(1),
		}),

		s("nd", {
			t("induction "),
			i(1),
			t({ " with", "| zero =>", "  sorry", "| succ " }),
			r(1),
			t({ " ih =>", "  sorry" }),
		}),

		s(".s", {
			t("· "),
			i(1),
			t({ "", "  sorry" }),
		}),
	})
end

return M
