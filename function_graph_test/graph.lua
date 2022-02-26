local draw = require("/dynamic/function_graph.lua")

meshes = {}

-- Parabola function
draw.graph(meshes, {g_begin = -10, g_end = 10, g_step = 0.1}, 0xff00ffff, function(x) 
  return x*x
end)

-- Downwards going linear function
-- Changing step to use less segments (we only need to use two points for linear)
draw.graph(meshes, {g_begin = -10, g_end = 10, g_step = 20}, 0xff0000ff, function(x) 
  return -1 * x
end)

-- Uses 2 hiperbola functions x ∈ [-10, 0] and x ∈ [0, 10] instead of x ∈ [-10, 10] to prevent visual glitches  
draw.graph(meshes, {g_begin = -10, g_end = 0, g_step = 0.1}, 0x00ffffff, function(x) 
  return 3/x
end)

draw.graph(meshes, {g_begin = 0, g_end = 10, g_step = 0.1}, 0x00ff00fff, function(x) 
  return 3/x
end)

-- Sine and cosine functions work too!
draw.graph(meshes, {g_begin = -20, g_end = 20, g_step = 0.05}, 0xffff00ff, function(x) 
  return math.sin(x)
end)