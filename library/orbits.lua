---@meta orbits

local orbits = {}

--- Internal event
function orbits.onInitAPI() end

--- Internal event
function orbits.onStart() end

--- Internal event
function orbits.onTickEnd() end

---default orbit center ID (the SMB3 dungeon stone ball)
---@type integer
orbits.DEFAULT_CENTERID = nil

---the default radius of all orbits if not specified
---@type integer
orbits.DEFAULT_RADIUS = nil

---the default speed of rotation (in revolutions per second)
---@type integer
orbits.DEFAULT_ROTATIONSPEED = nil

---
---@type table
orbits.Orbit = nil

---
---@type function
orbits.new = nil

return orbits
