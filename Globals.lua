---@meta


---The first Player object.
---@type Player
player = {}
---The second Player object (or `nil`).
---@type Player|nil
player2 = {}
---The first Camera object.
---@type Camera
camera = {}
---The second Camera object (or `nil`).
---@type Camera
camera2 = {}
---True if on the world map.
---@type boolean
isOverworld = false

---Registers an event in the event loop. The libraryTable is the table which is contains the bound event.
---@param eventName string
function triggerEvent(eventName) end

---Registers an event in the event loop.
---## Usage
---```
---lib = {}
---function lib.cameraDraw(x) --[[ Stuff ]] end
---function lib.onInitAPI()
---    registerEvent(lib, "onCameraDraw", "cameraDraw")
---end
---```
---@param libraryTable table # Contains the bound event. If an alias is specified, the libraryTable must contain a function with the alias, rather than the original event name.
---@param eventName string
---@param alias string?
---@param beforeMainCall boolean? # If set to false, the event will execute after the main call to luna.lua's handler of the event.
function registerEvent(libraryTable, eventName, alias, beforeMainCall) end

---Registers a custom event. Once registered, other codes can register it like any other event, and this library is able
---to call it manually (like any other function call), causing it to be executed on listening endpoints.
---@param libraryTable table # Contains the bound event.
---@param eventName string
function registerCustomEvent(libraryTable, eventName) end