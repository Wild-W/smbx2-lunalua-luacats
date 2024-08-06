---@meta

Animation = {}

---Static function to retrieve the count of animations.
---@return number
function Animation.count() end

---@param x1 number X coordinate of the starting point.
---@param y1 number Y coordinate of the starting point.
---@param x2 number X coordinate of the ending point.
---@param y2 number Y coordinate of the ending point.
---@return Animation[] animations A collection of animation objects intersecting with the specified area.
function Animation.getIntersecting(x1, y1, x2, y2) end

---@param npcID number The ID of the NPC to spawn the effect for.
---@param x number X position to spawn the effect.
---@param y number Y position to spawn the effect.
---@return Animation
function Animation.spawn(npcID, x, y) end

---@param npcID number The ID of the NPC to spawn the effect for.
---@param x number X position to spawn the effect.
---@param y number Y position to spawn the effect.
---@param z number Z depth to spawn the effect.
---@return Animation
function Animation.spawn(npcID, x, y, z) end

---Constructor that initializes an animation with an index.
---@param idx number Index of the animation.
---@return Animation
function Animation(idx) end

---@class Animation
---@field idx number Index of the animation.
---@field id number ID of the animation, can be set.
---@field x number X position of the animation, can be set.
---@field y number Y position of the animation, can be set.
---@field speedX number X-axis speed of the animation, can be set.
---@field speedY number Y-axis speed of the animation, can be set.
---@field width number Width of the animation, can be set.
---@field height number Height of the animation, can be set.
---@field subTimer number Sub-timer for the animation, can be set.
---@field timer number Timer for the animation, can be set.
---@field animationFrame number Frame number of the animation, can be set.
---@field npcID number NPC ID associated with the animation, can be set.
---@field drawOnlyMask boolean Flag indicating whether only the mask should be drawn, can be set.
---@field isValid boolean Indicates if the animation instance is valid.
local Animation = {}

---@param offset number The memory offset from the Animation class.
---@param field_type MemoryFieldType The type of memory to interpret the field as.
---@param value any The value to set to the field.
function Animation:mem(offset, field_type, value) end

---@param offset number The memory offset from the Animation class.
---@param field_type MemoryFieldType @The type of the field to retrieve.
---@return any The value retrieved from the specified field.
function Animation:mem(offset, field_type) end
