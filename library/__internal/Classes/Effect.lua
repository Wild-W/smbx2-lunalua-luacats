---@meta _

---Effects are visual effects that happen when NPCs die, blocks break, and various other actions are performed.
---Currently, effects are split into two systems: The SMBX 1.3 system, used for effect IDs 1-161, and the SMBX2 effects system, used for effect IDs 162 onwards.
---@class EffectManager
---@field config table<number, EffectConfig|table<string, any>> Lua representation of all Effect config. The way to access individual fields is as follows: `Effect.config[id].field`. (ex. Effect.config[1].width = 5). Fields can be read and set.
Effect = {}

---Returns the number of 1.3 effects currently active.
---@return number count Number of effects
function Effect.count() end

---Returns a table of references to all 1.3 effects in the level.
---@return table<number, Effect> effects
function Effect.get() end

---Returns a table of references to all 1.3 effects of the given id(s).
---@param ids number|number[] The ID(s) of the effects to retrieve.
---@return Effect[] effects
function Effect.get(ids) end

---Returns a table of references to all 1.3 effects that are within the rectangle defined by the 4 coordinates.
---@param x1 number The x coordinate of the top-left corner of the rectangle.
---@param y1 number The y coordinate of the top-left corner of the rectangle.
---@param x2 number The x coordinate of the bottom-right corner of the rectangle.
---@param y2 number The y coordinate of the bottom-right corner of the rectangle.
---@return Effect[] effects
function Effect.getIntersecting(x1, y1, x2, y2) end

---Spawns a new effect at the given location.
---@param id number The ID of the effect to spawn.
---@param x number The x coordinate to spawn the effect at.
---@param y number The y coordinate to spawn the effect at.
---@param variant number? The variant of the effect to use (optional).
---@param npcID number? The NPC ID to set on the effect (optional).
---@param drawOnlyMask boolean? If true, makes the effect silhouette render (only 1.3 effects).
---@return Effect effect
function Effect.spawn(id, x, y, variant, npcID, drawOnlyMask) end

---Spawns a new effect at the location of the given object with x, y, width, and height fields (Player, NPC, Block, or other).
---@param id number The ID of the effect to spawn.
---@param target table The object to spawn the effect at.
---@param variant number? The variant of the effect to use (optional).
---@param npcID number? The NPC ID to set on the effect (optional).
---@param drawOnlyMask boolean? If true, makes the effect silhouette render (only 1.3 effects).
---@return Effect effect
function Effect.spawn(id, target, variant, npcID, drawOnlyMask) end

---@class Effect
--- @field id number The Effect spawner's ID.
--- @field x number The Effect spawner's x coordinate.
--- @field y number The Effect spawner's y coordinate.
--- @field width number The Effect's width. If this is a spawner, defaults to its first spawned effect's width.
--- @field height number The Effect's height. If this is a spawner, defaults to its first spawned effect's height.
local EffectInstance = {}

---Kills the effect instantly.
function EffectInstance:kill() end

---The effect spawner object. This spawner spawns individual effect objects from the config.
---@class EffectSpawner : Effect
--- @field xOffset number|table<any, number> Override for the xOffset config property.
--- @field yOffset number|table<any, number> Override for the yOffset config property.
--- @field sound SFX Override for the sound config property. Sound to play when an effect spawns.
--- @field spawnerSpeedX number The Effect spawner's horizontal speed. Distinct from speedX, which applies as the config value override for the spawned effect object.
--- @field spawnerSpeedY number The Effect spawner's vertical speed. Distinct from speedX, which applies as the config value override for the spawned effect object.
--- @field lastX number Last frame's position of the spawner, for updating the position of the spawner's particles.
--- @field lastY number Last frame's position of the spawner, for updating the position of the spawner's particles.
--- @field skipPositionUpdate boolean If set to true, child effects will not move with their spawner.
--- @field timer number Counts up from 0. Used for spawning delayed effect particles.
--- @field variant number The variant number passed from the Effect.spawn call.
--- @field parent table Stores the x/y values, or the target's x/y/width/height/speedX/speedY from the Effect.spawn call.
--- @field waitingToRemove boolean If true, the spawner is waiting for its effects to despawn, so that it can be safely removed.
--- @field effects Effect[] The list of spawned effect particles for this spawner.
--- @field startTimes table<number, number> A map of effect particle layers to their delay values.
--- @field finished table<number, boolean> A map of effect particle layers to whether or not they have already been spawned.

---The effect particle instance object. These fields are used by the effect's particle instance objects.
---@class EffectParticle : Effect
--- @field speedX number The Effect's horizontal speed. Sums the spawner's spawnerSpeedX with the speedX config/override.
--- @field speedY number The Effect's vertical speed. Sums the spawner's spawnerSpeedY with the speedY config/override.
--- @field maxSpeedX number The Effect's maximum horizontal speed.
--- @field maxSpeedY number The Effect's maximum vertical speed.
--- @field direction number The Effect's facing direction.
--- @field gravity number The Effect's per-tick gravity.
--- @field xAlign number Determines the horizontal sprite anchor for the Effect. Left is 0, Right is 1.
--- @field yAlign number Determines the vertical sprite anchor for the Effect. Top is 0, Bottom is 1.
--- @field lifetime number The particle's lifetime, expressed in frames.
--- @field timer number Counts down from lifetime, towards 0. Manages the particle's lifetime and often parts of its logic.
--- @field subTimer number Unused by any SMBX2 particles, but included for future compatibility.
--- @field variant number The variant of the effect.
--- @field variants number The number of variants the effect has.
--- @field parent table Stores the spawner's parent values.
--- @field isHidden boolean If true, the Effect's execution is halted and the Effect is invisible.
--- @field img Texture The image that is drawn for the Effect.
--- @field priority number The Effect's render priority.
--- @field animationFrame number The Effect's animation frame.
--- @field animationTimer number The Effect's animation timer.
--- @field frames number The number of frames the Effect has per direction per variant.
--- @field framestyle number The framestyle of the Effect (0 or 1).
--- @field framespeed number The number of frames between changes to the animation.
--- @field angle number The angle of the Effect.
--- @field rotation number The per-frame change of angle of the Effect.
--- @field frameOffset number The sprite sheet animation frame offset caused by variants.
--- @field npcID number Used by some effects to spawn NPCs as part of their logic.
--- @field drawOnlyMask boolean If true, the Effect is drawn all black. (only works for 1.3 effects right now)
