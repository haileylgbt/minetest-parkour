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

minetest.register_craft({
    type = "cooking",
    output = "parkour:parkourium_ingot",
    recipe = "parkour:parkourium_ingot_deformed",
    cooktime = 1,
})
