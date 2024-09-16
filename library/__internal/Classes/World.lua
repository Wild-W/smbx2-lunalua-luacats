---@meta _

---@class World : userdata
world = {}
---The player's x-coordinate on the world map
---@type number
world.playerX = 0
---The player's y-coordinate on the world map
---@type number
world.playerY = 0
---The direction the player walks in on the overworld. Can be a number between 0 and 4, corresponding to idle, up, left, down and right respectively.
---@type 0|1|2|3|4|number
world.playerWalkingDirection = 0
---The direction the player is currently facing. Between 1 and 4, corresponding to up, left, down and right respectively.
---@type 1|2|3|4|number
world.playerCurrentDirection = 0
---The timer while the player is walking on the map. Naturally increments from 0 to 32 by 2 each frame. If the timer is 32, the player's movement finishes as the game considers this the condition for arriving on the next tile.
---@type number
world.playerWalkingTimer = 0
---The current frame of the player world map animation sprite to be drawn.
---@type number
world.playerWalkingFrame = 0
---The timer of the walking animation, incrementing by 1 per frame for an animation that switches every 8 frames.
---@type number
world.playerWalkingFrameTimer = 0
---Whether or not the player is currently walking.
---@type boolean
world.playerIsCurrentlyWalking = false
---The name of the level the player currently is standing on. Nil if the player is moving.
---
---**Read only**
---@type VBStr?
world.levelTitle = ""
---The level object the player currently is standing on. Nil if the player is moving.
---
---**Read only**
---@type Level?
world.levelObj = nil

--- Returns a value of the World struct at a specific memory address-offset.
--- @param offset number The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function world:mem(offset, type) end

--- Sets a value of the World struct at a specific memory address-offset.
--- @param offset number The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function world:mem(offset, type, value) end
