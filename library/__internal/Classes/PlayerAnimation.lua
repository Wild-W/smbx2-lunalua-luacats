---@meta _

---@class PlayerAnimation
local PlayerAnimation = {}

function PlayerAnimation:pause() end

function PlayerAnimation:resume() end

---@return boolean isPlaying
function PlayerAnimation:isPlaying() end

---@return boolean success
function PlayerAnimation:stop() end

---@return boolean success
function PlayerAnimation:update() end
