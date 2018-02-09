--- Parkourium

minetest.register_craftitem("parkour:parkourium_ingot", {
    description = "Parkourium Ingot",
    inventory_image = "parkourium_ingot.png"
})

minetest.register_craftitem("parkour:parkourium_ingot_deformed", {
    description = "Deformed Parkourium Ingot",
    inventory_image = "parkourium_ingot_deformed.png"
})

minetest.register_craft({
    type = "cooking",
    output = "parkour:parkourium_ingot",
    recipe = "parkour:parkourium_ingot_deformed",
    cooktime = 1,
})


minetest.register_node("parkour:parkourium_block", {
    description = "Block of Parkourium",
    tiles = {"parkourium_block.png"},
    groups = {cracky=3}
})

minetest.register_node("parkour:start_block", {
    description = "Parkour Start Block",
    tiles = {"start_block.png"},
    groups = {cracky=3}
})

minetest.register_node("parkour:parkore", {
  -- badum tiss! Thanks Lone_Wolf#4687!
	description = "Parkourium Ore",
	tiles = {"default_stone.png^parkour_mineral_parkourium.png"},
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

minetest.register_craft({
	output = 'parkour:parkourium_block',
	recipe = {
		{'parkour:parkourium_ingot', 'parkour:parkourium_ingot', 'parkour:parkourium_ingot'},
    {'parkour:parkourium_ingot', 'parkour:parkourium_ingot', 'parkour:parkourium_ingot'},
    {'parkour:parkourium_ingot', 'parkour:parkourium_ingot', 'parkour:parkourium_ingot'}
	}
})

minetest.register_craft({
	output = 'parkour:start_block',
	recipe = {
		{'parkour:parkourium_ingot', 'parkour:parkourium_ingot', 'parkour:parkourium_ingot'},
    {'parkour:parkourium_ingot', 'parkour:starter_core', 'parkour:parkourium_ingot'},
    {'parkour:parkourium_ingot', 'parkour:parkourium_ingot', 'parkour:parkourium_ingot'}
	}
})

minetest.register_craftitem("parkour:starter_core", {
    description = "Parkour Start Block Core",
    inventory_image = "startercore.png"
})
