---@meta


Timer = {}

--- Enables the timer and sets it to visible. Unpauses the timer if it was paused.
--- If isTicks is true, the timerValue variable will be interpreted as ticks.
--- If timeValue is not provided, this will unpause the timer without changing the time.
---@param timeValue number The time value to set, in seconds or ticks.
---@param isTicks boolean|nil Whether the time value is in ticks (true) or seconds (false or nil).
function Timer.activate(timeValue, isTicks) end

--- Returns whether or not the timer is currently decreasing.
---@return boolean active True if the timer is active, false otherwise.
function Timer.isActive() end

--- Returns whether or not the timer is currently visible on-screen.
---@return boolean visible True if the timer is visible, false otherwise.
function Timer.isVisible() end

--- Pauses the timer and stops drawing it to the screen, thus deactivating it.
function Timer.deactivate() end

--- If the timer is running, this pauses the timer. Else, it unpauses it.
--- This does not affect whether or not the timer is drawn to the screen.
function Timer.toggle() end

--- Sets the active state of the timer. This does not affect whether or not the timer is drawn to the screen.
---@param active boolean The active state to set.
function Timer.setActive(active) end

--- Returns the amount of ticks left on the timer.
---@return number timer The number of ticks remaining.
function Timer.get() end

--- Returns the timer's current display value.
---@return number timer The current timer value displayed.
function Timer.getValue() end

--- Sets the value of the timer to timeValue in seconds.
--- If isTicks is true, timeValue is interpreted as ticks instead.
---@param timeValue number The time value to set.
---@param isTicks boolean? Whether the time value is in ticks (true) or seconds (false or nil).
function Timer.set(timeValue, isTicks) end

--- Adds timeValue to the current timer.
--- If isTicks is true, timeValue is interpreted as ticks instead.
---@param timeValue number The time value to add.
---@param isTicks boolean? Whether the time value is in ticks (true) or seconds (false or nil).
function Timer.add(timeValue, isTicks) end

--- Returns the length of a second in ticks.
---@return number length The length of a second in ticks.
function Timer.getSecondLength() end

--- Sets the length of a second. This manipulates the timer's remaining value to ensure that the displayed number doesn't change.
---@param secondLength number The length of a second in ticks.
function Timer.setSecondLength(secondLength) end

--- By default, the end of the timer causes all active players to die or invokes the "Level - Timer End" event. By overriding the `Timer.onEnd()` function, this behaviour can be replaced.
function Timer.onEnd() end

---When the timer reaches a specific value, a "hurry up" sound is played. To replace this sound, create an audio file named "hurry-up" in your level or episode folder. The file extension can be any audio format supported by SDL Mixer X.
---
---The time at which the sound effect is played (default: 100) can be changed by changing `Timer.hurryTime`.
---@type number
Timer.hurryTime = nil
