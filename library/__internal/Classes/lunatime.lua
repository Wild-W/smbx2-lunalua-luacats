---@meta _

---The lunatime class handles timing-related functionality, such as getting the current tick or converting between ticks and seconds.
lunatime = {}

---Gets the current game time in ticks since the level or world map was loaded.
---@return number ticks
function lunatime.tick() end

---Gets the current game time in seconds since the level or world map was loaded.
---@return number seconds
function lunatime.time() end

---Gets the current draw time in ticks since the level or world map was loaded. This number counts up while the game is paused.
---@return number ticks
function lunatime.drawtick() end

---Gets the current draw time in seconds since the level or world map was loaded. This number counts while the game is paused.
---@return number seconds
function lunatime.drawtime() end

---Converts the provided number of seconds to ticks.
---@param seconds number
---@return number ticks
function lunatime.toTicks(seconds) end

---Converts the provided number of ticks to seconds.
---@param ticks number
---@return number seconds
function lunatime.toSeconds(ticks) end
