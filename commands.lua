gravityIsAnti = false
minetest.register_chatcommand("antigravity", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if not gravityIsAnti then
          player:set_physics_override({
              gravity = 0.1 -- set gravity to 10% of its original value
                          -- (0.1 * 9.81)
          })
          gravityIsAnti = true
          minetest.chat_send_all("Antigravity ON")
        else
          player:set_physics_override({
              gravity = 1 -- set gravity to 10% of its original value
                          -- (0.1 * 9.81)
          })
          gravityIsAnti = false
          minetest.chat_send_all("Antigravity OFF")
        end
    end
})

minetest.register_chatcommand("gravup", {
    func = function(name, param)
      local player = minetest.get_player_by_name(name)
      player:set_physics_override({
          gravity = gravity + 0.1 -- set gravity to 10% of its original value
                      -- (0.1 * 9.81)
      })
      minetest.chat_send_all("Gravity is now 10% heavier.")
    end
})

minetest.register_chatcommand("gravdown", {
    func = function(name, param)
      local player = minetest.get_player_by_name(name)
      player:set_physics_override({
          gravity = gravity - 0.1 -- set gravity to 10% of its original value
                      -- (0.1 * 9.81)
      })
      minetest.chat_send_all("Gravity is now 10% lighter.")
    end
})
