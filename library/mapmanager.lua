---@meta mapmanager

local mapmanager = {}

---
---@param x number
---@param y number
---@return Level level World level
function mapmanager.getLevelAt(x, y) end

---
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param ids number[]|number
---@return Level[] levels World levels
function mapmanager.getLevelsIntersecting(x1, y1, x2, y2, ids) end

return mapmanager
