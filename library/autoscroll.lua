---@meta

local autoscroll = {}

---
---@return ...
function autoscroll._onCameraDraw() end

---
---@return ...
function autoscroll._onLoop() end

---
---@param section unknown?
---@return boolean
function autoscroll.isSectionScrolling(section) end

---
---@param playerIdx unknown?
---@return ...
function autoscroll.lockScreen(playerIdx) end

---
---@return ...
function autoscroll.onInitAPI() end

---
---@param speed unknown?
---@param boundary unknown?
---@param section unknown?
---@return ...
function autoscroll.scrollDown(speed, boundary, section) end

---
---@param speed unknown?
---@param boundary unknown?
---@param section unknown?
---@return ...
function autoscroll.scrollLeft(speed, boundary, section) end

---
---@param speed unknown?
---@param boundary unknown?
---@param section unknown?
---@return ...
function autoscroll.scrollRight(speed, boundary, section) end

---
---@param left unknown?
---@param bottom unknown?
---@param speed unknown?
---@param section unknown?
---@return ...
function autoscroll.scrollTo(left, bottom, speed, section) end

---
---@param gX1 unknown?
---@param gY1 unknown?
---@param gX2 unknown?
---@param gY2 unknown?
---@param speed unknown?
---@param section unknown?
---@return ...
function autoscroll.scrollToBox(gX1, gY1, gX2, gY2, speed, section) end

---
---@param speed unknown?
---@param boundary unknown?
---@param section unknown?
---@return ...
function autoscroll.scrollUp(speed, boundary, section) end

---
---@param section unknown?
---@param speed unknown?
---@return ...
function autoscroll.unlockSection(section, speed) end

---
---@type function
autoscroll.getCameraXY = nil

return autoscroll
