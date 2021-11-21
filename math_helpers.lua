local helper = {}

function helper.sin(num)
  local sin, cos = fmath.sincos(num)
  return sin
end

function helper.cos(num)
  local sin, cos = fmath.sincos(num)
  return cos
end

function helper.pi()
  return fmath.tau() / 2fx
end

function helper.rad(deg)
  return fmath.tau() / 360fx * deg
end

function helper.deg(rad)
  return rad * 360fx / fmath.tau()
end

return helper