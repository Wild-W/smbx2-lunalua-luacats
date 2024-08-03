---@meta

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

---## Usage
---```
----- Sets mouseX to the mouse's current X position on the screen
---local mouseX = mem(0x00B2D6BC, FIELD_DFLOAT)
---```
--- ---
---@param memoryAddress number|GlobalMemoryOffset
---@param fieldType MemoryFieldType
---@nodiscard
---@return any
function mem(memoryAddress, fieldType, newValue) end

---**WARNING:** Be careful when manipulating memory offsets directly! Doing so may yield unexpected results.
---## Usage
---```
----- Sets coin count to 0
---mem(0x00B2C5A8, FIELD_WORD, 0)
---```
--- ---
---@param memoryAddress number|GlobalMemoryOffset
---@param fieldType MemoryFieldType
---@param value any
function mem(memoryAddress, fieldType, value) end

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

---@type boolean
__isLuaError = nil

GAME_ENGINE = "LunaLua"

---@type string
LUNALUA_VERSION = nil

---@type string
LUNALUA_VER = nil

---@type string
__LUNALUA = nil

---@type string
chunkname = nil

---@type string
__episodePath = nil

---@type string
__customFolderPath = nil

---@param ... unknown
---@return ...
function simulateError(...) end

---@param ... unknown
---@return ...
function unregisterEvent(...) end

---@param ... unknown
---@return ...
function property(...) end

---@param ... unknown
---@return string version
function getSMBXVersionString(...) end

---@param ... unknown
---@return ...
function readmem(...) end

---@param ... unknown
---@return ...
function class(...) end

---@param ... unknown
function writemem(...) end

---@param ... unknown
---@return ...
function super(...) end

---@param ... unknown
function rawprint(...) end

---@param ... unknown
---@return ...
function gcinfo(...) end

---@param ... unknown
---@return ...
function showMessageBox(...) end

---@param ... unknown
---@return ...
function findlayer(...) end

---@param obj any
---@return "string"|"table"|"number"|"userdata"|"function"|"boolean"|"thread"
function rawtype(obj) end

---@param ... unknown
---@return ...
function clearEvents(...) end

---@param ... unknown
---@return ...
function unpack_here(...) end

lowLevelLibraryContext = _G

__LUNA_VERSION_TABLE = {
	---@type number
	[1] = nil,
	---@type number
	[2] = nil,
	---@type number
	[3] = nil,
	---@type number
	[4] = nil,
}

---@alias GlobalMemoryOffset
--- | `0x00B2C59E` # 0 if not winning, else representative of the current `LevelEndState`. `FIELD_WORD`
--- | `0x00B2C5D4` # 0 if not winning, else representative of the current `LevelWinType`. `FIELD_WORD`
--- | `0x00B2C62C` # P-Switch Timer. `FIELD_WORD`
--- | `0x00B2C62E` # Stopwatch Timer. `FIELD_WORD`
--- | `0x00B2C630` # Index of the player that triggered the most recent P-Switch or Stopwatch effect. `FIELD_WORD`
--- | `0x00B2C87C` # P-Switch/Stopwatch Length. `FIELD_WORD`
--- | `0x00B2BEBC` # Pointer to block animation timer array. `FIELD_DWORD`
--- | `0x00B2BEA0` # Pointer to block animation frame array. `FIELD_DWORD`
--- | `0x00B2D6BC` # Mouse Cursor X-Coordinate. `FIELD_DFLOAT`
--- | `0x00B2D6C4` # Mouse Cursor Y-Coordinate. `FIELD_DFLOAT`
--- | `0x00B2D6D2` # Whether the mouse cursor is moving. `FIELD_BOOL`
--- | `0x00B2D6CC` # Whether a mouse button is being pressed. `FIELD_BOOL`
--- | `0x00B2D6D0` # Whether a mouse button is being released. `FIELD_BOOL`
--- | `0x00B2C884` # Whether a keyboard key is being released. `FIELD_BOOL`
--- | `0x00B2C6E8` # The rising speed of player jumps (while player offset 0x11C > 0). `FIELD_FLOAT`
--- | `0x00B251E0` # The current star count. WARNING: Changing this value can break save files. `FIELD_WORD`
--- | `0x00B2C8A8` # The star count in the current level. `FIELD_WORD`
--- | `0x00B2C5A8` # The current coin count. `FIELD_WORD`
--- | `0x00B2C5AC` # The current lives count. `FIELD_FLOAT`
--- | `0x00B2C8E4` # The current points count. NO LONGER USED: Use `Misc.score` and `Misc.givePoints` instead! `FIELD_DWORD`
--- | `0x00B250E2` # Whether or not the pause menu or a text box is visible. `FIELD_BOOL`
--- | `0x00B2C880` # The currently chosen option on the vanilla pause menu. `FIELD_WORD`
--- | `0x00B2C624` # The name of the current episode. `FIELD_STRING`
--- | `0x00B25724` # The filename of the episode's intro level, or if it is a hub-styled episode, its hub level. `FIELD_STRING`
--- | `0x00B25728` # Whether this is a hub-styled episode (skips world map). `FIELD_BOOL`
--- | `0x00B2572A` # Whether or not the "Restart Last Level on Death" flag is active. `FIELD_BOOL`
--- | `0x00B2C906` # The total number of stars in the episode. `FIELD_WORD`
--- | `0x00B258D4` # Pointer to the overworld path array. `FIELD_DWORD`
--- | `0x00B25910` # Pointer to the overworld tile array. `FIELD_DWORD`
--- | `0x00B2592C` # Pointer to the overworld scenery array. `FIELD_DWORD`
--- | `0x00B25974` # Pointer to the overworld music box array. `FIELD_DWORD`
--- | `0x00B25994` # Pointer to the overworld level array. `FIELD_DWORD`
--- | `0x00B2C620` # Whether or not the game is on the title screen. `FIELD_BOOL`
--- | `0x00B2C89C` # Whether or not the game is in the credits. `FIELD_BOOL`
--- | `0x00B2D760` # If greater than 0, the Battle Mode Text "Mario VS Luigi" is displayed. `FIELD_WORD`
--- | `0x00B2D762` # If greater than 0, the Battle Mode Text "Wins!" is displayed. `FIELD_WORD`
--- | `0x00B25108` # If true, the FPS counter is visible. `FIELD_BOOL`
--- | `0x00B2510C` # Must be set to 0 when disabling the FPS counter. `FIELD_DFLOAT`
--- | `0x00B25130` # Screen Type. `FIELD_WORD`
