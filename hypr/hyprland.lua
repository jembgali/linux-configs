require("keybinds")
require("rules")
require("animations")

------------------
---- MONITORS ----
------------------
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@60.000",
    position = "0x0",
    scale    = "1",
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@100.003",
    position = "1920x0",
    scale    = "1",
})

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
    general = {
        layout           = "scrolling",

        border_size      = 1,
        col              = {
            active_border   = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        gaps_in          = 4,
        gaps_out         = 8,

        resize_on_border = false,
        allow_tearing    = false,
    },

    decoration = {
        rounding         = 4,
        rounding_power   = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled  = true,
            size     = 4,
            passes   = 2,
            noise    = 0.03,
            ignore_opacity = true,
        },
    },

    scrolling = {
    },

    input = {
        kb_layout    = "us",
        kb_variant   = "",
        kb_model     = "",
        kb_options   = "",
        kb_rules     = "",

        follow_mouse = 1,

        sensitivity  = 0,

        touchpad     = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
