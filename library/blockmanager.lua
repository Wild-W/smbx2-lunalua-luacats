---@meta blockmanager

local blockManager = {}

---@param settingsArray unknown[]
function blockManager.setBlockSettings(settingsArray) end

---@param id number
function blockManager.getBlockSettings(id) end

---@param id number
---@param typelist unknown[]
function blockManager.registerDefines(id, typelist) end

---@param id number
---@param typelist unknown[]
function blockManager.deregisterDefines(id, typelist) end

---Register an event on a Block.
---@param id number
---@param tbl table
---@param eventName BlockEventName
---@param libEventName string?
function blockManager.registerEvent(id, tbl, eventName, libEventName) end

blockManager.refreshEvents = eventmanager.refreshEvents
blockManager.callExternalEvent = eventmanager.callExternalEvent

function blockManager.loadBlockCode() end

return blockManager
