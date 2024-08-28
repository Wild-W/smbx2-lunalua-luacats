---@meta _

---The achievements class exposes fields and functions for accessing and manipulating per-episode achievement information.
---@class Achievements
Achievements = {}

--- Returns a copy of the episode's achievement table.
--- @return Achievement[] achievements A table of achievements.
function Achievements.get() end

--- Returns the achievement of the given name.
--- @param name string The name of the achievement.
--- @return Achievement achievement The achievement.
function Achievements.get(name) end

--- Returns the achievement at the given index.
--- @param index number The index of the achievement.
--- @return Achievement achievement The achievement.
function Achievements.get(index) end

--- Executes the current draw function for the given achievement.
--- @param achievement Achievement The achievement to draw.
--- @param t number The time offset of the achievement drawing routine.
--- @return boolean hasFinished True once the drawing process has concluded.
function Achievements.drawPopup(achievement, t) end

--- Executes the default draw function for the given achievement.
--- @param achievement Achievement The achievement to draw.
--- @param t number The time offset of the achievement drawing routine.
--- @param x number The x coordinate.
--- @param y number The y coordinate.
--- @param align number Alignment value (0 = left, 1 = right, 2 = center).
--- @param z number Render priority.
--- @return boolean hasFinished True once the drawing process has concluded.
function Achievements.drawDefaultPopup(achievement, t, x, y, align, z) end

---@class Achievement
local Achievement = {}

--- Returns the condition of the given index.
--- @param index number The index of the condition.
--- @return AchievementCondition condition The condition.
function Achievement:getCondition(index) end

--- Sets the value of the given condition.
--- @param index number The index of the condition.
--- @param value number|boolean The value to set.
--- @param delayPopup boolean Whether to delay the achievement popup.
function Achievement:setCondition(index, value, delayPopup) end

--- Resets the value of the condition.
--- @param index number The index of the condition.
function Achievement:resetCondition(index) end

--- Resets all conditions of the achievement.
function Achievement:reset() end

--- Increments the value of the given condition.
--- @param index number The index of the condition.
--- @param delayPopup boolean Whether to delay the achievement popup.
function Achievement:progressCondition(index, delayPopup) end

--- Draws the achievement's icon at the given coordinates and priority.
--- @param x number The x coordinate.
--- @param y number The y coordinate.
--- @param width number The width of the icon.
--- @param height number The height of the icon.
--- @param priority number The render priority.
function Achievement:drawIcon(x, y, width, height, priority) end

--- Returns the achievement's name, taking into account its hidden status.
--- @return string name The name of the achievement.
function Achievement:getName() end

--- Returns the achievement's description, taking into account its hidden status.
--- @return string description The description of the achievement.
function Achievement:getDescription() end

--- Forces the achievement to be collected.
--- @param delayPopup boolean Whether to delay the achievement popup.
function Achievement:collect(delayPopup) end

---@type number The numeric index of the achievement in the episode achievement table.
Achievement.id = nil

---@type string The (unique) name of the achievement.
Achievement.name = nil

---@type string The description of the achievement.
Achievement.description = nil

---@type string The alternate description of the achievement if collected.
Achievement.collectedDescription = nil

---@type boolean Whether the achievement is a hidden (secret) achievement.
Achievement.hidden = false

---@type boolean Whether the achievement has been collected.
Achievement.collected = false

---@type boolean Whether the achievement has already had its popup shown.
Achievement.popupShown = false

---@type Texture The icon for the achievement.
Achievement.icon = nil

---@type Texture The alternative icon for the achievement while it has not yet been collected.
Achievement.icon = nil

---@type AchievementCondition[] The table of conditions for this achievement.
Achievement.conditions = nil

---@class AchievementCondition
local AchievementCondition = {}

---@type string|"number"|"boolean"|"event" The condition type (number, boolean, or event).
AchievementCondition.conditionType = nil

---@type string The condition's description, if any.
AchievementCondition.desc = nil

---@type number|boolean The current value of the achievement's progress.
AchievementCondition.value = nil

---@type number The max value of the numeric achievement's progress limit.
AchievementCondition.max = nil

---@type string The name of the event that triggers the event achievement's progress.
AchievementCondition.event = nil
