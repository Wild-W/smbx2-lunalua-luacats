---@meta _

---The warp class provides fields and functions for managing warps in the current level.
---## Usage
---```lua
---local warps = Warp.get()
---for _, warp in ipairs(warps) do
---    warp.entranceX = player.x
---    warp.entranceY = player.y
---end
---```
Warp = {}

---Returns the number of warps.
---@return number amount
function Warp.count() end

---Returns a table of all warps.
---@return Warp[]
function Warp.get() end

---Returns a table of all warps with entrances within the rectangle defined between (x1,y2) (top-left) and (x2,y2) (bottom-right)
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return Warp[]
function Warp.getIntersectingEntrance(x1, y1, x2, y2) end

---Returns a table of all warps with exits within the rectangle defined between (x1,y2) (top-left) and (x2,y2) (bottom-right)
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return Warp[]
function Warp.getIntersectingExit(x1, y1, x2, y2) end

---@class Warp
local Warp = {}

--- Returns a value of the Warp struct at a specific memory address-offset.
--- @param offset number|WarpMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function Warp:mem(offset, type) end

--- Sets a value of the Warp struct at a specific memory address-offset.
--- @param offset number|WarpMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function Warp:mem(offset, type, value) end

--- X-Coordinate of the warp's entrance.
---@type number
Warp.entranceX = nil

--- Y-Coordinate of the warp's entrance.
---@type number
Warp.entranceY = nil

--- Width of the warp's entrance.
---@type number
Warp.entranceWidth = nil

--- Height of the warp's entrance.
---@type number
Warp.entranceHeight = nil

--- Horizontal speed of the warp's entrance.
---@type number
Warp.entranceSpeedX = nil

--- Vertical speed of the warp's entrance.
---@type number
Warp.entranceSpeedY = nil

--- Direction of the warp's entrance. 1, 2, 3, 4 correspond to up, left, down, right respectively.
---@type number
Warp.entranceDirection = nil

--- Section in which the warp's entrance is located (Read-only).
---@type number
Warp.entranceSection = nil

--- X-Coordinate of the warp's exit.
---@type number
Warp.exitX = nil

--- Y-Coordinate of the warp's exit.
---@type number
Warp.exitY = nil

--- Width of the warp's exit.
---@type number
Warp.exitWidth = nil

--- Height of the warp's exit.
---@type number
Warp.exitHeight = nil

--- Horizontal speed of the warp's exit.
---@type number
Warp.exitSpeedX = nil

--- Vertical speed of the warp's exit.
---@type number
Warp.exitSpeedY = nil

--- Direction of the warp's exit. 1, 2, 3, 4 correspond to up, left, down, right respectively.
---@type number
Warp.exitDirection = nil

--- Section in which the warp's exit is located (Read-only).
---@type number
Warp.exitSection = nil

--- Whether or not the warp is hidden.
---@type boolean
Warp.isHidden = nil

--- Whether or not the warp is a valid object (Read-only).
---@type boolean
Warp.isValid = nil

--- Type of the warp. 0=instant, 1=pipe, 2=door, 3=portal.
---@type number
Warp.warpType = nil

--- The name of the layer the warp is a part of.
---@type string
Warp.layerName = nil

--- The layer object the warp is a part of.
---@type Layer
Warp.layer = nil

--- The name of the level the warp is targeting (if any).
---@type string
Warp.levelFilename = nil

--- The index of the target warp (if targeting a different level).
---@type number
Warp.warpNumber = nil

--- Whether the warp is set to only be used as an entrance from another level.
---@type boolean
Warp.fromOtherLevel = nil

--- Whether the warp is set to only be used as an exit to another level.
---@type boolean
Warp.toOtherLevel = nil

--- The world map x coordinate the warp points to (if any).
---@type number
Warp.worldMapX = nil

--- The world map y coordinate the warp points to (if any).
---@type number
Warp.worldMapY = nil

--- Whether the warp is locked.
---@type boolean
Warp.locked = nil

--- Whether the warp does not allow mounts.
---@type boolean
Warp.noYoshi = nil

--- Whether the warp allows items to be carried through.
---@type boolean
Warp.allowItems = nil

--- Number of stars required to enter the warp.
---@type number
Warp.starsRequired = nil

---@alias WarpMemoryOffset
--- |`0x8A` # Number of stars collected in the level the warp leads to. `FIELD_WORD`
--- |`0x8C` # Total number of stars in the level the warp leads to. `FIELD_WORD`
