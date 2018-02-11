time = 0 or ""
timer_text = "timer: " .. time

minetest.register_on_joinplayer(function(player)
minetest.register_globalstep(function(dtime)
timer_text = "timer: " .. time
player:hud_change(timer, "text", timer_text)
time = time + 0.1
end)



timer = player:hud_add({
    hud_elem_type = "text",
    position      = {x = 1, y = 0.5},
    offset    = {x = -120, y = -25},
    text      = timer_text,
    alignment = 0,
    scale     = { x = 1, y = 1},
    number    = 0xFFFFFF,


})
end)
