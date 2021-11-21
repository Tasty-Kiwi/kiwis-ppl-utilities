-- eskiv boxes, created by tasty kiwi

local boxes = require("/dynamic/eskiv_boxes/box_template.lua")

local eskiv_boxes = {}

-- @param pos_x fixedpoint: The x location of the box.
-- @param pos_y fixedpoint: The y location of the box.
-- @param seconds int: Starting time for the counter.
-- @param stops_at int: Stopping time for the counter. Pass nil to remove stopping time limit.
-- @param callback function: The callback called when the ship of a player takes a box. Receives in argument the time delta.

function eskiv_boxes.create_box(pos_x, pos_y, seconds, stops_at, callback)
  local is_box_caught = false
  local counter = pewpew.new_customizable_entity(pos_x, pos_y - 30fx)
  
  pewpew.customizable_entity_set_mesh_scale(counter, 1fx/2fx)
  local box = boxes.new(pos_x, pos_y, {"/dynamic/eskiv_boxes/box_gfx.lua", 0} --[[ <- outer box mesh; inner box mesh -> ]], {"/dynamic/eskiv_boxes/box_gfx.lua", 1}, function(player_index, ship_id)
    is_box_caught = true
    pewpew.entity_destroy(counter)
    -- you can change sound path and index if you plan to use different sound
    pewpew.play_sound("/dynamic/eskiv_boxes/box_sfx.lua", 0, pos_x, pos_y)
    callback(seconds, player_index, ship_id)
  end)
  
  local time = 0
  pewpew.entity_set_update_callback(counter, function()
    time = time + 1
    if stops_at == nil then
      if time % 30 == 0 then
        seconds = seconds - 1
      end
    else
      if time % 30 == 0 and seconds > stops_at then
        seconds = seconds - 1
      end
    end
    if is_box_caught == false then
      pewpew.customizable_entity_set_string(counter, "#00ff00ff" .. seconds)
    end
  end)
end

return eskiv_boxes
