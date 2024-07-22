---@meta


--- Writes 'debugText' in a message box and shows it to the user.
--- @param debugText string
--- @deprecated Use Misc.dialog instead.
function windowDebug(debugText) end

--- Prints 'text' at 'x', 'y' with font-type 3.
--- @param text string
--- @param x number
--- @param y number
--- @deprecated Use Text.print instead.
function printText(text, x, y) end

--- Prints 'text' at 'x', 'y' with font-type 'type'.
--- @param text string
--- @param type number
--- @param x number
--- @param y number
--- @deprecated Use Text.print instead.
function printText(text, type, x, y) end

--- Returns the number of npcs.
--- @return number
--- @deprecated Use NPC.count instead.
function totalNPC() end

--- Returns an array of all NPCs.
--- @return table<number, NPC>
--- @deprecated Use NPC.get instead.
function npcs() end

--- Searches all npcs by ID and Section. Use -1 as a parameter to ignore the given filter.
--- @param ID number
--- @param section string
--- @return table<number, NPC>
--- @deprecated Use NPC.get instead.
function findnpcs(ID, section) end

--- Loads the hitbox settings for specific player and its power-up state from INI file made by Special Calibration tool.
--- @param characterId number
--- @param powerUpId number
--- @param iniFilename string
--- @deprecated Use Level.loadPlayerHitBoxes instead.
function loadHitboxes(characterId, powerUpId, iniFilename) end

--- Loads an image in the resource memory at 'resourceNumber'. You can also set the transparent color.
--- @param filename string
--- @param resourceNumber number
--- @param transparentColor number
--- @deprecated Use Graphics.loadImage instead.
function loadImage(filename, resourceNumber, transparentColor) end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param imgResource number
--- @param xPos number
--- @param yPos number
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function placeSprite(type, imgResource, xPos, yPos) end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param imgResource number
--- @param xPos number
--- @param yPos number
--- @param extra string
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function placeSprite(type, imgResource, xPos, yPos, extra) end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param imgResource number
--- @param xPos number
--- @param yPos number
--- @param extra string
--- @param time number
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function placeSprite(type, imgResource, xPos, yPos, extra, time) end

--- Returns the current gravity.
--- @return number
--- @deprecated Use Defines.gravity instead.
function gravity() end

--- Sets the current gravity.
--- @param value number
--- @deprecated Use Defines.gravity instead.
function gravity(value) end

--- Returns the current earthquake factor.
--- @return number
--- @deprecated Use Defines.earthquake instead.
function earthquake() end

--- Sets the current earthquake factor. Slowly returns to 0!
--- @param value number
--- @deprecated Use Defines.earthquake instead.
function earthquake(value) end

--- Returns the current jump height factor of all players.
--- @return number
--- @deprecated Use Defines.jumpheight instead.
function jumpheight() end

--- Sets the current jump height factor of all players.
--- @param value number
--- @deprecated Use Defines.jumpheight instead.
function jumpheight(value) end

--- Returns the current jump height factor (when bounced off an enemy) of all players.
--- @return number
--- @deprecated Use Defines.jumpheight_bounce instead.
function jumpheightBounce() end

--- Sets the current jump height factor (when bounced off an enemy) of all players.
--- @param value number
--- @deprecated Use Defines.jumpheight_bounce instead.
function jumpheightBounce(value) end

--- Triggers an event by name.
--- @param eventName string
--- @deprecated Use Misc.triggerEvent instead.
function triggerEvent(eventName) end

--- Returns all blocks.
--- @return table<number, Block>
--- @deprecated Use Block.get instead.
function blocks() end

--- Returns all blocks with the specific id.
--- @param ID number
--- @return table<number, Block>
--- @deprecated Use Block.get instead.
function findblocks(ID) end

--- Converts every npc on screen to coins. (Like you would hit the exit.)
--- @deprecated Use Misc.npcToCoins instead.
function npcToCoins() end

--- Returns all running animations.
--- @return table<number, Effect>
--- @deprecated Use Effect.get instead.
function animations() end

--- Exits the level.
--- @deprecated Use Level.exit instead.
function exitLevel() end

--- Returns the current state of hitting the goal. If currently not winning then this value is 0.
--- @return number
--- @deprecated Use Level.winState instead.
function winState() end

--- Sets the current state of hitting the goal. If currently not winning then this value is 0.
--- @param value number
--- @deprecated Use Level.winState instead.
function winState(value) end

--- Runs an effect/animation by id. The parameter extraData should be 0, 1, or 1065353216 (you have to try out).
--- @param id number
--- @param x number
--- @param y number
--- @param extraData number
--- @deprecated Use Effect.spawn instead.
function runAnimation(id, x, y, extraData) end

--- Runs an effect/animation by id. The parameter extraData should be 0, 1, or 1065353216 (you have to try out).
--- @param id number
--- @param x number
--- @param y number
--- @param height number
--- @param width number
--- @param extraData number
--- @deprecated Use Effect.spawn instead.
function runAnimation(id, x, y, height, width, extraData) end

--- Runs an effect/animation by id. The parameter extraData should be 0, 1, or 1065353216 (you have to try out).
--- @param id number
--- @param x number
--- @param y number
--- @param height number
--- @param width number
--- @param speedX number
--- @param speedY number
--- @param extraData number
--- @deprecated Use Effect.spawn instead.
function runAnimation(id, x, y, height, width, speedX, speedY, extraData) end

--- Gets the cheat text buffer.
--- @return VBStr
--- @deprecated Use Misc.cheatBuffer instead.
function getInput() end

--- Toggles the hud on/off.
--- @param showHud boolean
--- @deprecated Use Graphics.activateHud instead.
function hud(showHud) end

--- Gets the level name/title.
--- @return string
--- @deprecated Use Level.name instead.
function getLevelName() end

--- Gets the level filename.
--- @return string
--- @deprecated Use Level.filename instead.
function getLevelFilename() end

--- Spawns a new NPC with the specific ID.
--- @param npcid number
--- @param x number
--- @param y number
--- @param section number
--- @return NPC
--- @deprecated Use NPC.spawn instead.
function spawnNPC(npcid, x, y, section) end

--- Spawns a new NPC with the specific ID.
--- @param npcid number
--- @param x number
--- @param y number
--- @param section number
--- @param respawn boolean
--- @return NPC
--- @deprecated Use NPC.spawn instead.
function spawnNPC(npcid, x, y, section, respawn) end

--- Spawns a new NPC with the specific ID.
--- @param npcid number
--- @param x number
--- @param y number
--- @param section number
--- @param respawn boolean
--- @param centered boolean
--- @return NPC
--- @deprecated Use NPC.spawn instead.
function spawnNPC(npcid, x, y, section, respawn, centered) end

--- Spawns a new Effect with the specific ID.
--- @param effectID number
--- @param x number
--- @param y number
--- @return Effect
--- @deprecated Use Effect.spawn instead.
function spawnEffect(effectID, x, y) end

--- Spawns a new Effect with the specific ID and Animation Frame.
---
--- This Animation frame (as parameter) is not the same as Animation.animationFrame!
--- @param effectID number
--- @param x number
--- @param y number
--- @param animationFrame number
--- @return Effect
--- @deprecated Use Effect.spawn instead.
function spawnEffect(effectID, x, y, animationFrame) end

---Loads the library packagename.lua. **Do load it outside every other function! (Recommended at the top of your scriptfile).**
---@param packageName string
---@return table api
---@return boolean newLoaded `false` if the library is already loaded
---@deprecated Use "require" for SMBX2 Beta 4 or later
function loadAPI(packageName) end

---Loads the library packagename.lua and shares it with lunadll.lua and lunaworld.lua. **Do load it outside every other function! (Recommended at the top of your scriptfile).**
---@param packageName string
---@return table api
---@return boolean newLoaded `false` if the library is already loaded
---@deprecated Use "require" for SMBX2 Beta 4 or later
function loadSharedAPI(packageName) end
