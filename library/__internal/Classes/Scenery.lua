---@meta _

---The scenery class lets you access scenery objects on the overworld.
Scenery = {}

--- Returns the number of scenery items.
---@return number amount The number of scenery items.
function Scenery.count() end

--- Returns a table of all scenery items.
---@return table sceneries A table of all scenery items.
function Scenery.get() end

--- Returns a table of all scenery items of the matching IDs.
---@param ids number|table IDs of the scenery items to retrieve.
---@return table sceneries A table of scenery items matching the IDs.
function Scenery.get(ids) end

--- Returns a table of all scenery items within the defined rectangle.
---@param x1 number The x-coordinate of the top-left corner.
---@param y1 number The y-coordinate of the top-left corner.
---@param x2 number The x-coordinate of the bottom-right corner.
---@param y2 number The y-coordinate of the bottom-right corner.
---@return table sceneries A table of scenery items within the rectangle.
function Scenery.getIntersecting(x1, y1, x2, y2) end

--- The scenery object class.
---@class Scenery
---@field id number The ID of the scenery item.
---@field x number The x-coordinate of the scenery.
---@field y number The y-coordinate of the scenery.
---@field width number The width of the scenery.
---@field height number The height of the scenery.
---@field isValid boolean Whether the scenery is currently a valid object.
---@field idx number The index of the scenery within the internal list.
local Scenery = {}

--- Returns a value of the Scenery struct at a specific memory address-offset.
--- @param offset number|SceneryMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function Scenery:mem(offset, type) end

--- Sets a value of the Scenery struct at a specific memory address-offset.
--- @param offset number|SceneryMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function Scenery:mem(offset, type, value) end

--- Memory offsets for Scenery instance fields.
---@alias SceneryMemoryOffset
--- | `0x00` # Scenery X-Position. Use field `x`. `FIELD_DFLOAT`
--- | `0x08` # Scenery Y-Position. Use field `y`. `FIELD_DFLOAT`
--- | `0x10` # Scenery Width. Use field `width`. `FIELD_DFLOAT`
--- | `0x18` # Scenery Height. Use field `height`. `FIELD_DFLOAT`
--- | `0x20` # Scenery X-Speed (no effect). `FIELD_DFLOAT`
--- | `0x28` # Scenery Y-Speed (no effect). `FIELD_DFLOAT`
--- | `0x30` # The ID of the scenery. Use field `id`. `FIELD_WORD`
--- | `0x32` # Whether the scenery is currently visible. `FIELD_BOOL`
