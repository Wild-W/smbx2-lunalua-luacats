---@meta _

---@alias LevelMemoryOffset
--- | `0x00` # Level X-Position. Use field `x`. `FIELD_DFLOAT`
--- | `0x08` # Level Y-Position. Use field `y`. `FIELD_DFLOAT`
--- | `0x10` # Level Height. `FIELD_DFLOAT`
--- | `0x18` # Level Width. `FIELD_DFLOAT`
--- | `0x20` # Level X-Speed (changing has no actual effect). `FIELD_DFLOAT`
--- | `0x28` # Level Y-Speed (changing has no actual effect). `FIELD_DFLOAT`
--- | `0x30` # The level's ID. Use field `idx`. `FIELD_WORD`
--- | `0x32` # (?) `FIELD_WORD`
--- | `0x34` # The level's filename. Use field `filename`. `FIELD_STRING`
--- | `0x38` # The Exit Type that triggers the top path. Use field `topExitType`. `FIELD_WORD`
--- | `0x3A` # The Exit Type that triggers the left path. Use field `leftExitType`. `FIELD_WORD`
--- | `0x3C` # The Exit Type that triggers the bottom path. Use field `bottomExitType`. `FIELD_WORD`
--- | `0x3E` # The Exit Type that triggers the right path. Use field `rightExitType`. `FIELD_WORD`
--- | `0x40` # Whether the level is currently visible. Use field `visible`. `FIELD_BOOL`
--- | `0x42` # (?) `FIELD_WORD`
--- | `0x44` # The level's title. Use field `title`. `FIELD_STRING`
--- | `0x48` # The index of the warp at which to enter the level. Use field `levelWarpNumber`. `FIELD_WORD`
--- | `0x4A` # (?) `FIELD_WORD`
--- | `0x4C` # X-Coordinate of the destination (if set to warp to a map coordinate). Use field `goToX`. `FIELD_DFLOAT`
--- | `0x54` # Y-Coordinate of the destination (if set to warp to a map coordinate). Use field `goToY`. `FIELD_DFLOAT`
--- | `0x5C` # Whether the level has a path background behind it. Use field `isPathBackground`. `FIELD_BOOL`
--- | `0x5E` # Whether the level has a big path background behind it. Use field `isBigBackground`. `FIELD_BOOL`
--- | `0x60` # Whether the level is where the game begins. Use field `isGameStartPoint`. `FIELD_BOOL`
--- | `0x62` # Whether the level is always visible. Use field `isAlwaysVisible`. `FIELD_BOOL`

---@type OverworldLevelManager | LevelManager
Level = {}

---@class OverworldLevelManager
local OverworldLevelManager = {}

---@class LevelManager
local LevelManager = {}

--- Returns the number of levels on the overworld.
--- @return number amount
function OverworldLevelManager.count() end

--- Returns a table of all levels on the overworld.
--- @return Level[]
function OverworldLevelManager.get() end

--- Returns a table of all levels on the overworld with matching ID(s).
--- @param ids number|number[] A single ID or an array of IDs to search for.
--- @return Level[]
function OverworldLevelManager.get(ids) end

--- Returns all levels where the title field matches the given searchText.
--- @param searchText string The text to search within level titles.
--- @return Level[]
function OverworldLevelManager.findByName(searchText) end

--- Returns all levels where the filename field matches the given searchText.
--- @param searchText string The text to search within level filenames.
--- @return Level[]
function OverworldLevelManager.findByFilename(searchText) end

--- Returns the level with the given title. If the level is not found, nil is returned.
--- @param title string|nil The title of the level to retrieve.
--- @return Level|nil
function OverworldLevelManager.getByName(title) end

--- Returns the level with the given filename. If the level is not found, nil is returned.
--- @param filename string|nil The filename of the level to retrieve.
--- @return Level|nil
function OverworldLevelManager.getByFilename(filename) end

LevelManager.settings = {
    player = {
        ---@type string
        costume1 = nil,
        ---@type string
        costume2 = nil,
        ---@type number
        player1 = nil,
        ---@type number
        player2 = nil,
        ---@type boolean
        setCostume1 = nil,
        ---@type boolean
        setCostume2 = nil
    },
    ---@type boolean
    showInMarioChallenge = nil,
    timer = {
        ---@type boolean
        enable = nil,
        ---@type number
        result = nil,
        ---@type number
        time = nil
    }
}

--- Returns the filename of the current level.
---@return string name The filename of the level.
function LevelManager.filename() end

--- Returns the path to the current level folder.
---@return string path The full path of the level's folder.
function LevelManager.folderPath() end

--- Returns the level's file extension.
---@return string format The level's file format extension.
function LevelManager.format() end

--- Returns the level's title, as seen in the editor.
---@return string name The level's title.
function LevelManager.name() end

--- Exits the level immediately. Optionally, a win type can be passed to signal to the world map the certain way in which the level was beaten.
---@param winType LevelWinType? The type of win that concludes the level. Nil if just exiting.
function LevelManager.exit(winType) end

--- Sets the current victory animation. Once the animation concludes, the level will exit.
---@param endState LevelEndState The end state defining the victory animation.
function LevelManager.endState(endState) end

--- Returns the current victory animation.
---@return LevelEndState endState The current victory animation end state.
function LevelManager.endState() end

--- Loads the level with the specified name.
---@param filename string The filename of the level to load.
---@param episodeFolderName string? The folder name of the episode, defaults to the current episode.
---@param warpIndex number? The index of the warp to enter, defaults to the level entrance.
function LevelManager.load(filename, episodeFolderName, warpIndex) end

--- Ends the level with a given end state, optionally delayed.
---@param endState LevelEndState The end state to conclude the level.
---@param delayed boolean? True to delay the ending, false to end immediately.
function LevelManager.finish(endState, delayed) end

--- Converts the given end state into a win type.
---@param endState LevelEndState The end state to convert.
---@return LevelWinType winType The corresponding win type.
function LevelManager.endStateToWinType(endState) end

--- Converts the given win type into an end state.
---@param winType LevelWinType The win type to convert.
---@return LevelEndState endState The corresponding end state.
function LevelManager.winTypeToEndState(winType) end

--- Loads hitbox information for the specified character's powerup state from a configuration file.
---@param characterId CharacterType The character ID.
---@param powerup PowerupType The powerup state.
---@param iniFilename string The INI configuration file for hitboxes.
function LevelManager.loadPlayerHitBoxes(characterId, powerup, iniFilename) end

---@deprecated Sets the end state of the level, alias for `Level.endState`.
---@param endState LevelEndState The end state to set.
function LevelManager.winState(endState) end

---@deprecated Gets the current end state of the level, alias for `Level.endState`.
---@return LevelEndState endState The current end state.
function LevelManager.winState() end

--- Level instance metadata.
--- @class Level
--- @field x number X-Coordinate of the level on the overworld.
--- @field y number Y-Coordinate of the level on the overworld.
--- @field goToX number X-Coordinate of the destination (if set to warp to a map coordinate).
--- @field goToY number Y-Coordinate of the destination (if set to warp to a map coordinate).
--- @field topExitType LevelWinType The exit type that triggers the top path.
--- @field leftExitType LevelWinType The exit type that triggers the left path.
--- @field bottomExitType LevelWinType The exit type that triggers the bottom path.
--- @field rightExitType LevelWinType The exit type that triggers the right path.
--- @field levelWarpNumber number The index of the warp at which to enter the level.
--- @field isPathBackground boolean Whether the level has a path background behind it.
--- @field isBigBackground boolean Whether the level has a big path background behind it.
--- @field isGameStartPoint boolean Whether the level is where the game begins.
--- @field isAlwaysVisible boolean Whether the level is always visible.
--- @field visible boolean Whether the level is currently visible.
--- @field title string The title that shows up in the world map HUD.
--- @field filename string The filename of the level file to load on enter.
--- @field idx number The level's index within the internal list of levels.
local Level = {}

--- Returns a value of the Level struct at a specific memory address-offset.
--- @param offset number|LevelMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function Level:mem(offset, type) end

--- Sets a value of the Level struct at a specific memory address-offset.
--- @param offset number|LevelMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function Level:mem(offset, type, value) end
