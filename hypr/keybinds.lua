---------------------
---- KEYBINDINGS ----
---------------------
local mainMod       =   "SUPER"
local ipc           =   "noctalia msg "
local terminal      =   "foot"
local fileManager   =   "dolphin"
local browser       =   "helium"

-- Window Behaviors
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Switch Focus
hl.bind(mainMod .. " + H",      hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + L",      hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + K",      hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + J",      hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. " + Left",   hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + Right",  hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + Up",     hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + Down",   hl.dsp.focus({ direction = "d" }))

-- Move Window
hl.bind(mainMod .. " + CTRL + H",       hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mainMod .. " + CTRL + L",       hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mainMod .. " + CTRL + K",       hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + CTRL + J",       hl.dsp.window.move({ workspace = "r-1" }))
hl.bind(mainMod .. " + CTRL + Left",    hl.dsp.window.move({ workspace = "e+1" }))
hl.bind(mainMod .. " + CTRL + Right",   hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mainMod .. " + CTRL + Up",      hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + CTRL + Down",    hl.dsp.window.move({ workspace = "r-1" }))

-- Swap Window
hl.bind(mainMod .. " + SHIFT + H",      hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. " + SHIFT + L",      hl.dsp.layout("swapcol r"))
hl.bind(mainMod .. " + SHIFT + Left",   hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. " + SHIFT + Right",  hl.dsp.layout("swapcol r"))
hl.bind(mainMod .. " + SHIFT + K",      hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + J",      hl.dsp.window.swap({ direction = "d" }))
hl.bind(mainMod .. " + SHIFT + Up",     hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + Down",   hl.dsp.window.swap({ direction = "d" }))

-- Mouse
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:272",  hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273",  hl.dsp.window.resize(), { mouse = true })

-- Audio, Brightness, & Player Keybinds
hl.bind("XF86AudioRaiseVolume",         hl.dsp.exec_cmd(ipc .. "volume-up"),    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",         hl.dsp.exec_cmd(ipc .. "volume-down"),  { locked = true, repeating = true })
hl.bind("XF86AudioMute",                hl.dsp.exec_cmd(ipc .. "volume-mute"),  { locked = true, repeating = true })
hl.bind(mainMod .. " + CTRL + Equal",   hl.dsp.exec_cmd(ipc .. "volume-up"),    { locked = true, repeating = true })
hl.bind(mainMod .. " + CTRL + Minus",   hl.dsp.exec_cmd(ipc .. "volume-down"),  { locked = true, repeating = true })
hl.bind(mainMod .. " + CTRL + Return",  hl.dsp.exec_cmd(ipc .. "volume-mute"),  { locked = true, repeating = true })

hl.bind("XF86MonBrightnessUp",          hl.dsp.exec_cmd(ipc .. "brightness-up"),    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",        hl.dsp.exec_cmd(ipc .."brightness-down"),   { locked = true, repeating = true })
hl.bind(mainMod .. " + ALT + Equal",    hl.dsp.exec_cmd(ipc .. "brightness-up"),    { locked = true, repeating = true })
hl.bind(mainMod .. " + ALT + Minus",    hl.dsp.exec_cmd(ipc .. "brightness-down"),  { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Core Keybinds
hl.bind(mainMod .. " + Q",          hl.dsp.window.close())
hl.bind(mainMod .. " + Return",     hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + F",  hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + B",  hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + Space",      hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))

-- Noctalia Keybinds
hl.bind(mainMod .. " + ALT + Space",    hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind(mainMod .. " + CTRL + Space",   hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind(mainMod .. " + Escape",         hl.dsp.exec_cmd(ipc .. "panel-toggle session"))
hl.bind(mainMod .. " + Y",              hl.dsp.exec_cmd(ipc .. "panel-toggle wallpaper"))
hl.bind(mainMod .. " + ALT + C",        hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))
hl.bind(mainMod .. " + SHIFT + C",      hl.dsp.exec_cmd(ipc .. "panel-open control-center calendar"))
hl.bind(mainMod .. " + SHIFT + W",      hl.dsp.exec_cmd(ipc .. "panel-open control-center weather"))
hl.bind(mainMod .. " + ALT + Return",   hl.dsp.exec_cmd(ipc .. "caffeine-toggle"))
hl.bind(mainMod .. " + ALT + L",        hl.dsp.exec_cmd(ipc .. "session lock"))
