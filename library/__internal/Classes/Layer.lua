---@meta _

---Layers are named groups of placeable objects in *Levels*. They can be hidden to deactivate all objects they contain as well as
---have speed values which apply moement to their objects. Layers do not affect the order in which objects are displayed;
---if you're looking for that, check out the [Render Priority](https://docs.codehaus.moe/#/concepts/render-priority) page.
---
---**WARNING:** Except when using the Layer() constructor, Layers are only accessible starting in `onStart`!
--## Usage
---```lua
---function onStart()
---    local defaultLayer = Layer.get("Default")
---end
---```
---@class LayerManager
Layer = {}

--- Returns all existing layers.
---@return Layer[] layers A table containing all layer objects.
function Layer.get() end

--- Returns the Layer object for the specified name.
---@param layerName string The name of the layer to retrieve.
---@return Layer layer The corresponding Layer object, or nil if not found.
function Layer.get(layerName) end

--- Returns a list of all Layers that contain the specified substring in their name.
---@param substring string The substring to search for in the layer names.
---@return table layers A table of Layer objects whose names contain the substring.
function Layer.find(substring) end

--- Constructs a Layer object from its index in the global layer table.
---@param index number The index of the layer in the global layer table.
---@return Layer layer The Layer object at the specified index.
function Layer(index) end

--- Returns the number of Layers in the level.
---@return number count The total number of layers.
function Layer.count() end

--- Checks if any layer's movement has been paused.
---@return boolean isPaused True if any layer's movement is paused, false otherwise.
function Layer.isPaused() end

--- The Layer class in SMBX for manipulating layer properties.
---@class Layer : userdata
---@field name VBStr The name of the layer.
---@field layerName VBStr The name of the layer.
---@field idx number The index of the layer in the internal list.
---@field isHidden boolean Whether the layer is currently hidden.
---@field speedX number Horizontal speed of the layer.
---@field speedY number Vertical speed of the layer.
---@field pauseDuringEffect boolean Whether this layer pauses during game effects.
local Layer = {}

--- Returns a value of the Layer struct at a specific memory address-offset.
--- @param offset number The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function Layer:mem(offset, type) end

--- Sets a value of the Layer struct at a specific memory address-offset.
--- @param offset number The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function Layer:mem(offset, type, value) end

--- Sets the horizontal speed of the layer.
---@param value number The new horizontal speed to set.
function Layer:setSpeedX(value) end

--- Sets the vertical speed of the layer.
---@param value number The new vertical speed to set.
function Layer:setSpeedY(value) end

--- Stops the layer's movements.
function Layer:stop() end

--- Shows the layer.
---@param noSmoke boolean If true, no smoke effect is shown when the layer is displayed.
function Layer:show(noSmoke) end

--- Hides the layer.
---@param noSmoke boolean If true, no smoke effect is shown when the layer is hidden.
function Layer:hide(noSmoke) end

--- Toggles the visibility of the layer.
---@param noSmoke boolean If true, no smoke effect is shown when toggling the layer's visibility.
function Layer:toggle(noSmoke) end

--- Checks if this particular layer's movement has been paused.
---@return boolean isPaused True if this layer's movement is paused, false otherwise.
function Layer:isPaused() end
