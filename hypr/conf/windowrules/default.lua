if hl.plugin.darkwindow ~= nil then
	hl.window_rule({
		match = {
			class = "org.pwmt.zathura",
		},

		["darkwindow:shade"] = hl.plugin.darkwindow.build_rule_effect({
			shader = "chromakey",
			args = {
				bkg = { 0.0, 0.0, 0.0 },
				similarity = 0.18,
				amount = 1.3,
				targetOpacity = 0.0,
			},
		}),
	})
end
