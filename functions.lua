function newNode (modName, nodeName, nodeTexture, isNaturalResource, nodeGroups, nodeDrops)
  minetest.register_node(modName:nodeID, {
      description = nodeName,
      tiles = nodeTexture,
      is_ground_content = isNaturalResource,
      groups = nodeGroups,
      drops = nodeDrops
  })
end
