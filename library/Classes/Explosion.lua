---@meta

---Explosions are objects that create effects and generally cause destruction.
---They last for only a single frame, and don't exist afterward.
---## Usage
---```
---local explosions = Explosion.get()
---
---local myExplosionID = Explosion.register(64, 10, 43, true, false)
---local newExplosion = Explosion.spawn(player.x, player.y, myExplosionID, player)
---```
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

---@param x number
---@param y number
---@param id number # ID of the explosion
---@param playerIndex number # Index of the player (`0` for P1)
---@param spawnEffect boolean
---@return Explosion newExplosion
function Explosion.create(x, y, id, playerIndex, spawnEffect) end

---Registers a new type of explosion of a specific ID.
---@param id number # ID of the explosion.
---@param radius number # Radius of the explosion.
---@param effectID number
---@param sound number|string
---@param strong boolean # If true, it can break through grey brick blocks (block-457).
---@param friendly boolean # If true, it won't hurt any players.
---@return number id # ID of the new explosion (same as inputted).
function Explosion.register(id, radius, effectID, sound, strong, friendly) end

---Registers a new type of explosion with an automatically assigned ID, and returns that ID.
---@param radius number # Radius of the explosion.
---@param effectID number
---@param sound number|string
---@param strong boolean # If true, it can break through grey brick blocks (block-457).
---@param friendly boolean # If true, it won't hurt any players.
---@return number id # ID of the new explosion.
function Explosion.register(radius, effectID, sound, strong, friendly) end

---@param x number
---@param y number
---@param id number # ID of the explosion
---@param player Player
---@return Explosion? newExplosion
function Explosion.spawn(x, y, id, player) end

---Returns a table of references to all explosions of the given id(s) that are currently active.
---@param id? number|number[] # ID or IDs of the explosion(s)
---@return Explosion[] explosions
function Explosion.get(id) end

---Internal event.
function Explosion.onTickEnd() end

---Internal event.
---@param eventToken EventToken
---@param source Player|NPC
---@param id number # ID of the explosion
---@param playerIndex number # Index of the player (`0` for P1)
function Explosion.onExplosionInternal(eventToken, source, id, playerIndex) end
