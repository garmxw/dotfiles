hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,
        border_size = 0,
        col = {
            active_border   = { colors = {primary, on_primary}, angle = 90 },
            inactive_border = on_primary,
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    }
})
