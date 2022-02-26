local draw = {}

function draw.graph(meshes, range, color, f)
  local produced_mesh = {
    vertexes = {},
    segments = {{}},
    colors = {}
  }
  for x = range["g_begin"], range["g_end"], range["g_step"] do
    y = f(x)
    table.insert(produced_mesh.vertexes, {x, y})
    table.insert(produced_mesh.colors, color)
  end
  for i = 0, #produced_mesh.vertexes -1 do
    table.insert(produced_mesh.segments[1], i)
  end
  table.insert(meshes, produced_mesh)
end

return draw