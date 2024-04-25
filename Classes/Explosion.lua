---@meta


---@class Explosion
---@field friendly boolean # Whether it can hurt players.
---@field strong boolean # Whether it can break grey brick blocks (block-457).
---@field id number # ID of the explosion
---@field collider CircleCollider # A circle collider representing the explosion hitbox.
---@field x number # The X position of the explosion's centre.
---@field y number # The Y position of the explosion's centre.
---@field timer number
---@field effect Effect?
Explosion = {}

---@param x any
---@param y any
---@param id any
---@param playeridx any
---@param spawnEffect any
function Explosion.create(x, y, id, playeridx, spawnEffect) end

---@param id any
---@param radius any
---@param effectID any
---@param sound any
---@param isstrong any
---@param isfriendly any
function Explosion.register(id, radius, effectID, sound, isstrong, isfriendly) end

---@param x number
---@param y number
---@param id number # ID of the explosion
---@param player Player
---@return Explosion|nil newExplosion
function Explosion.spawn(x, y, id, player) end

---@param id? number|number[] # ID or IDs of the explosion(s)
---@return Explosion[] explosions
function Explosion.get(id) end

function Explosion.onTickEnd() end

---@param obj any
---@param src any
---@param kind any
---@param plyrIdx any
function Explosion.onExplosionInternal(obj, src, kind, plyrIdx) end
