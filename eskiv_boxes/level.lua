-- for more info reference eskiv_boxes/eskiv_boxes.lua file
local eskiv_boxes = require("/dynamic/eskiv_boxes/eskiv_boxes.lua")

pewpew.set_level_size(150fx, 150fx)
local ship = pewpew.new_player_ship(75fx, 75fx, 0)

eskiv_boxes.create_box(0fx, 0fx, 0, -10, function(time_delta, player_index, ship_id)
  pewpew.increase_score_of_player(player_index, time_delta)
  pewpew.print("time_delta when catched box no. 1: "..time_delta)
  pewpew.print("Player index: "..player_index..", Ship ID: "..ship_id)
end)

-- nil stopping time disables stopping counter completely
eskiv_boxes.create_box(0fx, 150fx, 10, nil, function(time_delta, player_index, ship_id)
  pewpew.increase_score_of_player(player_index, time_delta)
  pewpew.print("time_delta when catched box no. 2: "..time_delta)
  pewpew.print("Player index: "..player_index..", Ship ID: "..ship_id)
end)

-- you can just not include ship data if you don't need it
eskiv_boxes.create_box(150fx, 150fx, 90, 80, function(time_delta, player_index)
  pewpew.increase_score_of_player(player_index, time_delta)
  pewpew.print("time_delta when catched box no. 3: "..time_delta)
  pewpew.print("Player index: "..player_index)
end)

eskiv_boxes.create_box(150fx, 0fx, 5, 0, function(time_delta)
  pewpew.increase_score_of_player(0, time_delta)
  pewpew.print("time_delta when catched box no. 4: "..time_delta)
end)
