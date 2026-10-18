--------------------
---- ANIMATIONS ----
--------------------
hl.curve( "fast", { type = "bezier", points = { {0, 0}, {0, 0} } })
-- hl.animation({})
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1, bezier = "fast", style = "slide bottom" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1, bezier = "fast", style = "slide top" })
hl.animation({ leaf = "windows", enabled = true, speed = 1, bezier = "fast"})

