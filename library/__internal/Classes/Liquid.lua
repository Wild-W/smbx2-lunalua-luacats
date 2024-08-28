---@meta _

---Lets you access liquid (water, quicksand) boxes in your level.
---## Usage
---```lua
---function onStart()
---    local numberOfLiquids = Liquid.count()
---    Misc.dialog(numberOfLiquids)
---end
---```
Liquid = {}

--- Returns the number of liquid boxes in the level.
---@return number amount The total number of liquid boxes.
function Liquid.count() end

--- Returns a table of all liquid objects in the level.
---@return Liquid[] liquids A table containing all liquid objects.
function Liquid.get() end

--- Returns a table of all liquid boxes within the specified rectangular area.
---@param x1 number The x-coordinate of the top-left corner.
---@param y1 number The y-coordinate of the top-left corner.
---@param x2 number The x-coordinate of the bottom-right corner.
---@param y2 number The y-coordinate of the bottom-right corner.
---@return Liquid[] liquids A table of liquid boxes within the specified area.
function Liquid.getIntersecting(x1, y1, x2, y2) end

--- The liquid object class for manipulating liquid properties.
---@class Liquid
---@field x number The x-coordinate of the liquid box.
---@field y number The y-coordinate of the liquid box.
---@field width number The width of the liquid box.
---@field height number The height of the liquid box.
---@field speedX number The horizontal speed affecting objects within the liquid.
---@field speedY number The vertical speed affecting objects within the liquid.
---@field isHidden boolean Whether the liquid box is hidden.
---@field isValid boolean Whether the liquid box is currently a valid object.
---@field isQuicksand boolean Whether the box is quicksand (true) or water (false).
---@field layerName VBStr The name of the layer the liquid is part of.
---@field layer Layer The layer object the liquid is part of.
local Liquid = {}

--- Returns a value of the Liquid struct at a specific memory address-offset.
--- @param offset number|LiquidMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function Liquid:mem(offset, type) end

--- Sets a value of the Liquid struct at a specific memory address-offset.
--- @param offset number|LiquidMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function Liquid:mem(offset, type, value) end

---@alias LiquidMemoryOffset
---| `0x00` # Name of the layer the liquid box belongs to. `FIELD_STRING`
---| `0x04` # Whether or not this liquid box is hidden. `FIELD_BOOL`
---| `0x06` # Unused. `FIELD_FLOAT`
---| `0x0C` # Whether or not this liquid box is quicksand. `FIELD_WORD`
---| `0x10` # Current x-position. `FIELD_DFLOAT`
---| `0x18` # Current y-position. `FIELD_DFLOAT`
---| `0x20` # Height. `FIELD_DFLOAT`
---| `0x28` # Width. `FIELD_DFLOAT`
---| `0x30` # Current x-speed. `FIELD_DFLOAT`
---| `0x38` #` Current y-speed. `FIELD_DFLOAT
