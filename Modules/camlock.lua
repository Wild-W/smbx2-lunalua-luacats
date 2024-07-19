---@meta


---Camlock is a library for defining simple camera zones in levels and on the overworld. Camera zones are defined by their top/left edge and their width and height.
---
---Camera zones are required to be at least the size of a camera, meaning that width should be at least 800 and the height should be at least 600. Note that this also applies on world maps, even if the world map border is enabled and the visible part of the map is smaller.
local camLock = {}

function camLock.onInitAPI() end

---Creates a new camera zone at the given coordinates with the specified size. The speed determines how quickly the camera moves into/out of the zone, where 1 is instant and `0` is that it ignores the zone. Default is `0.05`.
---@param leftEdge number
---@param topEdge number
---@param width number
---@param height number
---@param speed number
function camLock.addZone(leftEdge, topEdge, width, height, speed) end

---Creates a new camera zone at the given coordinates. The bounds table must have x, y, width and height fields. The speed determines how quickly the camera moves into/out of the zone, where 1 is instant and `0` is that it ignores the zone. Default is `0.05`.
---@param bounds {x: number, y: number, width: number, height: number}
---@param speed number
function camLock.AddZone(bounds, speed) end

function camLock.onDrawWorld() end

---@param camIdx integer
function camLock.onCamUpdateLevel(camIdx) end


return camLock