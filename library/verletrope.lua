---@meta verletrope

local verlet = {}

function verlet.Rope(startPos, endPos, segments, iterations, gravity, allowShorter) end

function verlet.Cloth(topLeft, topRight, bottomLeft, bottomRight, divisions, iterations, gravity, allowCompress) end

return verlet
