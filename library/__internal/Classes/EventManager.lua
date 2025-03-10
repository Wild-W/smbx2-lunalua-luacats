---@meta _

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

---@class EventQueueEntry
--- @field eventName EventName
--- @field parameters any[]

---@type EventQueueEntry[]
EventManager.queuedEvents = {}

---@param apiTable table
---@param event EventName
---@param eventHandler EventName?
function EventManager.removeAPIListener(apiTable, event, eventHandler) end

---@param args any[]
function EventManager.manageEventObj(args) end

---@param name EventName
---@param parameters any[]
function EventManager.queueEvent(name, parameters) end

---@param name EventName
---@param ...any
function EventManager.callEvent(name, ...) end

---@param name EventName
---@param args any[]
function EventManager.callEventInternal(name, args) end

---@param thisTable table
---@param event EventName
---@param eventHandler EventName?
---@param beforeMainCall boolean?
function EventManager.addAPIListener(thisTable, event, eventHandler, beforeMainCall) end

---@param handler fun()
function EventManager.registerClassicEventHandler(handler) end

---@param listenerObject _G
function EventManager.addUserListener(listenerObject) end

function EventManager.doQueue() end

---@param apiTable table
function EventManager.clearAPIListeners(apiTable) end

---@param name EventName
---@param isBefore boolean
---@param args any[]
function EventManager.callApiListeners(name, isBefore, args) end

---@type boolean
EventManager.onStartRan = nil
