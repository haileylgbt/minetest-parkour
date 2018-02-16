dofile(minetest.get_modpath("parkour") .. "/recipes.lua")
dofile(minetest.get_modpath("parkour") .. "/craftitems.lua")
dofile(minetest.get_modpath("parkour") .. "/nodes.lua")
dofile(minetest.get_modpath("parkour") .. "/commands.lua")


time = 0 or ""
times_text = ""
timeps = 0 or ""
timerstart = 0 or ""
timers = ""
timeisstop = 0
win = ""

minetest.register_on_joinplayer(function(player)
minetest.chat_send_all("Minetest Parkour - Running v0.3 'Gerold'")
minetest.register_globalstep(function(dtime)
if timerstart == 1 then
if timeps == 0 then
timeps = 1
minetest.after(1, function(dtime)
time = time + 1
timeps = 0
end)
end
end
end)

minetest.register_globalstep(function(dtime)
player:hud_change(timerps, "text", timers)
player:hud_change(times, "text", times_text)
player:hud_change(hudwin, "text", win)

if timerstart == 1 then
times_text = "timer " .. time
player:hud_change(times, "text", times_text)
end
end)

times = player:hud_add({
    hud_elem_type = "text",
    position      = {x = 1, y = 0.5},
    offset    = {x = -120, y = -25},
    text      = times_text,
    alignment = 0,
    scale     = { x = 1, y = 1},
    number    = 0xFFFFFF,


})

timerps = player:hud_add({
    hud_elem_type = "text",
    position      = {x = 0.5, y = 0.3},
    offset    = {x = 0, y = 0},
    text      = timers,
    alignment = 0,
    scale     = { x = 5, y = 6},
    number    = 0xFFFFFF,


})

hudwin = player:hud_add({
    hud_elem_type = "text",
    position      = {x = 0.5, y = 0.3},
    offset    = {x = 0, y = 0},
    text      = win,
    alignment = 0,
    scale     = { x = 5, y = 6},
    number    = 0xFFFFFF,


})

end)
