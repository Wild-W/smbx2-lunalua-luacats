---@meta


---The first Player object.
---@type Player
player = {}
---The second Player object (or `nil`).
---@type Player?
player2 = {}
---The first Camera object.
---@type Camera
camera = {}
---The second Camera object (or `nil`).
---@type Camera?
camera2 = {}
---True if on the world map.
---@type boolean
isOverworld = false

---SaveData is a table that persistently stores information and saves this information into a save file whenever SMBX would internally save or `Misc.saveGame()` is called. SaveData should be used for information that is useful across play sessions, such as currency, high scores and completion progress.
SaveData = {}

---GameData is a table that persistently stores information. However unlike Savedata, GameData will never save this information into a save file, and the information will be lost once the game is closed. GameData should be used for information that doesn't need to be kept for future play sessions but is critical to have across level loads, such as whether a minigame is active, or whether something has already occured in this play session.
GameData = {}

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

---**WARNING:** Be careful when manipulating memory offsets directly! Doing so may yield unexpected results.
---## Usage
---```
---local mouseX = mem(0x00B2D6BC, FIELD_DFLOAT) -- Sets mouseX to the mouse's current X position on the screen
---mem(0x00B2C5A8, FIELD_WORD, 0) -- Sets coin count to 0
---```
---@param memoryAddress number
---@param fieldType MemoryFieldType
---@param newValue any
---@return number|string
function mem(memoryAddress, fieldType, newValue) end

---Returns the absolute path to smbx.exe.
---@return string path
function getSMBXPath() end

---Compares the given luna version if it is older or newer than the current build.
---## Usage
---```lua
---local result = checkLunaVersion(0, 7, 3, 0) -- Would return 0 if the LunaLua build was 0.7.3
---```
---@param ... integer
---@return number|-1|0|1 result If the version number is older then -1 is returned. If the given version number is newer then 1 is returned. If the given version number are the same, then 0 is returned.
function checkLunaVersion(...) end

---Checks if a library is loaded by the lunalua API, using the return value of the API.load call to check.
---@param libraryObject table
---@return boolean
function isAPILoaded(libraryObject) end

---Checks if a library is loaded by the lunalua API, using the name of the library to check.
---@param libraryName string
---@return boolean
function isAPILoaded(libraryName) end
