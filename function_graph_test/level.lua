-- Set how large the level will be.
--pewpew.set_level_size(500fx, 500fx)

-- All graphs are centered at the middle
-- Also, graphs are scaled 10x

local graph_posx = 0fx
local graph_posy = 0fx

local graph0 = pewpew.new_customizable_entity(graph_posx, graph_posy)
pewpew.customizable_entity_set_mesh(graph0, "/dynamic/graph.lua", 0)
pewpew.customizable_entity_set_mesh_scale(graph0, 10fx)

local graph1 = pewpew.new_customizable_entity(graph_posx, graph_posy)
pewpew.customizable_entity_set_mesh(graph1, "/dynamic/graph.lua", 1)
pewpew.customizable_entity_set_mesh_scale(graph1, 10fx)

local graph2 = pewpew.new_customizable_entity(graph_posx, graph_posy)
pewpew.customizable_entity_set_mesh(graph2, "/dynamic/graph.lua", 2)
pewpew.customizable_entity_set_mesh_scale(graph2, 10fx)

local graph3 = pewpew.new_customizable_entity(graph_posx, graph_posy)
pewpew.customizable_entity_set_mesh(graph3, "/dynamic/graph.lua", 3)
pewpew.customizable_entity_set_mesh_scale(graph3, 10fx)

local graph4 = pewpew.new_customizable_entity(graph_posx, graph_posy)
pewpew.customizable_entity_set_mesh(graph4, "/dynamic/graph.lua", 4)
pewpew.customizable_entity_set_mesh_scale(graph4, 10fx)

--pewpew.new_player_ship(250fx, 250fx, 0)

local time = 0

-- A function that will get called every game tick, which is 30 times per seconds.
function level_tick()
  -- Stop the game if the player is dead.
  local conf = pewpew.get_player_configuration(0)
  if conf["has_lost"] == true then
    pewpew.stop_game()
  end
end

-- Register the `level_tick` function to be called at every game tick.
pewpew.add_update_callback(level_tick)