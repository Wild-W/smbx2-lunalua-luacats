---@meta

local handycam = {}

---Converts an easing function (such as those found in `ext/easing`) to the format used by HandyCam.
---@param easeFunc unknown?
---@return function
function handycam.ease(easeFunc) end

---
---@param idx unknown?
---@return ...
function handycam.onCameraDraw(idx) end

---
---@param idx unknown?
---@return ...
function handycam.onCameraUpdate(idx) end

---
---@return ...
function handycam.onDrawEnd() end

---
---@return ...
function handycam.onInitAPI() end

---
---@type boolean
handycam.enableCrispUpscale = nil

return handycam
