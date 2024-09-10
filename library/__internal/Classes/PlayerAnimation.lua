---@meta _

---@class PlayerAnimation
local pAnim = {}

--- Causes the player to animate according to a defined sequence of frames.
--- @param player Player
--- @param frames table of number The sequence of frames for the animation.
--- @param speed number The speed of the animation.
--- @param loop boolean Whether the animation should loop.
--- @param priority number The rendering priority of the animation.
--- @return PlayerAnimation playerAnimation The animation object.
function pAnim.play(player, frames, speed, loop, priority) end

--- Causes the player to animate according to a defined sequence of frames, interpreting frames as x-y coordinates on the spritesheet.
--- @param player Player
--- @param frames table of number The sequence of frames for the animation, interpreted as x-y coordinates.
--- @param speed number The speed of the animation.
--- @param loop boolean Whether the animation should loop.
--- @param priority number The rendering priority of the animation.
--- @param useCoordinates boolean If true, uses x-y coordinates for the frame on the spritesheet.
--- @return PlayerAnimation playerAnimation The animation object.
function pAnim.play(player, frames, speed, loop, priority, useCoordinates) end

--- Sets the player's current frame on the spritesheet.
--- @param player Player
--- @param frame number The frame to set.
function pAnim.setFrame(player, frame) end

--- Sets the player's current frame on the spritesheet using x and y coordinates.
--- @param player Player
--- @param x number The x coordinate on the spritesheet for the frame.
--- @param y number The y coordinate on the spritesheet for the frame.
function pAnim.setFrame(player, x, y) end

--- Gets the player's current frame as a spritesheet frame.
--- @param player Player
--- @param frame number The frame to retrieve.
--- @return number frame The current frame.
function pAnim.getFrame(player, frame) end

--- Gets the player's current frame as x and y coordinates on the spritesheet.
--- @param player Player
--- @param frame number The frame to retrieve.
--- @return number x, number y The x and y coordinates on the spritesheet for the frame.
function pAnim.getFrame(player, frame) end

--- Converts a spritesheet frame into its corresponding x and y coordinate on the spritesheet.
--- @param frame number The frame number on the spritesheet.
--- @param direction number The direction the sprite is facing.
--- @return number x, number y The x and y coordinates on the spritesheet.
function pAnim.convertFrame(frame, direction) end

function pAnim:pause() end

function pAnim:resume() end

---@return boolean isPlaying
function pAnim:isPlaying() end

---@return boolean success
function pAnim:stop() end

---@return boolean success
function pAnim:update() end

--- Internal event.
function pAnim.onTick() end

--- Internal event.
--- @param idx number
function pAnim.onCameraDraw(idx) end
