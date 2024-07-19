---@meta


Misc = {}

--- Will do a bomb explosion.
--- @param x number
--- @param y number
--- @param type number
--- @deprecated Use Explosion.spawn instead.
function Misc.doBombExplosion(x, y, type) end

--- Will do a bomb explosion. 'fromPlayer' is used for the peach bomb in battle mode.
--- @param x number
--- @param y number
--- @param type number
--- @param fromPlayer Player
--- @deprecated Use Explosion.spawn instead.
function Misc.doBombExplosion(x, y, type, fromPlayer) end

---Writes `debugInfo` in a message box and shows it to the user.
---@param debugInfo any
function Misc.dialog(debugInfo) end

--- Converts every NPC on screen to coins (like you would hit the exit).
---
--- Level only
function Misc.npcToCoins() end

--- Starts the "POW"-Effect (like if the POW-Block hits the floor).
---
--- Level only
function Misc.doPOW() end

--- Gets the current cheat buffer text.
--- @return string
---
--- Overworld and Level
function Misc.cheatBuffer() end

--- Sets the current cheat buffer text.
--- @param cheatBufferText string
---
--- Overworld and Level
function Misc.cheatBuffer(cheatBufferText) end

--- Returns a list of files in the given 'path'. The paths start from the SMBX-Directory. If the path is an empty string, then the files in the SMBX-Directory are returned.
--- @param path string
--- @return table<number, string>
---
--- Overworld and Level
function Misc.listFiles(path) end

--- Returns a list of files in the given 'path'. The paths start from the custom folder of the level (when in a level) or the current episode folder (when in the overworld). If the path is an empty string, then the files in the custom folder (or episode folder when in overworld) are returned. If you want to access the episode folder from the level code, you can use Misc.listLocalFiles("..").
--- @param path string
--- @return table<number, string>
---
--- Overworld and Level
function Misc.listLocalFiles(path) end

--- Searches for a file given by the path in the following directories:
--- * Custom level folder
--- * Episode folder
--- * {SMBX2 data path}/scripts
--- * {SMBX2 data path}
--- ... in that order. The full absolute path will be returned or nil if not found.
--- @param path string
--- @return string|nil
---
--- LunaLua ≥ v0.7.1, Overworld and Level
function Misc.resolveFile(path) end

--- Searches for a graphics file given by the path in the following directories:
--- * Custom level folder
--- * Episode folder
--- * {SMBX2 data path}/graphics
--- ... in that order. The full absolute path will be returned or nil if not found.
--- @param path string
--- @return string|nil
---
--- LunaLua ≥ v0.7.3.1, Overworld and Level
function Misc.resolveGraphicsFile(path) end

--- Searches for a sound file given by the path in the following directories:
--- * Custom level folder
--- * Episode folder
--- * {SMBX2 data path}/sound
--- * {SMBX2 data path}/sound/extended
--- ... in that order. Additionally, it will search for one of these formats: ".ogg", ".mp3", ".wav", ".voc", ".flac", ".spc" ... in that order, even if a file type is included in the patch. The full absolute path will be returned or nil if not found.
--- @param path string
--- @return string|nil
---
--- Overworld and Level
function Misc.resolveSoundFile(path) end

--- Searches for a directory given by the path in the following directories:
--- * Custom level folder
--- * Episode folder
--- * {SMBX2 data path}/LuaScriptsLib
--- * {SMBX2 data path}
--- ... in that order. The full absolute path will be returned or nil if not found.
--- @param path string
--- @return string|nil
---
--- LunaLua ≥ v0.7.1, Overworld and Level
function Misc.resolveDirectory(path) end

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

--- Loads another episode given by the episode title. If the episode was not found, then 'false' is returned. If succeeded, then true is returned. However, the actual episode switch is done when SMBX gets control back from LunaLua. Additional code may run after the Misc.loadEpisode function. Also, note that holding the run button may interrupt the process, and the game may stay at the title screen.
--- @param episodeTitle string
--- @return boolean
---
--- Overworld and Level
function Misc.loadEpisode(episodeTitle) end

--- Returns the state of the key given by the keycode; can be any key on the keyboard, even those that are not part of the SMBX mapped controls. 'vk' is the virtual-key code. You can find more about the virtual-key code here: [https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731%28v%3Dvs.85%29.aspx Virtual-Key Codes]. You can directly use the constants given on this page including constants with letters and numbers (i.e. VK_4).
--- @param vk number
--- @return boolean
function Misc.GetKeyState(vk) end

--- This will execute or stop the full P-Switch effect (including music and timer), depending on the P-Switch timer. If the P-Switch effect is not active, then this function will activate it. Otherwise, it will stop this effect.
---
--- LunaLua ≥ v0.7.2.3, Level
function Misc.doPSwitch() end

--- This will execute or stop the full P-Switch effect (including music and timer), depending on the 'activate' parameter.
--- @param activate boolean
---
--- LunaLua ≥ v0.7.2.3, Level
function Misc.doPSwitch(activate) end

--- This will execute the raw P-Switch effect. Neither music nor the P-Switch timer is affected.
--- @param activate boolean
---
--- LunaLua ≥ v0.7.2.3, Level
function Misc.doPSwitchRaw(activate) end

--- Pauses the entire game. If 'waitForDrawingQueue' is set to true, it will wait for the graphics drawing queue to be empty before pausing. This allows it to work in events such as onDraw but may cause it to function incorrectly in events like onTick.
--- @param waitForDrawingQueue boolean
---
--- Overworld and Level
function Misc.pause(waitForDrawingQueue) end

--- Unpauses the whole game.
---
--- LunaLua ≥ v0.7.3, Overworld and Level
function Misc.unpause() end

--- Returns if the game is paused.
---
--- LunaLua ≥ v0.7.3, Overworld and Level
function Misc.isPaused() end

--- Returns if the whole game is paused via Misc.pause.
--- @return boolean
---
--- LunaLua ≥ v0.7.3, Overworld and Level
function Misc.isPausedByLua() end

--- Reads and returns the current score.
--- @return number
---
--- SMBX2 Beta 4+
function Misc.score() end

--- Triggers an SMBX event by the given name.
--- @param eventName string
---
--- Level only
function Misc.triggerEvent(eventName) end

--- Sets the minimal time for loading levels/world map (loadscreen.lua only).
--- @param seconds number
---
--- SMBX2 Beta 4+
function Misc.setLoadScreenTimeout(seconds) end
