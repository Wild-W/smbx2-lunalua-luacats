---@meta inputs2

local inputs2 = {}

---
---@param eventName unknown?
---@return ...
function inputs2.onEvent(eventName) end

---
---@return ...
function inputs2.onInitAPI() end

---
---@return ...
function inputs2.onInputUpdate() end

---
---@return ...
function inputs2.onLoop() end

---
---@return ...
function inputs2.onStart() end

---
---@type integer
inputs2.HOLD = nil

---
---@type integer
inputs2.PRESS = nil

---
---@type integer
inputs2.RELEASE = nil

---
---@type integer
inputs2.UP = nil

---
---@type boolean
inputs2.debug = nil

---
---@type table
inputs2.frozen = nil

---
---@type table
inputs2.frozenBool = nil

---
---@type boolean
inputs2.hijackEvents = nil

---
---@type table
inputs2.key = nil

---
---@type table
inputs2.locked = nil

---
---@type table
inputs2.names = nil

---
---@type table
inputs2.state = nil

return inputs2
