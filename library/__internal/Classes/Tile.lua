---@meta _

Tile = {}

--- Returns the number of tile items.
---@return number amount The number of tiles.
function Tile.count() end

--- Returns a table of all tile items.
---@return Tile[] tiles A table containing all tiles.
function Tile.get() end

--- Returns a table of all tile items with matching IDs.
---@param ids number|table<number> The ID or table of IDs to filter tiles.
---@return Tile[] tiles A table containing tiles with the specified IDs.
function Tile.get(ids) end

--- Returns a table of all tile items within the specified rectangular area.
---@param x1 number The X-coordinate of the top-left corner of the rectangle.
---@param y1 number The Y-coordinate of the top-left corner of the rectangle.
---@param x2 number The X-coordinate of the bottom-right corner of the rectangle.
---@param y2 number The Y-coordinate of the bottom-right corner of the rectangle.
---@return Tile[] tiles A table containing tiles within the specified area.
function Tile.getIntersecting(x1, y1, x2, y2) end

---@class Tile
local Tile = {}

--- ID of the tile item.
---@type number
Tile.id = nil

--- X-Coordinate of the tile.
---@type number
Tile.x = nil

--- Y-Coordinate of the tile.
---@type number
Tile.y = nil

--- Width of the tile item.
---@type number
Tile.width = nil

--- Height of the tile item.
---@type number
Tile.height = nil

--- Whether or not the tile item is a valid object. Should be used when retrieving the object from a self-made variable on ticks after the frame Tile.get was used to retrieve it.
---@type boolean
Tile.isValid = nil

--- The tile's index within the internal list of tiles.
---@type number
Tile.idx = nil

--- Returns a value of the Tile struct at a specific memory address-offset.
--- @param offset number|TileMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function Tile:mem(offset, type) end

--- Sets a value of the Tile struct at a specific memory address-offset.
--- @param offset number|TileMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function Tile:mem(offset, type, value) end

---@alias TileMemoryOffset
--- | `0x00` # Tile X-Position. Use field `x`. `FIELD_DFLOAT`
--- | `0x08` # Tile Y-Position. Use field `y`. `FIELD_DFLOAT`
--- | `0x10` # Tile Width. Use field `width`. `FIELD_DFLOAT`
--- | `0x18` # Tile Height. Use field `height`. `FIELD_DFLOAT`
--- | `0x20` # Tile X-Speed (changing has no actual effect). `FIELD_DFLOAT`
--- | `0x28` # Tile Y-Speed (changing has no actual effect). `FIELD_DFLOAT`
--- | `0x30` # The ID of the scenery. Use field `id`. `FIELD_WORD`
--- | `0x32` # Reserved for future use or unknown functionality. `FIELD_WORD`
