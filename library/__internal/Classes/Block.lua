---@meta _

---Blocks are the terrain pieces for levels.
Block = {}

--- Returns a table of references to all Blocks in the level.
--- @return Block[] blocks A list of all Blocks.
function Block.get() end

--- Returns a table of references to all Blocks of the given id(s).
--- @param ids integer|integer[] The ID(s) of the Blocks to retrieve.
--- @return Block[] blocks A list of all Blocks with the given ID(s).
function Block.get(ids) end

--- Returns a table of references to all Blocks that are within the rectangle defined by the 4 coordinates, where x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The x-coordinate of the top-left corner of the rectangle.
--- @param y1 number The y-coordinate of the top-left corner of the rectangle.
--- @param x2 number The x-coordinate of the bottom-right corner of the rectangle.
--- @param y2 number The y-coordinate of the bottom-right corner of the rectangle.
--- @return Block[] blocks A table of all Blocks within the specified rectangle.
function Block.getIntersecting(x1, y1, x2, y2) end

--- Returns a table of references to all Blocks of the given id(s). Unlike `get`, the table in this should be formatted as a lookup table, where the Block indices are the keys.
--- @param idMap table<integer, boolean> A lookup table where Block indices are the keys.
--- @return Block[] blocks A table of all Blocks with the given ID(s).
function Block.getByFilterMap(idMap) end

--- Returns an iterator for iterating over a table of references to all Blocks in the level.
--- @return fun():Block An iterator for all Blocks.
function Block.iterate() end

--- Returns an iterator for iterating over a table of references to all Blocks of the given id(s).
--- @param ids integer|integer[] The ID(s) of the Blocks to retrieve.
--- @return fun():Block An iterator for all Blocks with the given ID(s).
function Block.iterate(ids) end

--- Returns an iterator for iterating over a table of references to all Blocks of the given id(s).
--- @param ids integer|integer[] The ID(s) of the Blocks to retrieve.
--- @return fun():Block An iterator for all Blocks with the given ID(s).
function Block.iterate(ids, sections) end

--- Returns an iterator for iterating over a table of references to all Blocks that are within the rectangle defined by the 4 coordinates, where x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The x-coordinate of the top-left corner of the rectangle.
--- @param y1 number The y-coordinate of the top-left corner of the rectangle.
--- @param x2 number The x-coordinate of the bottom-right corner of the rectangle.
--- @param y2 number The y-coordinate of the bottom-right corner of the rectangle.
--- @return fun():Block An iterator for all Blocks within the specified rectangle.
function Block.iterateIntersecting(x1, y1, x2, y2) end

--- Returns an iterator for iterating over a table of references to all Blocks of the given id(s). Unlike `iterate`, the table in this should be formatted as a lookup table, where the Block indices are the keys.
--- @param idMap table<integer, boolean> A lookup table where Block indices are the keys.
--- @return fun():Block An iterator for all Blocks with the given ID(s).
function Block.iterateByFilterMap(idMap) end

--- Spawns a new block at the given coordinates.
--- @param id integer The ID of the Block to spawn.
--- @param x number The x-coordinate to spawn the Block at.
--- @param y number The y-coordinate to spawn the Block at.
--- @return Block block The spawned Block.
function Block.spawn(id, x, y) end

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

---@type integer[]
Block.SOLID = nil
---@type integer[]
Block.NONSOLID = nil
---@type integer[]
Block.SEMISOLID = nil
---@type integer[]
Block.SIZEABLE = nil
---@type integer[]
Block.HURT = nil
---@type integer[]
Block.LAVA = nil
---@type integer[]
Block.PLAYER = nil
---@type integer[]
Block.PLAYERSOLID = nil
---@type integer[]
Block.MEGA_SMASH = nil
---@type integer[]
Block.MEGA_HIT = nil
---@type integer[]
Block.MEGA_STURDY = nil
---@type integer[]
Block.SLOPE_LR_FLOOR = nil
---@type integer[]
Block.SLOPE_RL_FLOOR = nil
---@type integer[]
Block.SLOPE_LR_CEIL = nil
---@type integer[]
Block.SLOPE_RL_CEIL = nil
---@type integer[]
Block.SLOPE = nil
---@type integer[]
Block.COLLIDABLE = nil
---@type integer[]
Block.EDIBLEBYVINE = nil

---@type table<integer, boolean>
Block.SOLID_MAP = {}

---@type table<integer, boolean>
Block.bumpable = {}

---@type table<integer, boolean>
Block.EDIBLEBYVINE_MAP = {}

---@type table<integer, boolean>
Block.COLLIDABLE_MAP = {}

---@type table<integer, boolean>
Block.INTERSECTABLE_MAP = {}

---@type table<integer, boolean>
Block.MEGA_STURDY_MAP = {}

---@type table<integer, boolean>
Block.SEMISOLID_MAP = {}

---@type table<integer, boolean>
Block.HURT_MAP = {}

---@type table<integer, boolean>
Block.MEGA_SMASH_MAP = {}

---@type table<integer, boolean>
Block.PLAYER_MAP = {}

---@type table<integer, BlockConfig|table<string, any>>
Block.config = {}

---@type table<integer, boolean>
Block.MEGA_HIT_MAP = {}

Block.maskFilter = {
	---@type boolean
	solid = true,
	---@type boolean
	sizable = true,
	---@type boolean
	noshadows = true,
}

---@type table<integer, boolean>
Block.SLOPE_MAP = {}

---@type table<integer, boolean>
Block.NONSOLID_MAP = {}

---@type table<integer, boolean>
Block.LAVA_MAP = {}

---@type table<integer, boolean>
Block.SLOPE_LR_FLOOR_MAP = {}

---@type table<integer, boolean>
Block.SLOPE_RL_FLOOR_MAP = {}

---@type table<integer, boolean>
Block.PLAYERSOLID_MAP = {}

---@type table<integer, boolean>
Block.SIZEABLE_MAP = {}

---@type table<integer, boolean>
Block.SLOPE_RL_CEIL_MAP = {}

---@type table<integer, boolean>
Block.SLOPE_LR_CEIL_MAP = {}

---@type table<integer, BlockClassification>
Block.classifications = {}

---@class Block : CollisionObject
local Block = {}

---@param ... unknown
---@return ...
function Block.countSizable(...) end

---@param ... unknown
---@return ...
function Block.makeDefaultSettings(...) end

---@param ... unknown
---@return ...
function Block.getColliding(...) end

---@param ... unknown
---@return ...
function Block.registerEvent(...) end

---@param ... unknown
---@return ...
function Block.count(...) end

--- Returns a value of the Block struct at a specific memory address-offset.
--- @param offset integer|BlockMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function Block:mem(offset, type) end

--- Sets a value of the Block struct at a specific memory address-offset.
--- @param offset integer|BlockMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function Block:mem(offset, type, value) end

--- Checks collision with the given player and returns a number corresponding to the collision direction.
--- 0, 1, 2, 3 and 4 correspond to "no collision", "player on block", "player on the right", "player below" and "player on the left" respectively.
--- @param collidingPlayer Player The player to check collision with.
--- @return number collidingDir The direction of the collision.
function Block:collidesWith(collidingPlayer) end

--- Causes the block to be destroyed. If playSoundAndEffect is true, the brick effect and sound are played.
--- This method moves the block onto the Destroyed Blocks layer.
--- @param playSoundAndEffect boolean? Whether to play the sound and effect.
function Block:remove(playSoundAndEffect) end

--- Deletes the block entirely.
function Block:delete() end

--- Causes the block to be hit. The three optional arguments allow the block to be hit from above, let you configure which player is causing the hit, and the number of times the block gets hit.
--- Even if the player is nil, this event will default to the first player.
--- @param fromUpSide? boolean Whether the block is hit from above.
--- @param hittingPlayer? Player The player hitting the block.
--- @param hitCount? number The number of times the block is hit.
function Block:hit(fromUpSide, hittingPlayer, hitCount) end

--- Causes the block to be hit. The optional arguments allow the block to be hit from above and the number of times the block gets hit.
--- @param fromUpSide boolean Whether the block is hit from above.
--- @param hitCount number The number of times the block is hit.
function Block:hitWithoutPlayer(fromUpSide, hitCount) end

---@param ... unknown
---@return ...
function Block.iterateSizeable(...) end

---@param ... unknown
---@return ...
function Block.iterateSizable(...) end

---@param ... unknown
---@return ...
function Block.countSizeable(...) end

---@param ... unknown
---@return ...
function Block.collide(...) end

---@param ... unknown
---@return ...
function Block._SetVanillaSizableRenderFlag(...) end

--- Bumps the block. May optionally be bumped from the top. A strong bump causes the block to be bumped twice as strongly.
--- @param fromUpSide boolean Whether the block is bumped from the top.
--- @param strong boolean Whether the bump is strong.
function Block:bump(fromUpSide, strong) end

--- Moves the block by dx on the x-axis and dy on the y-axis. Returns the block.
--- @param dx number The distance to move the block on the x-axis.
--- @param dy number The distance to move the block on the y-axis.
--- @return Block block The moved block.
function Block:translate(dx, dy) end

--- Transforms the Block into a Block of a different ID. Centered defaults to true and will cause the transformation to happen relative to the center of the old and new Block sizes.
--- @param newID number The new Block ID.
--- @param centered boolean Whether to transform centered. Defaults to true.
function Block:transform(newID, centered) end

--- Changes the height of the block while correctly setting the block array unsorted flag (prevents collision glitches that occur when setting .width and .height).
--- @param width number The new width of the block.
--- @param height number The new height of the block.
--- @return Block thisBlock The resized block.
function Block:setSize(width, height) end

--- Prints the current state of a Block's memory addresses to the screen for debugging. If the arguments are not specified, they default to the minimum and maximum values respectively.
--- @param lowerBound number The lower bound of the memory addresses.
--- @param upperBound number The upper bound of the memory addresses.
function Block:memdump(lowerBound, upperBound) end

--- Logs the current state of a Block's memory addresses into a file in the data/logs directory. If the arguments are not specified, they default to the minimum and maximum values respectively.
--- @param lowerBound number The lower bound of the memory addresses.
--- @param upperBound number The upper bound of the memory addresses.
function Block:memlog(lowerBound, upperBound) end

---@type boolean
Block.isValid = false

---@type integer
Block.idx = 0

---@type number
Block.id = 0

---@type table
Block.data = {}

---@type number
Block.x = 0

---@type number
Block.y = 0

---@type number
Block.width = 0

---@type number
Block.height = 0

---@type number
Block.speedX = 0

---@type number
Block.speedY = 0

---@type number
Block.contentID = 0

---@type Layer
Block.layerObj = nil

---@type VBStr|string
Block.layerName = nil

---@type boolean
Block.isHidden = false

---@type boolean
Block.invisible = false

---@type boolean
Block.slippery = false

---@type number
Block.layerSpeedX = 0

---@type number
Block.layerSpeedY = 0

---@type number
Block.extraSpeedX = 0

---@type number
Block.extraSpeedY = 0

---@type Light
Block.lightSource = nil

---@type VBStr|string
Block.collisionGroup = nil

---@type number
Block.collisionGroupIndex = 0

Block.__type = "Block"

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

--- Configuration class for customizing block behavior and appearance in-game.
---@class BlockConfig : LightConfig
---@field frames number Number of frames of the block animation. For blocks, frames are defined to be a fixed 32 pixels tall. Default: 1
---@field framespeed number The amount of ticks it takes for the block animation frame to change. Lower numbers = faster animation. Default: 8
---@field width number The width of the block. Default: Inferred from sprite
---@field height number The height of the block. Default: Inferred from sprite
---@field sizable boolean Whether or not the block is sizable. Sizables are always considered semisolid. Default: false
---@field semisolid boolean Whether or not the block is a semisolid. Default: false
---@field passthrough boolean If true, the block has no collision. Default: false
---@field lava boolean If true, the block acts as lava. Default: false
---@field floorslope number -1, 0, and 1 depending on the direction of the floor slope. Default: 0
---@field ceilingslope number -1, 0, and 1 depending on the direction of the ceiling slope. Default: 0
---@field walkpaststair boolean A player approaching a semisolid slope setting this flag to true will not ascend the slope if the slope is touching ground. Default: false
---@field bumpable boolean If true, the block can be bumped by players and NPCs. Default: false
---@field playerfilter CharacterType Character ID that is allowed to pass through this block. -1 means all character IDs. Default: 0
---@field npcfilter number NPC ID that is allowed to pass through this block. -1 means all NPC IDs. Default: 0
---@field pswitchable boolean If true, the block turns into a coin when a P-Switch is hit. Default: false
---@field smashable number Determines how durable the block should be with regards to certain NPCs that break blocks. Can be a number between 0 and 3. Default: 0
---@field customhurt boolean Set to true to register your block as part of the list of harmful blocks. Default: false
---@field noshadows boolean If set to true, the block will not be able to cast shadows in dark sections. Default: false
---@field ediblebyvine boolean If set to true, the block can be eaten by Mutant Vine NPCs. Default: false
---@field flashcolor Color The color the TNT or Nitro block flashes in. Default: white
---@field randomflashes boolean Whether flashes should randomly occur during gameplay. Default: false
---@field randomjumps boolean Whether the block should randomly appear to jump in place. Default: false
---@field speed number A positive value representing the conveyor speed. Default: 0
---@field direction DirectionType The direction the conveyor should push. Default: 0
---@field ignoreplayers boolean If true, players are unable to trigger the brittle block. Default: false
---@field ignorenpcs boolean If true, NPCs are unable to trigger the brittle block. Default: false
---@field triggerweight number The minimum weight an object needs to trigger the destruction animation. Default: 2
---@field effectid number The ID of the effect to spawn once the block is removed. Default: 0
---@field hitid number The Block ID to turn into once hit. Default: No change
---@field offswitchid number The Block ID of the "off" switch state. Default: /
---@field onswitchid number The Block ID of the "on" switch state. Default: /
---@field color string String representation of the color to use. Unrecognized color names will be registered as new colors. Default: /
