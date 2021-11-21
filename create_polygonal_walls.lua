function make_walls(radius, sides, center_x, center_y)
  local locations = {}
  for i = 0, sides do
    local angle = (6.1159fx / fmath.to_fixedpoint(sides)) * fmath.to_fixedpoint(i)
    local y, x = fmath.sincos(angle)
    y = y * radius
    x = x * radius
    table.insert(locations, {x , y})
  end
  for i = 1, #locations do
    if i ~= #locations then
      pewpew.add_wall(center_x + locations[i][1], center_y + locations[i][2], center_x + locations[i + 1][1], center_y + locations[i + 1][2])
    else
      pewpew.add_wall(center_x + locations[#locations][1], center_y + locations[#locations][2], center_x + locations[1][1], center_y + locations[1][2])
    end
  end
end
