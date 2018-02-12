minetest.register_node("parkour:parkourium_block", {
    description = "Block of Parkourium",
    tiles = {"parkourium_block.png"},
    groups = {cracky=3}
})


minetest.register_node("parkour:start_block", {
    description = "Parkour Start Block",
    tiles = {"start_block.png"},
on_rightclick = function (pos, node, player, itemstack, pointed_thing)
if timeisstop == 0 then
minetest.after(1, function(dtime)
timerstart = 0
times_text = "" .. ""
time = 0
timers = 3
minetest.after(1, function(dtime)
timers = 2
minetest.after(1, function(dtime)
timers = 1
minetest.after(1, function(dtime)
timers = "Go!"
 timerstart = 1
     timeisstop = 1
minetest.after(1, function(dtime)
     timers = ""

end)
end)
end)
end)
end)
end
end,
    groups = {cracky=3}
})

minetest.register_node("parkour:finish_block", {
    description = "Parkour Finish Block",
    tiles = {"finish_block.png"},
    groups = {cracky=3}
})

minetest.register_node("parkour:parkore", {
  -- badum tiss! Thanks Lone_Wolf#4687!
	description = "Parkourium Ore",
	tiles = {"default_stone.png^parkour_mineral_parkourium.png"},
  is_ground_content = true,
	groups = {cracky = 3},
  drop = {
    max_items = 5,  -- Maximum number of items to drop.
      items = { -- Choose max_items randomly from this list.
        {
          items = {"parkour:parkourium_ingot_deformed"},  -- Items to drop.
          rarity = 1,  -- Probability of dropping is 1 / rarity.
          inherit_color = false, -- To inherit palette color from the node
        },
      },
  },
})
