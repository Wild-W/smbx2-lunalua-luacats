---@meta autoscroll

local autoscroll = {}

--- Internal event.
function autoscroll._onCameraDraw() end

--- Internal event.
function autoscroll._onLoop() end

---@param section number
---@return boolean
function autoscroll.isSectionScrolling(section) end

---@param playerIdx number?
---@return ...
function autoscroll.lockScreen(playerIdx) end

--- Internal event.
function autoscroll.onInitAPI() end

---
---@param speed number?
---@param boundary number?
---@param section number?
---@return ...
function autoscroll.scrollDown(speed, boundary, section) end

---
---@param speed number?
---@param boundary number?
---@param section number?
---@return ...
function autoscroll.scrollLeft(speed, boundary, section) end

---
---@param speed number?
---@param boundary number?
---@param section number?
---@return ...
function autoscroll.scrollRight(speed, boundary, section) end

---
---@param left number?
---@param bottom number?
---@param speed number?
---@param section number?
---@return ...
function autoscroll.scrollTo(left, bottom, speed, section) end

---
---@param gX1 number?
---@param gY1 number?
---@param gX2 number?
---@param gY2 number?
---@param speed number?
---@param section number?
---@return ...
function autoscroll.scrollToBox(gX1, gY1, gX2, gY2, speed, section) end

---
---@param speed number?
---@param boundary number?
---@param section number?
---@return ...
function autoscroll.scrollUp(speed, boundary, section) end

---
---@param section number?
---@param speed number?
---@return ...
function autoscroll.unlockSection(section, speed) end

---
---@type function
autoscroll.getCameraXY = nil

return autoscroll
