---@meta

--Vision Cone
--BETA 0.1
--By Hoeloe
local vision = {}

---Create a new vision cone.
---@param x number
---@param y number
---@param direction Vector2
---@param fov number
function vision.VisionCone(x, y, direction, fov) end

--- Internal event.
function vision.onDraw() end

--- Internal event.
function vision.onInitAPI() end

---@param cone VisionCone
---@param obj CollisionObject
---@param res number?
---@param ids number[]?
---@param dbg boolean?
---@return boolean
function vision.CheckCone(cone, obj, res, ids, dbg) end

---@class VisionCone
---@field x number
---@field y number
---@field direction Vector2
---@field fov number
---@field collider Collider
---@field static boolean
local VisionCone = {}

---@param angle number
function VisionCone:Rotate(angle) end

---@param obj CollisionObject
---@param res number?
---@param ids number[]?
---@param dbg boolean?
---@return boolean
function VisionCone:Check(obj, res, ids, dbg) end

---@param staticObj any|CollisionObject
function VisionCone:AddStatic(staticObj) end

return vision
