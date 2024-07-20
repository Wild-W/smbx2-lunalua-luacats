---@meta


---Blocks are the terrain pieces for levels.
Block = {}

--- Returns a table of references to all Blocks in the level.
--- @return table<number, Block> blocks A table of all Blocks.
function Block.get() end

--- Returns a table of references to all Blocks of the given id(s).
--- @param ids number|table<number> The ID(s) of the Blocks to retrieve.
--- @return table<number, Block> blocks A table of all Blocks with the given ID(s).
function Block.get(ids) end

--- Returns a table of references to all Blocks that are within the rectangle defined by the 4 coordinates, where x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The x-coordinate of the top-left corner of the rectangle.
--- @param y1 number The y-coordinate of the top-left corner of the rectangle.
--- @param x2 number The x-coordinate of the bottom-right corner of the rectangle.
--- @param y2 number The y-coordinate of the bottom-right corner of the rectangle.
--- @return table<number, Block> blocks A table of all Blocks within the specified rectangle.
function Block.getIntersecting(x1, y1, x2, y2) end

--- Returns a table of references to all Blocks of the given id(s). Unlike `get`, the table in this should be formatted as a lookup table, where the Block indices are the keys.
--- @param idMap table<number, boolean> A lookup table where Block indices are the keys.
--- @return table<number, Block> blocks A table of all Blocks with the given ID(s).
function Block.getByFilterMap(idMap) end

--- Returns an iterator for iterating over a table of references to all Blocks in the level.
--- @return fun():Block An iterator for all Blocks.
function Block.iterate() end

--- Returns an iterator for iterating over a table of references to all Blocks of the given id(s).
--- @param ids number|table<number> The ID(s) of the Blocks to retrieve.
--- @return fun():Block An iterator for all Blocks with the given ID(s).
function Block.iterate(ids) end

--- Returns an iterator for iterating over a table of references to all Blocks that are within the rectangle defined by the 4 coordinates, where x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The x-coordinate of the top-left corner of the rectangle.
--- @param y1 number The y-coordinate of the top-left corner of the rectangle.
--- @param x2 number The x-coordinate of the bottom-right corner of the rectangle.
--- @param y2 number The y-coordinate of the bottom-right corner of the rectangle.
--- @return fun():Block An iterator for all Blocks within the specified rectangle.
function Block.iterateIntersecting(x1, y1, x2, y2) end

--- Returns an iterator for iterating over a table of references to all Blocks of the given id(s). Unlike `iterate`, the table in this should be formatted as a lookup table, where the Block indices are the keys.
--- @param idMap table<number, boolean> A lookup table where Block indices are the keys.
--- @return fun():Block An iterator for all Blocks with the given ID(s).
function Block.iterateByFilterMap(idMap) end

--- Spawns a new block at the given coordinates.
--- @param id number The ID of the Block to spawn.
--- @param x number The x-coordinate to spawn the Block at.
--- @param y number The y-coordinate to spawn the Block at.
--- @return Block block The spawned Block.
function Block.spawn(id, x, y) end

---@type table<number, BlockConfig>
Block.config = {}

---@alias BlockClassification
--- | `Block.SOLID`
--- | `Block.NONSOLID`
--- | `Block.SEMISOLID`
--- | `Block.SIZEABLE`
--- | `Block.HURT`
--- | `Block.LAVA`
--- | `Block.PLAYER`
--- | `Block.PLAYERSOLID`
--- | `Block.MEGA_SMASH`
--- | `Block.MEGA_HIT`
--- | `Block.MEGA_STURDY`
--- | `Block.SLOPE_LR_FLOOR`
--- | `Block.SLOPE_RL_FLOOR`
--- | `Block.SLOPE_LR_CEIL`
--- | `Block.SLOPE_RL_CEIL`
--- | `Block.SLOPE`
--- | `Block.COLLIDABLE`
--- | `Block.EDIBLEBYVINE`

---@type boolean
Block.SOLID = nil
---@type boolean
Block.NONSOLID = nil
---@type boolean
Block.SEMISOLID = nil
---@type boolean
Block.SIZEABLE = nil
---@type boolean
Block.HURT = nil
---@type boolean
Block.LAVA = nil
---@type boolean
Block.PLAYER = nil
---@type boolean
Block.PLAYERSOLID = nil
---@type boolean
Block.MEGA_SMASH = nil
---@type boolean
Block.MEGA_HIT = nil
---@type boolean
Block.MEGA_STURDY = nil
---@type boolean
Block.SLOPE_LR_FLOOR = nil
---@type boolean
Block.SLOPE_RL_FLOOR = nil
---@type boolean
Block.SLOPE_LR_CEIL = nil
---@type boolean
Block.SLOPE_RL_CEIL = nil
---@type boolean
Block.SLOPE = nil
---@type boolean
Block.COLLIDABLE = nil
---@type boolean
Block.EDIBLEBYVINE = nil

---@type table<number, BlockClassification>
Block.classifications = {}

---@class Block : CollisionObject
local BlockInstance = {}

--- Returns a value of the Block struct at a specific memory address-offset.
--- @param offset number|BlockMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function BlockInstance:mem(offset, type) end

--- Sets a value of the Block struct at a specific memory address-offset.
--- @param offset number|BlockMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
--- @return nil
function BlockInstance:mem(offset, type, value) end

--- Checks collision with the given player and returns a number corresponding to the collision direction.
--- 0, 1, 2, 3 and 4 correspond to "no collision", "player on block", "player on the right", "player below" and "player on the left" respectively.
--- @param collidingPlayer Player The player to check collision with.
--- @return number collidingDir The direction of the collision.
function BlockInstance:collidesWith(collidingPlayer) end

--- Causes the block to be destroyed. If playSoundAndEffect is true, the brick effect and sound are played.
--- This method moves the block onto the Destroyed Blocks layer.
--- @param playSoundAndEffect boolean Whether to play the sound and effect.
--- @return nil
function BlockInstance:remove(playSoundAndEffect) end

--- Deletes the block entirely.
--- @return nil
function BlockInstance:delete() end

--- Causes the block to be hit. The three optional arguments allow the block to be hit from above, let you configure which player is causing the hit, and the number of times the block gets hit.
--- Even if the player is nil, this event will default to the first player.
--- @param fromUpSide boolean Whether the block is hit from above.
--- @param hittingPlayer Player The player hitting the block.
--- @param hitCount number The number of times the block is hit.
--- @return nil
function BlockInstance:hit(fromUpSide, hittingPlayer, hitCount) end

--- Causes the block to be hit. The optional arguments allow the block to be hit from above and the number of times the block gets hit.
--- @param fromUpSide boolean Whether the block is hit from above.
--- @param hitCount number The number of times the block is hit.
--- @return nil
function BlockInstance:hitWithoutPlayer(fromUpSide, hitCount) end

--- Bumps the block. May optionally be bumped from the top. A strong bump causes the block to be bumped twice as strongly.
--- @param fromUpSide boolean Whether the block is bumped from the top.
--- @param strong boolean Whether the bump is strong.
--- @return nil
function BlockInstance:bump(fromUpSide, strong) end

--- Moves the block by dx on the x-axis and dy on the y-axis. Returns the block.
--- @param dx number The distance to move the block on the x-axis.
--- @param dy number The distance to move the block on the y-axis.
--- @return Block block The moved block.
function BlockInstance:translate(dx, dy) end

--- Transforms the Block into a Block of a different ID. Centered defaults to true and will cause the transformation to happen relative to the center of the old and new Block sizes.
--- @param newID number The new Block ID.
--- @param centered boolean Whether to transform centered. Defaults to true.
--- @return nil
function BlockInstance:transform(newID, centered) end

--- Changes the height of the block while correctly setting the block array unsorted flag (prevents collision glitches that occur when setting .width and .height).
--- @param width number The new width of the block.
--- @param height number The new height of the block.
--- @return Block thisBlock The resized block.
function BlockInstance:setSize(width, height) end

--- Prints the current state of a Block's memory addresses to the screen for debugging. If the arguments are not specified, they default to the minimum and maximum values respectively.
--- @param lowerBound number The lower bound of the memory addresses.
--- @param upperBound number The upper bound of the memory addresses.
--- @return nil
function BlockInstance:memdump(lowerBound, upperBound) end

--- Logs the current state of a Block's memory addresses into a file in the data/logs directory. If the arguments are not specified, they default to the minimum and maximum values respectively.
--- @param lowerBound number The lower bound of the memory addresses.
--- @param upperBound number The upper bound of the memory addresses.
--- @return nil
function BlockInstance:memlog(lowerBound, upperBound) end

---@type boolean
BlockInstance.isValid = false

---@type number
BlockInstance.idx = 0

---@type number
BlockInstance.id = 0

---@type table
BlockInstance.data = {}

---@type number
BlockInstance.x = 0

---@type number
BlockInstance.y = 0

---@type number
BlockInstance.width = 0

---@type number
BlockInstance.height = 0

---@type number
BlockInstance.speedX = 0

---@type number
BlockInstance.speedY = 0

---@type number
BlockInstance.contentID = 0

---@type Layer
BlockInstance.layerObj = nil

---@type string
BlockInstance.layerName = ""

---@type boolean
BlockInstance.isHidden = false

---@type boolean
BlockInstance.invisible = false

---@type boolean
BlockInstance.slippery = false

---@type number
BlockInstance.layerSpeedX = 0

---@type number
BlockInstance.layerSpeedY = 0

---@type number
BlockInstance.extraSpeedX = 0

---@type number
BlockInstance.extraSpeedY = 0

---@type LightSource
BlockInstance.lightSource = nil

---@type string
BlockInstance.collisionGroup = ""

---@type number
BlockInstance.collisionGroupIndex = 0

---@alias BlockMemoryOffset
--- | `0x00` # Toggles block slipperiness. Use field slippery.
--- | `0x02` # Respawn delay. If over 0, counts up and will eventually restore properties such as layer, ID, and contents. Only ever set in battle mode.
--- | `0x04` # How often the block gets hit (for example when Toad hits the block).
--- | `0x06` # ID at the start of the game.
--- | `0x08` # Content ID at the start of the game.
--- | `0x0C` # Event that triggers when the block is hit.
--- | `0x10` # Event that triggers when the block is destroyed.
--- | `0x14` # Event that triggers when there are no more objects on the block's layer.
--- | `0x18` # Name of the layer that the block belongs to. Use field layerName.
--- | `0x1C` # Whether or not the block is hidden. Use field isHidden or invisible.
--- | `0x1E` # ID. Use field id.
--- | `0x20` # x. Use field x.
--- | `0x28` # y. Use field y.
--- | `0x30` # Height. Use field height.
--- | `0x38` # Width. Use field width.
--- | `0x40` # Horizontal Speed. Use field speedX.
--- | `0x48` # Vertical Speed. Use field speedY.
--- | `0x50` # Content ID. Use field contentID.
--- | `0x52` # Timer for the first half of the bonk animation. Sum with 0x54 for the y offset of the bonk.
--- | `0x54` # Timer for the second half of the bonk animation. Sum with 0x52 for the y offset of the bonk.
--- | `0x56` # Y-Offset of the bonking animation. Should equal -(0x52 + 0x54).
--- | `0x58` # True when the block is marked for removal/getting hit.
--- | `0x5A` # Whether or not the block is marked as invisible in the editor.
--- | `0x5C` # Stores the ID of the NPC this block was before a P-Switch was activated.
--- | `0x5E` # Stores the ID of the Player this block belongs to. Used by the Clown Car mount (Player in Clown Car has a block associated with it).
--- | `0x60` # Stores the ID of the NPC this block belongs to. Used by things like conveyor belts and the clown car (Certain NPCs also have blocks, too).
--- | `0x62` # Set by NPCs standing on the block.
--- | `0x64` # Related to block collisions with NPCs. Possibly used to counteract an obscure glitch (?)
--- | `0x66` # Index of the NPC this block belongs to in the NPC array.
