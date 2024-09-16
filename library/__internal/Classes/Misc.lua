---@meta _

--- The Misc namespace exposes miscellaneous helper functions that don't fit into other classes.
--- Functions in this class work in levels as well as on the overworld, unless otherwise noted.
---## Usage
---```lua
---Misc.doPOW()
---```
Misc = {}

--- Will do a bomb explosion.
--- @param x number
--- @param y number
--- @param type number The type of bomb explosion.
--- @deprecated Use Explosion.spawn instead.
function Misc.doBombExplosion(x, y, type) end

--- Will do a bomb explosion. 'fromPlayer' is used for the peach bomb in battle mode.
--- @param x number
--- @param y number
--- @param type number The type of bomb explosion.
--- @param fromPlayer Player
--- @deprecated Use Explosion.spawn instead.
function Misc.doBombExplosion(x, y, type, fromPlayer) end

--- Converts every NPC on screen to coins (like you would hit the exit).
---
--- Level only
function Misc.npcToCoins() end

--- Starts the "POW"-Effect (like if the POW-Block hits the floor).
---
--- Level only
function Misc.doPOW() end

--- Returns a list of files in the given path. The path can start from the SMBX Directory, or can be an absolute path.
---
--- Overworld and Level
--- @param path string
--- @return string[] fileNames
function Misc.listFiles(path) end

--- Returns a list of files in the given 'path'. The paths start from the custom folder of the level (when in a level) or the current episode folder (when in the overworld). If the path is an empty string, then the files in the custom folder (or episode folder when in overworld) are returned. If you want to access the episode folder from the level code, you can use Misc.listLocalFiles("..").
---
--- Overworld and Level
--- @param path string
--- @return string[] fileNames
function Misc.listLocalFiles(path) end

--- Opens the pause menu. Fun fact: Kevsoft implemented that while trying to implement the Misc.loadEpisode function. Only recommended for trolling!
---
--- Overworld and Level
function Misc.openPauseMenu() end

--- Saves the game to the current save slot.
---
--- Overworld and Level
function Misc.saveGame() end

--- Exits the game to the main menu.
---
--- Overworld and Level
function Misc.exitGame() end

--- Returns the state of the key given by the keycode; can be any key on the keyboard, even those that are not part of the SMBX mapped controls. 'vk' is the virtual-key code. You can find more about the virtual-key code [here](https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731%28v%3Dvs.85%29.aspx). You can directly use the constants given on this page including constants with letters and numbers (i.e. `VK_4`).
--- @param vk VirtualKeyCode The virtual-key code.
--- @return boolean isPressed True if the key is pressed, false otherwise.
function Misc.GetKeyState(vk) end

--- This will execute or stop the full P-Switch effect (including music and timer), depending on the P-Switch timer. If the P-Switch effect is not active, then this function will activate it. Otherwise, it will stop this effect.
---
--- LunaLua ≥ v0.7.2.3, Level
function Misc.doPSwitch() end

--- This will execute or stop the full P-Switch effect (including music and timer), depending on the 'activate' parameter.
---
--- LunaLua ≥ v0.7.2.3, Level
--- @param activate boolean
function Misc.doPSwitch(activate) end

--- This will execute the raw P-Switch effect. Neither music nor the P-Switch timer is affected.
---
--- LunaLua ≥ v0.7.2.3, Level
--- @param activate boolean
function Misc.doPSwitchRaw(activate) end

--- Pauses the entire game. If 'waitForDrawingQueue' is set to true, it will wait for the graphics drawing queue to be empty before pausing. This allows it to work in events such as onDraw but may cause it to function incorrectly in events like onTick.
---
--- Overworld and Level
--- @param waitForDrawingQueue boolean? Whether to wait for the drawing queue to be empty before pausing.
function Misc.pause(waitForDrawingQueue) end

--- Unpauses the whole game.
---
--- LunaLua ≥ v0.7.3, Overworld and Level
function Misc.unpause() end

--- Returns if the game is paused.
---
--- LunaLua ≥ v0.7.3, Overworld and Level
--- @return boolean
function Misc.isPaused() end

--- Returns if the whole game is paused via `Misc.pause`.
---
--- LunaLua ≥ v0.7.3, Overworld and Level
--- @return boolean
function Misc.isPausedByLua() end

--- Reads and returns the current score.
---
--- SMBX2 Beta 4+
--- @return number score
function Misc.score() end

--- Triggers an SMBX event by the given name.
--- @param eventName string
---
--- Level only
function Misc.triggerEvent(eventName) end

--### Static gameplay manipulation functions

--- Toggles the synced switch state.
---
--- Level only
function Misc.toggleSyncSwitch() end

--- Adds the given value of points to the current score. By adding negative points, you can subtract score.
--- @param score number The value of points to add to the current score.
function Misc.score(score) end

--- Returns the current value of the coin counter.
--- @return number coins The current coin counter value.
function Misc.coins() end

--- Adds the given value of coins to the coin counter. When the coin counter exceeds 100, 1-ups are granted until the coin counter is below 100 again. If playCoinSound is set to true, it plays the default coin sound.
--- @param coins number The value of coins to add to the coin counter.
--- @param playCoinSound boolean Whether to play the coin sound.
function Misc.coins(coins, playCoinSound) end

--- Spawns a score effect at the given position. Plays the coin or 1-up sound if not suppressed.
--- @param index number The score value index.
--- @param position { x: number, y: number } The position where the score effect should appear.
--- @param suppressSound boolean Whether to suppress the sound.
function Misc.givePoints(index, position, suppressSound) end

--- Triggers a POW effect of a given type at a given position with a given radius for the pulse effect.
---
--- Level only
--- @param powtype string The type of POW effect.
--- @param x number The x-coordinate of the POW effect.
--- @param y number The y-coordinate of the POW effect.
--- @param radius number The radius of the POW effect.
function Misc.doPOW(powtype, x, y, radius) end

--- Returns the cheat buffer text.
--- @return string cheatBufferText The current cheat buffer text.
function Misc.cheatBuffer() end

--- Sets the cheat buffer text to the provided value.
--- @param value string The new cheat buffer text.
function Misc.cheatBuffer(value) end

--- Returns the cursor position in framebuffer space.
--- @return number x The x-coordinate of the cursor.
--- @return number y The y-coordinate of the cursor.
function Misc.getCursorPosition() end

--- Sets the cursor appearance.
--- @param image LuaImageResource|false|nil The cursor image. Set to nil to reset to default, or false to hide the cursor.
--- @param xHotspot number? The x-coordinate of the cursor hotspot.
--- @param yHotspot number? The y-coordinate of the cursor hotspot.
function Misc.setCursor(image, xHotspot, yHotspot) end

--### Static Beat Timer functions

--- Sets the BPM for the beat timer.
--- @param bpm number The beats per minute.
function Misc.setBPM(bpm) end

--- Gets the current BPM for the beat timer.
--- @return number bpm The current BPM.
function Misc.getBPM() end

--- Sets the current length of a beat.
--- @param beatLength number The length of a beat.
function Misc.setBeatTime(beatLength) end

--- Sets the number of beeps before a beat block state change.
--- @param startTime number The normalized (0-1) point between two beats when the beeps start.
--- @param numBeeps number The number of beeps.
function Misc.setBeepCount(startTime, numBeeps) end

--- Gets the current length of a beat.
--- @return number beatLength The current length of a beat.
function Misc.getBeatTime() end

--- Gets the current beat timer value.
--- @return number beatTime The current beat timer value.
function Misc.getBeatClock() end

--- Sets the beat signature.
--- @param signature number The beat signature.
function Misc.setBeatSignature(signature) end

--- Gets the current beat signature.
--- @return number signature The current beat signature.
function Misc.getBeatSignature() end

--### Static Beat Timer variables

--- Whether or not the beat uses the current song's music clock as the beat timer.
--- @type boolean
Misc.beatUsesMusicClock = nil

--- Offset of the beat timer relative to the song.
--- @type number
Misc.beatOffset = nil

--- Whether warnings will be logged.
---@type boolean
Misc.logWarnings = nil

---@type boolean
Misc._fenceFixEnabled = nil

--- Whether to print warnings to the screen.
---@type boolean
Misc.showWarnings = nil

--### Static glitch fix manipulation functions

--- Sets the state of the NPC downward clip fix (enabled by default).
--- @param enabled boolean Whether to enable the fix.
function Misc.SetNPCDownwardClipFix(enabled) end

--- Sets the state of the Link clowncar fairy fix (enabled by default).
--- @param enabled boolean Whether to enable the fix.
function Misc.SetLinkClowncarFairyFix(enabled) end

--- Sets the state of the fix for powerup/powerdown animation causing jitters in player position (enabled by default).
--- @param enabled boolean Whether to enable the fix.
function Misc.SetPowerupPowerdownPositionFix(enabled) end

--- Sets the state of the Player downward clip fix (enabled by default).
--- @param enabled boolean Whether to enable the fix.
function Misc.SetPlayerDownwardClipFix(enabled) end

--- Sets the state of the Player filter block bounce glitch fix (enabled by default).
--- @param enabled boolean Whether to enable the fix.
function Misc.SetPlayerFilterBounceFix(enabled) end

--- Sets the state of the NPC section setting fix (enabled by default).
--- @param enabled boolean Whether to enable the fix.
function Misc.SetNPCSectionFix(enabled) end

--- Sets the state of the slide jump fix (enabled by default).
--- @param enabled boolean Whether to enable the fix.
function Misc.SetSlideJumpFix(enabled) end

--- Sets the state of the fence speed fix (enabled by default).
--- @param enabled boolean Whether to enable the fix.
---
--- *Note*: `Player` field `climbingBGO` won't work and player offset 0x2C is always -1 if this fix is disabled!
function Misc.SetFenceBugFix(enabled) end

--### Static Time functions

--- Sets the ticks per second for the engine.
--- @param tps number The ticks per second.
function Misc.SetEngineTPS(tps) end

--- Sets the speed for the engine.
--- @param ratio number The speed ratio.
function Misc.SetEngineSpeed(ratio) end

--- Gets the current engine speed.
--- @return number ratio The current engine speed ratio.
function Misc.GetEngineSpeed() end

--- Sets the duration of a tick in milliseconds.
--- @param duration number The duration of a tick.
function Misc.SetEngineTickDuration(duration) end

--- Sets the ticks per second for lunatime calculations.
--- @param tps number The ticks per second.
--- @note The nominal TPS should not be altered after the level started, as it could break timing calculations.
function Misc.SetNominalTPS(tps) end

--- Returns the current ticks per second (usually for lunatime calculations).
--- @return number tps The current ticks per second.
function Misc.GetEngineTPS() end

--- Sets the speed for lunatime calculations.
--- @param ratio number The speed ratio.
--- @note The nominal TPS should not be altered after the level started, as it could break timing calculations.
function Misc.SetNominalSpeed(ratio) end

--- Sets the duration of a tick in milliseconds.
--- @param duration number The duration of a tick.
function Misc.SetNominalTickDuration(duration) end

--- Gets the current duration of a tick in milliseconds.
--- @return number duration The current tick duration in milliseconds.
function Misc.GetEngineTickDuration() end

--### Static game state manipulation functions

--- Instantly shuts down SMBX.
function Misc.exitEngine() end

--- Returns true if the game is currently being played from the editor.
--- @return boolean inEditor True if the game is in the editor, false otherwise.
function Misc.inEditor() end

--- Returns true if the Mario Challenge is currently active.
--- @return boolean inMarioChallenge True if the Mario Challenge is active, false otherwise.
function Misc.inMarioChallenge() end

--- Returns true if the GIF recorder is currently active.
--- @return boolean isRecordingGif True if the GIF recorder is active, false otherwise.
function Misc.isGifRecording() end

--- Returns true if the game is currently in full screen mode.
--- @return boolean isFullscreen True if the game is in full screen mode, false otherwise.
function Misc.isFullscreen() end

--- Sets the full screen mode of the game.
--- @param fullscreen boolean Whether to enable full screen mode.
function Misc.setFullscreen(fullscreen) end

--- Returns the current save slot.
--- @return number slot The current save slot.
function Misc.saveSlot() end

--- Sets the current save slot to the given value. Future saving will record to the new save slot.
--- @param slot number The save slot value.
--- @note This won't reload any save data, so use carefully!
function Misc.saveSlot(slot) end

--- Loads another episode given by the episode title. If the episode was not found then false is returned. If succeeded, true is returned.
--- 
--- The actual switch is done during the next internal SMBX code execution (after the next onTick event finishes). Additional code may run between calling this function and the game loading the new episode. Holding the run button may interrupt this process and the game may stay at the title screen.
--- @param episodeTitle string The title of the episode to load.
--- @return boolean didLoad True if the episode was loaded successfully, false otherwise.
function Misc.loadEpisode(episodeTitle) end

--### Static controller state functions

--- Rumbles the selected player's controller for the set length with the set strength. The arguments default to 1, 1000, and 1.0.
--- @param playerIndex number The index of the player.
--- @param milliseconds number The duration of the rumble in milliseconds.
--- @param strength number The strength of the rumble.
function Misc.RumbleSelectedController(playerIndex, milliseconds, strength) end

--- Returns the selected player's controller's power level (between 0 for empty and 4 for full).
--- @param playerIndex number The index of the player.
--- @return number powerLevel The power level of the controller.
function Misc.GetSelectedControllerPowerLevel(playerIndex) end

--- Returns the selected player's controller's name ("Unknown" if none).
--- @param playerIndex number The index of the player.
--- @return string name The name of the controller.
function Misc.GetSelectedControllerName(playerIndex) end

--### Static loadscreen functions

--- Forces the load screen to be alive for a minimum amount of time. By default, the load screen finishes as soon as it's able to, but using this function, a minimum length can be enforced (for example, 0.5 for half a second).
---
--- **Warning**: Static loadscreen functions can only be called from loadscreen.lua!
--- @param seconds number The minimum load screen time in seconds.
function Misc.setLoadScreenTimeout(seconds) end

--- Returns whether loading has finished.
--- 
--- **Warning**: Static loadscreen functions can only be called from loadscreen.lua!
--- @return boolean isFinished True if loading has finished, false otherwise.
function Misc.getLoadingFinished() end

--### Static debug functions

--- Spawns a popup dialog message with each argument in its own line. Useful for debugging code that doesn't run every frame.
--- @param ... any The debug information to display.
function Misc.dialog(...) end

--- Spawns a more fancy popup dialog message.
--- @param title string The title of the dialog.
--- @param content any The content of the dialog.
--- @param readOnly boolean Whether the dialog is read-only.
function Misc.richDialog(title, content, readOnly) end

--- Sets the depth (verbosity) of Misc.dialog and Misc.richDialog printouts.
--- @param depth number The depth of the dialog printouts.
function Misc.setDialogDepth(depth) end

--- Live monitors a list of fields that belong to the given object. A title can be provided to organize the printed data.
--- @param object table The object to monitor.
--- @param fields table A list of fields to monitor.
--- @param title string The title of the monitor.
function Misc.monitor(object, fields, title) end

--- Stops monitoring an object.
--- @param object table The object to stop monitoring.
function Misc.stopMonitoring(object) end


--- Spawns a little red warning in the corner of the screen during edit mode. Once the level is reloaded, it will display a more elaborate call stack dialog with the warning message.
---
--- Useful for notifying users of deprecated code or unintended situations.
--- @param warningMessage string The warning message.
--- @param severity number? The severity of the warning.
function Misc.warn(warningMessage, severity) end

--### Static game window functions

--- Sets the title of the game window.
--- @param title string The title of the game window.
function Misc.setWindowTitle(title) end

--- Sets the icon of the game window.
--- @param icon LuaImageResource The icon of the game window.
function Misc.setWindowIcon(icon) end

--### Static file path and name functions

--- Returns the absolute path to the given file.
--- @param file string The file name.
--- @return string filePath The absolute file path.
function Misc.getFullPath(file) end

--- Returns the name of the current level folder. If there is none, nil is returned.
--- @return string? path The name of the current level folder.
--- @note Level only
function Misc.levelFolder() end

--- Returns the path of the current level folder. If there is none, nil is returned.
--- @return string? path The path of the current level folder.
--- @note Level only
function Misc.levelPath() end

--- Returns the path to the current episode. If not called from within an episode, the SMBX root path is returned.
--- @return string path The path to the current episode.
function Misc.episodePath() end

--- Returns the name of the current episode. If not called from within an episode, "SMBX2" is returned.
--- @return string name The name of the current episode.
function Misc.episodeName() end

--- Returns a list of folder names in the given folder. The path can start from the SMBX Directory, or can be an absolute path.
--- @param path string The path to list directories from.
--- @return table folderNames The list of folder names.
function Misc.listDirectories(path) end

--- Searches for a file given by the path in the following directories: Custom level folder -> Episode folder -> {SMBX}/data/scripts folder -> {SMBX}/data folder. The absolute path will be returned (or nil if nothing was found).
--- @param path string The path to search for.
--- @return string? filePath The absolute file path, or nil if not found.
function Misc.resolveFile(path) end

--- Searches for multiple files given by the path in the following directories: Custom level folder (if called in a level) -> Episode folder -> {SMBX}/data/scripts folder -> {SMBX}/data folder. The absolute path will be returned (or nil if nothing was found). This function differs from the other resolveFile functions in that it takes multiple file strings as arguments. All strings are searched for in one directory (in the order they're passed as arguments) before the next one is searched in.
--- @param ... string The file paths to search for.
--- @return string? filePath The absolute file path, or nil if not found.
function Misc.multiResolveFile(...) end

--- Searches for a graphics file given by the path in the following directories: Custom level folder -> Episode folder -> {SMBX}/data/graphics folder. The absolute path will be returned (or nil if nothing was found).
--- @param path string The path to search for.
--- @return string? filePath The absolute file path, or nil if not found.
function Misc.resolveGraphicsFile(path) end

--- Searches for a sound file given by the path in the following directories: Custom level folder -> Episode folder -> {SMBX}/data/sounds folder -> {SMBX}/data/sounds/extended folder. The absolute path will be returned (or nil if nothing was found).
--- @param path string The path to search for.
--- @return string? filePath The absolute file path, or nil if not found.
function Misc.resolveSoundFile(path) end

--- Searches for a directory given by the path in the following directories: Custom level folder -> Episode folder -> {SMBX}/data/scripts folder -> {SMBX}/data folder. The absolute path will be returned (or nil if nothing was found).
--- @param path string The path to search for.
--- @return string? filePath The absolute directory path, or nil if not found.
function Misc.resolveDirectory(path) end

--### Static collision group functions

--- Checks whether two objects collide with each other.
--- @param first Block|NPC|Player The first object.
--- @param second Block|NPC|Player The second object.
--- @return boolean canCollide True if the objects can collide, false otherwise.
function Misc.canCollideWith(first, second) end

--- Checks whether an object collides with objects in a given collision group.
--- @param object Block|NPC|Player The object to check.
--- @param collisionGroup string The collision group to check against.
--- @return boolean canCollide True if the object can collide with the group, false otherwise.
function Misc.collidesWithGroup(object, collisionGroup) end

---@param ... unknown
function Misc._SetVanillaBackgroundRenderFlag(...) end

--- Spawns a little red warning in the corner of the screen during edit mode. Once the level is reloaded, it will display a more elaborate call stack dialog with the warning message.
---
--- Useful for notifying users of deprecated code or unintended situations.
--- @param warningMessage string The warning message.
--- @param severity number? The severity of the warning.
function Misc.warning(warningMessage, severity) end

---@param ... unknown
---@return ...
function Misc.__getPerfTrackerData(...) end

---@param ... unknown
---@return ...
function Misc.getBasegameEnvironment(...) end

---@param ... unknown
function Misc._setWeakLava(...) end

---@param ... unknown
---@return ...
function Misc.__GetFrameTimes(...) end

---@param ... unknown
---@return ...
function Misc._getWeakLava(...) end

---@param ... unknown
---@return ...
function Misc.getCustomEnvironment(...) end

---@param ... unknown
---@return ...
function Misc._GetCollisionGroupFromIndex(...) end

---@param ... unknown
---@return ...
function Misc.suppressWarnings(...) end

---@param ... unknown
---@return ...
function Misc.registerPOWType(...) end

---@param ... unknown
---@return ...
function Misc._ModifyCollisionGroup(...) end

---@param ... unknown
---@return ...
function Misc.listLocalDirectories(...) end

---@param ... unknown
---@return ...
function Misc.GetNominalSpeed(...) end

---@param ... unknown
---@return ...
function Misc._npcHarmComboWithDamage(...) end

---@param ... unknown
---@return boolean
function Misc.isSamePath(...) end

---@param ... unknown
---@return ...
function Misc.GetNominalTPS(...) end

---@param ... unknown
---@return boolean
function Misc.didGameOver(...) end

---@param ... unknown
---@return ...
function Misc._getPatchedRanges(...) end

---@param ... unknown
function Misc.SetNominaleTPS(...) end

---@param ... unknown
---@return ...
function Misc.GetNominalTickDuration(...) end

---@param ... unknown
---@return ...
function Misc.getEditorPlacedItem(...) end

---@param ... unknown
---@return ...
function Misc.__getNPCPropertyTableAddress(...) end

---@param ... unknown
---@return ...
function Misc.__getBlockPropertyTableAddress(...) end

---@param ... unknown
---@return ...
function Misc.GetMemUsage(...) end

---@param ... unknown
---@return ...
function Misc.registerCharacterId(...) end

---@param ... unknown
---@return ...
function Misc.showRichDialog(...) end

---@param ... unknown
---@return ...
function Misc.loadCharacterHitBoxes(...) end

---@param ... unknown
---@return ...
function Misc.__disablePerfTracker(...) end

---@param ... unknown
---@return ...
function Misc.__enablePerfTracker(...) end

---@param ... unknown
---@return ...
function Misc._setSemisolidCollidingFlyType(...) end

---@param ... unknown
---@return ...
function Misc.clock(...) end

---@param ... unknown
---@return ...
function Misc._npcHarmCombo(...) end

---@param ... unknown
---@return ...
function Misc._playerKill(...) end

---@param ... unknown
---@return ...
function Misc._npcCollect(...) end

---@param ... unknown
---@return ...
function Misc._playerHarm(...) end

--### Static collision group variables

--- The collision matrix. Misc.groupsCollide\[a\]\[b\] contains whether groups a and b collide and can be modified.
---
--- **Warning**: It is ill-advised to use this variable with only one index!
--- @type table<any, table<any, boolean>>
Misc.groupsCollide = nil

---@alias PowType
--- | `Misc.powType.LEGACY`
--- | `Misc.powType.SMB2`
--- | `Misc.powType.SMW`

Misc.powType = {}
Misc.powType.LEGACY = 1
Misc.powType.SMB2 = 2
Misc.powType.SMW = 3

Misc.LUNALUA_EVENTS = {}
Misc.LUNALUA_EVENTS[1] = "onStart"
Misc.LUNALUA_EVENTS[2] = "onLoad"
Misc.LUNALUA_EVENTS[3] = "onTick"
Misc.LUNALUA_EVENTS[4] = "onTickEnd"
Misc.LUNALUA_EVENTS[5] = "onDraw"
Misc.LUNALUA_EVENTS[6] = "onDrawUnfocusOverlay"
Misc.LUNALUA_EVENTS[7] = "onDrawEnd"
Misc.LUNALUA_EVENTS[8] = "onLoop"
Misc.LUNALUA_EVENTS[9] = "onLoopSection0"
Misc.LUNALUA_EVENTS[10] = "onLoopSection1"
Misc.LUNALUA_EVENTS[11] = "onLoopSection2"
Misc.LUNALUA_EVENTS[12] = "onLoopSection3"
Misc.LUNALUA_EVENTS[13] = "onLoopSection4"
Misc.LUNALUA_EVENTS[14] = "onLoopSection5"
Misc.LUNALUA_EVENTS[15] = "onLoopSection6"
Misc.LUNALUA_EVENTS[16] = "onLoopSection7"
Misc.LUNALUA_EVENTS[17] = "onLoopSection8"
Misc.LUNALUA_EVENTS[18] = "onLoopSection9"
Misc.LUNALUA_EVENTS[19] = "onLoopSection10"
Misc.LUNALUA_EVENTS[20] = "onLoopSection11"
Misc.LUNALUA_EVENTS[21] = "onLoopSection12"
Misc.LUNALUA_EVENTS[22] = "onLoopSection13"
Misc.LUNALUA_EVENTS[23] = "onLoopSection14"
Misc.LUNALUA_EVENTS[24] = "onLoopSection15"
Misc.LUNALUA_EVENTS[25] = "onLoopSection16"
Misc.LUNALUA_EVENTS[26] = "onLoopSection17"
Misc.LUNALUA_EVENTS[27] = "onLoopSection18"
Misc.LUNALUA_EVENTS[28] = "onLoopSection19"
Misc.LUNALUA_EVENTS[29] = "onLoopSection20"
Misc.LUNALUA_EVENTS[30] = "onLoadSection"
Misc.LUNALUA_EVENTS[31] = "onLoadSection0"
Misc.LUNALUA_EVENTS[32] = "onLoadSection1"
Misc.LUNALUA_EVENTS[33] = "onLoadSection2"
Misc.LUNALUA_EVENTS[34] = "onLoadSection3"
Misc.LUNALUA_EVENTS[35] = "onLoadSection4"
Misc.LUNALUA_EVENTS[36] = "onLoadSection5"
Misc.LUNALUA_EVENTS[37] = "onLoadSection6"
Misc.LUNALUA_EVENTS[38] = "onLoadSection7"
Misc.LUNALUA_EVENTS[39] = "onLoadSection8"
Misc.LUNALUA_EVENTS[40] = "onLoadSection9"
Misc.LUNALUA_EVENTS[41] = "onLoadSection10"
Misc.LUNALUA_EVENTS[42] = "onLoadSection11"
Misc.LUNALUA_EVENTS[43] = "onLoadSection12"
Misc.LUNALUA_EVENTS[44] = "onLoadSection13"
Misc.LUNALUA_EVENTS[45] = "onLoadSection14"
Misc.LUNALUA_EVENTS[46] = "onLoadSection15"
Misc.LUNALUA_EVENTS[47] = "onLoadSection16"
Misc.LUNALUA_EVENTS[48] = "onLoadSection17"
Misc.LUNALUA_EVENTS[49] = "onLoadSection18"
Misc.LUNALUA_EVENTS[50] = "onLoadSection19"
Misc.LUNALUA_EVENTS[51] = "onLoadSection20"
Misc.LUNALUA_EVENTS[52] = "onSectionChange"
Misc.LUNALUA_EVENTS[53] = "onJump"
Misc.LUNALUA_EVENTS[54] = "onJumpEnd"
Misc.LUNALUA_EVENTS[55] = "onKeyDown"
Misc.LUNALUA_EVENTS[56] = "onKeyUp"
Misc.LUNALUA_EVENTS[57] = "onFramebufferResize"
Misc.LUNALUA_EVENTS[58] = "onEvent"
Misc.LUNALUA_EVENTS[59] = "onEventDirect"
Misc.LUNALUA_EVENTS[60] = "onExitLevel"
Misc.LUNALUA_EVENTS[61] = "onInputUpdate"
Misc.LUNALUA_EVENTS[62] = "onMessageBox"
Misc.LUNALUA_EVENTS[63] = "onColorSwitch"
Misc.LUNALUA_EVENTS[64] = "onSyncSwitch"
Misc.LUNALUA_EVENTS[65] = "onBeatWarn"
Misc.LUNALUA_EVENTS[66] = "onBeatStateChange"
Misc.LUNALUA_EVENTS[67] = "onBlockHit"
Misc.LUNALUA_EVENTS[68] = "onBlockRemove"
Misc.LUNALUA_EVENTS[69] = "onHUDDraw"
Misc.LUNALUA_EVENTS[70] = "onNPCKill"
Misc.LUNALUA_EVENTS[71] = "onCameraUpdate"
Misc.LUNALUA_EVENTS[72] = "onCameraDraw"
Misc.LUNALUA_EVENTS[73] = "onKeyboardPress"
Misc.LUNALUA_EVENTS[74] = "onKeyboardPressDirect"
Misc.LUNALUA_EVENTS[75] = "onKeyboardKeyPress"
Misc.LUNALUA_EVENTS[76] = "onKeyboardKeyRelease"
Misc.LUNALUA_EVENTS[77] = "onPause"
Misc.LUNALUA_EVENTS[78] = "onExit"
Misc.LUNALUA_EVENTS[79] = "onNPCHarm"
Misc.LUNALUA_EVENTS[80] = "onNPCCollect"
Misc.LUNALUA_EVENTS[81] = "onCheckpoint"
Misc.LUNALUA_EVENTS[82] = "onExplosion"
Misc.LUNALUA_EVENTS[83] = "onRunEffectInternal"
Misc.LUNALUA_EVENTS[84] = "onExplosionInternal"
Misc.LUNALUA_EVENTS[85] = "onPostNPCRearrangeInternal"
Misc.LUNALUA_EVENTS[86] = "onBlockInvalidateForReuseInternal"
Misc.LUNALUA_EVENTS[87] = "onWarpEnter"
Misc.LUNALUA_EVENTS[88] = "onWarp"
Misc.LUNALUA_EVENTS[89] = "onGroupDeallocationInternal"
Misc.LUNALUA_EVENTS[90] = "onPasteText"
Misc.LUNALUA_EVENTS[91] = "onChangeController"
Misc.LUNALUA_EVENTS[92] = "onControllerButtonPress"
Misc.LUNALUA_EVENTS[93] = "onControllerButtonRelease"
Misc.LUNALUA_EVENTS[94] = "onPostNPCKill"
Misc.LUNALUA_EVENTS[95] = "onPostNPCHarm"
Misc.LUNALUA_EVENTS[96] = "onPostNPCCollect"
Misc.LUNALUA_EVENTS[97] = "onPostExplosion"
Misc.LUNALUA_EVENTS[98] = "onPostEventDirect"
Misc.LUNALUA_EVENTS[99] = "onPostWarpEnter"
Misc.LUNALUA_EVENTS[100] = "onPostBlockHit"
Misc.LUNALUA_EVENTS[101] = "onPostBlockRemove"
Misc.LUNALUA_EVENTS[102] = "onNPCGenerated"
Misc.LUNALUA_EVENTS[103] = "onNPCTransform"
Misc.LUNALUA_EVENTS[104] = "onNPCConfigChange"
Misc.LUNALUA_EVENTS[105] = "onBlockConfigChange"
Misc.LUNALUA_EVENTS[106] = "onBGOConfigChange"
Misc.LUNALUA_EVENTS[107] = "onPlayerKill"
Misc.LUNALUA_EVENTS[108] = "onPlayerHarm"
Misc.LUNALUA_EVENTS[109] = "onPostPlayerKill"
Misc.LUNALUA_EVENTS[110] = "onPostPlayerHarm"
Misc.LUNALUA_EVENTS[111] = "onPOW"
Misc.LUNALUA_EVENTS[112] = "onPostPOW"
Misc.LUNALUA_EVENTS[113] = "onMouseButtonEvent"
Misc.LUNALUA_EVENTS[114] = "onMouseWheelEvent"
Misc.LUNALUA_EVENTS[115] = "onCollide"
Misc.LUNALUA_EVENTS[116] = "onIntersect"

Misc.LUNALUA_EVENTS_TBL = {}

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection14 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onDrawUnfocusOverlay = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onDrawEnd = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onDraw = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onTick = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onTickEnd = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onStart = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoop = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection1 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection4 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection0 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection3 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection2 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection5 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onMessageBox = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onCollide = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPlayerKill = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPlayerHarm = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onBGOConfigChange = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onNPCConfigChange = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onBlockConfigChange = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onIntersect = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostPlayerKill = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPOW = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onMouseWheelEvent = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostPlayerHarm = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onMouseButtonEvent = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostPOW = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onNPCTransform = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection6 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection8 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection4 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection5 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection3 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection1 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection2 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection0 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection6 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection8 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection11 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection7 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection10 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection9 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection7 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection19 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection11 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection12 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection10 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection9 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection20 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection13 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection15 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection18 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection14 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection17 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoopSection16 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection12 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onNPCGenerated = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostBlockHit = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onColorSwitch = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onSyncSwitch = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoad = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onExitLevel = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onInputUpdate = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onEventDirect = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onBeatWarn = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onBlockHit = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onNPCKill = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onBeatStateChange = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onHUDDraw = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onBlockRemove = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onCameraUpdate = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onEvent = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onKeyUp = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection17 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection18 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection16 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection15 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onFramebufferResize = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection19 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onSectionChange = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onKeyDown = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection20 = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onJumpEnd = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onJump = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostBlockRemove = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onCameraDraw = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onKeyboardPressDirect = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onControllerButtonPress = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onControllerButtonRelease = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onChangeController = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onGroupDeallocationInternal = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPasteText = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onWarp = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostNPCKill = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostNPCCollect = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostWarpEnter = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostNPCHarm = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostEventDirect = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostExplosion = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onKeyboardPress = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onWarpEnter = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPostNPCRearrangeInternal = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onPause = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onExit = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onKeyboardKeyRelease = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onKeyboardKeyPress = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onBlockInvalidateForReuseInternal = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onNPCHarm = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onCheckpoint = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onExplosionInternal = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onNPCCollect = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onRunEffectInternal = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onExplosion = nil

---@type boolean
Misc.LUNALUA_EVENTS_TBL.onLoadSection13 = nil
