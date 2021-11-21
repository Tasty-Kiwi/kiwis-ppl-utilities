local helpers = require("/dynamic/eskiv_boxes/mesh_helpers.lua")

function create_box(color)
  local mesh = helpers.new_mesh()
  helpers.add_vertical_cylinder_to_mesh(mesh, {0,0,0}, 40, 22, 7, color)
  return mesh
end

function create_cube(color)
  local mesh = helpers.new_mesh()
  helpers.add_cube_to_mesh(mesh, {0, 0, 0}, 12, color)
  return mesh
end

meshes = {
  create_box(0x00ff00ff),
  create_cube(0x00ff00ff)
}
