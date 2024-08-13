---@meta

---@class APIListener
local APIListener = {}

---Library table
---@type table
APIListener.api = nil

---@type string
APIListener.eventName = nil

---@type string
APIListener.eventHandlerName = nil

---@type boolean
APIListener.callBefore = nil

EventManager = {}

---@type _G[]
EventManager.userListeners = {}

---@type table<boolean, table<string, APIListener[]>>
EventManager.apiListeners = {}

EventManager.queuedEvents = {}

---@param ... unknown
---@return ...
function EventManager.removeAPIListener(...) end

---@param ... unknown
---@return ...
function EventManager.manageEventObj(...) end

---@param ... unknown
---@return ...
function EventManager.queueEvent(...) end

---@param ... unknown
---@return ...
function EventManager.callEvent(...) end

---@param ... unknown
---@return ...
function EventManager.callEventInternal(...) end

---@param ... unknown
---@return ...
function EventManager.addAPIListener(...) end

---@param ... unknown
---@return ...
function EventManager.registerClassicEventHandler(...) end

---@param ... unknown
---@return ...
function EventManager.addUserListener(...) end

---@param ... unknown
---@return ...
function EventManager.doQueue(...) end

---@param ... unknown
---@return ...
function EventManager.clearAPIListeners(...) end

---@param ... unknown
---@return ...
function EventManager.callApiListeners(...) end

---@type boolean
EventManager.onStartRan = nil
