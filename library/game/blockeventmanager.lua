---@meta game.blockeventmanager

local blockeventmanager = {}

---@param t? table|Block
function blockeventmanager.refreshEvents(t) end

---@param name string
---@param obj Block
---@param a unknown?
---@param b unknown?
---@param c unknown?
function blockeventmanager.callExternalEvent(name, obj, a, b, c) end

return blockeventmanager