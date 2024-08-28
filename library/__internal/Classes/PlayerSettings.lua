---@meta _

---PlayerSettings objects store the information from player hitbox ini files.
PlayerSettings = {}

--- Returns the PlayerSettings object for the specified character and powerup.
--- @param character number The character ID.
--- @param powerup number The powerup ID.
--- @return PlayerSettings settings The settings object for the character and powerup.
function PlayerSettings.get(character, powerup) end

---@class PlayerSettings
--- Width of the player's hitbox. This value is consistent regardless of the player frame.
--- @field hitboxWidth number
--- Height of the player's hitbox when not ducking.
--- @field hitboxHeight number
--- Height of the player's hitbox when ducking.
--- @field hitboxDuckHeight number
--- Horizontal offset for held items, assuming the player is facing right. This only takes effect if not configured to hold items overhead.
--- @field grabOffsetX number
--- Vertical offset for held items. This only takes effect if not configured to hold items overhead.
--- @field grabOffsetY number
local PlayerSettings = {}

--- Returns the x-offset of the player hitbox for the spritesheet frame indexed by indexX and indexY.
--- @param indexX number The x-index of the frame (0-9).
--- @param indexY number The y-index of the frame (0-9).
--- @return number xOffset The x-offset of the player hitbox.
function PlayerSettings:getSpriteOffsetX(indexX, indexY) end

--- Returns the y-offset of the player hitbox for the spritesheet frame indexed by indexX and indexY.
--- @param indexX number The x-index of the frame (0-9).
--- @param indexY number The y-index of the frame (0-9).
--- @return number yOffset The y-offset of the player hitbox.
function PlayerSettings:getSpriteOffsetY(indexX, indexY) end

--- Sets the value of the x-offset of the player hitbox for the spritesheet frame indexed by indexX and indexY.
--- @param indexX number The x-index of the frame (0-9).
--- @param indexY number The y-index of the frame (0-9).
--- @param value number The new x-offset value.
function PlayerSettings:setSpriteOffsetX(indexX, indexY, value) end

--- Sets the value of the y-offset of the player hitbox for the spritesheet frame indexed by indexX and indexY.
--- @param indexX number The x-index of the frame (0-9).
--- @param indexY number The y-index of the frame (0-9).
--- @param value number The new y-offset value.
function PlayerSettings:setSpriteOffsetY(indexX, indexY, value) end
