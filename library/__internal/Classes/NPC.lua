---@meta _

---@alias NPCMemoryOffset
---|`0x00` # Attached layer name. Use field attachedLayerObj or attachedLayerName. `FIELD_STRING`
---|`0x04` # 2 when the NPC is inside quicksand, 1 on the frame the NPC leaves quicksand. `FIELD_WORD`
---|`0x06` # Respawn delay. Counts down each frame and prevents the NPC from spawning while over 0. Only ever set in battle mode. `FIELD_WORD`
---|`0x08` # True if the NPC should bounce on the floor. Held/thrown by Toad/Peach or knocked forward by Link stab. Resets when touching the ground, but does not reset if Peach or Toad dropped the NPC without throwing it. `FIELD_BOOL`
---|`0x0A` # Set to 2 when touching a block below and briefly immediately after being thrown by the player. Use field collidesBlockBottom. `FIELD_WORD`
---|`0x0C` # Set to 2 when touching a block to the left. Use field collidesBlockLeft. `FIELD_WORD`
---|`0x0E` # Set to 2 when touching a block above. Use field collidesBlockUp. `FIELD_WORD`
---|`0x10` # Set to 2 when touching a block to the right. Use field collidesBlockRight. `FIELD_WORD`
---|`0x12` # Set to 2 when pushed by a layer or another NPC. Needs to be set in order to crush the NPC. `FIELD_WORD`
---|`0x14` # Unused Timeout for Held NPCs in Online Play. `FIELD_WORD`
---|`0x18` # Speed X value without "speed" config modifier. Horizontal speed is copied into here before processing the speed config, and copied back after movement occurs. `FIELD_FLOAT`
---|`0x1C` # Water countdown timer. Normally set to 2 when in water and will count down to 0. Integer values from -1 through 3 may have distinct effects in various cases. `FIELD_WORD`
---|`0x1E` # Unused Settings (?). `FIELD_WORD`
---|`0x20` # True if the NPC should not create a lava splash effect. `FIELD_BOOL`
---|`0x22` # Block-array index of slope currently stood on. `FIELD_WORD`
---|`0x24` # Hit counter for score calculation. `FIELD_WORD`
---|`0x26` # Invincibility frame countdown for sword attacks and tail swipes. Use field invincibleToSword. `FIELD_WORD`
---|`0x28` # Whether to only draw the NPC's silhouette and let it pass through walls. Use field drawOnlyMask. `FIELD_BOOL`
---|`0x2C` # Name of the Activate-Event. Use field activateEventName. `FIELD_STRING`
---|`0x30` # Name of the Death-Event. Use field deathEventName. `FIELD_STRING`
---|`0x34` # Name of the Talk-Event. Use field talkEventName. `FIELD_STRING`
---|`0x38` # Name of the Empty-Layer-Event. Use field noMoreObjInLayer. `FIELD_STRING`
---|`0x3C` # Name of the NPC's layer. Use field layerName. `FIELD_STRING`
---|`0x40` # Whether or not the NPC is currently hidden. Use field isHidden. `FIELD_BOOL`
---|`0x42` # Whether or not the legacyBoss flag is enabled. Use field legacyBoss. `FIELD_BOOL`
---|`0x44` # True if the exclamation mark for talking to the NPC is being displayed. `FIELD_BOOL`
---|`0x46` # Whether or not the NPC is friendly. Use field friendly. `FIELD_BOOL`
---|`0x48` # True if the NPC is set to not move. Use field dontMove. `FIELD_BOOL`
---|`0x4A` # True if the Dont Move flag was initially set. `FIELD_BOOL`
---|`0x4C` # The NPC's talk message. Use field msg. `FIELD_STRING`
---|`0x50` # Horizontal force exerted on the NPC to push it out of a block. `FIELD_FLOAT`
---|`0x5C` # Horizontal force exerted on the NPC by a touched NPC or layer. `FIELD_FLOAT`
---|`0x60` # Index of the clown car-riding player the NPC is standing on. `FIELD_WORD`
---|`0x62` # Y-Coordinate of the clown car-riding player the NPC is standing on. `FIELD_WORD`
---|`0x64` # True for generators. Use field isGenerator. `FIELD_BOOL`
---|`0x68` # A generator NPC's spawn interval. Use field generatorInterval. `FIELD_FLOAT`
---|`0x6C` # Generator timer. Use field generatorTimer. `FIELD_FLOAT`
---|`0x70` # A generator NPC's spawn direction. Use field generatorDirection. `FIELD_WORD`
---|`0x72` # A generator NPC's type. Use field generatorType. `FIELD_WORD`
---|`0x74` # Whether or not the generator can fire. Does not account for objects blocking the generator's spawn position. `FIELD_BOOL`
---|`0x76` # Something to do with players standing on NPCs (?). `FIELD_BOOL`
---|`0x78` # NPC X-Position. Use field x. `FIELD_DFLOAT`
---|`0x80` # NPC Y-Position. Use field y. `FIELD_DFLOAT`
---|`0x88` # NPC Width. Use field width. `FIELD_DFLOAT`
---|`0x90` # NPC Height. Use field height. `FIELD_DFLOAT`
---|`0x98` # NPC X-Speed. Use field speedX. `FIELD_DFLOAT`
---|`0xA0` # NPC Y-Speed. Use field speedY. `FIELD_DFLOAT`
---|`0xA8` # NPC Spawn X-Position. Use field spawnX. `FIELD_DFLOAT`
---|`0xB0` # NPC Spawn Y-Position. Use field spawnY. `FIELD_DFLOAT`
---|`0xB8` # NPC Spawn Width. Use field spawnWidth. `FIELD_DFLOAT`
---|`0xC0` # NPC Spawn Height. Use field spawnHeight. `FIELD_DFLOAT`
---|`0xC8` # NPC Spawn X-Speed. Use field spawnSpeedX. `FIELD_DFLOAT`
---|`0xD0` # NPC Spawn Y-Speed. Use field spawnSpeedY. `FIELD_DFLOAT`
---|`0xD8` # Direction the NPC is spawned in. Use field spawnDirection. `FIELD_FLOAT`
---|`0xDC` # ID which the NPC spawns as. 0 means doesn't respawn. Use field spawnId. `FIELD_WORD`
---|`0xDE` # ai1 value on respawn. Contains ID of the "contained NPC" for container NPCs. Use field spawnAi1. `FIELD_WORD`
---|`0xE0` # ai2 value on respawn. Other ai values are always reset to 0. Use field spawnAi2. `FIELD_WORD`
---|`0xE2` # The NPC's ID. Use field id. `FIELD_WORD`
---|`0xE4` # The NPC's animationFrame. Use field animationFrame. `FIELD_WORD`
---|`0xE6` # The NPC's array index in the NPC array. Use field idx. `FIELD_WORD`
---|`0xE8` # The NPC's animation timer. Use field animationTimer. `FIELD_FLOAT`
---|`0xEC` # The NPC's facing direction. Use field direction. `FIELD_FLOAT`
---|`0xF0` # The NPC's ai1 value. Use field ai1. `FIELD_DFLOAT`
---|`0xF8` # The NPC's ai2 value. Use field ai2. `FIELD_DFLOAT`
---|`0x100` # The NPC's ai3 value. Use field ai3. `FIELD_DFLOAT`
---|`0x108` # The NPC's ai4 value. Use field ai4. `FIELD_DFLOAT`
---|`0x110` # The NPC's ai5 value. Use field ai5. `FIELD_DFLOAT`
---|`0x118` # A rarely used 6th ai value. Used by Larry, Ludwig, Toad's Boomerang, SMW Lakitu, and the glitchy airship piece NPC. Use field ai6. `FIELD_DFLOAT`
---|`0x120` # True if the NPC is scheduled to turn around. `FIELD_BOOL`
---|`0x11C` # Y-Speed influence through player input (used by glitchy airship piece NPC). `FIELD_FLOAT`
---|`0x122` # True if the NPC is scheduled to die with a given harm type. Use field killFlag. `FIELD_WORD`
---|`0x124` # This is set to false when an NPC resets its respawn position, but will not spawn itself fully because it's still visible by the player. Note: Must be set to true when enforcing a respawn. `FIELD_BOOL`
---|`0x126` # Whether or not the NPC is onscreen on the first or only camera. `FIELD_BOOL`
---|`0x128` # Whether or not the NPC is onscreen on the second or only camera. `FIELD_BOOL`
---|`0x12A` # The NPC's despawn timer. Use field despawnTimer. `FIELD_WORD`
---|`0x12C` # The index of the player grabbing the NPC. Defaults to 0 when not grabbed, setting to 1 or higher deactivates block collision when grabbed but causes the respective player to drop other objects. Use field heldIndex. `FIELD_WORD`
---|`0x12E` # Countdown timer during which thrown NPCs are unable to hurt the throwing player. Set to 30 when thrown. `FIELD_WORD`
---|`0x130` # Index of grabbing player which should be marked as un-harmable while 0x12E is above 0. `FIELD_WORD`
---|`0x132` # Which Player threw the NPC. Resets when NPC resumes normal behaviour. Used in Battle Mode. `FIELD_WORD`
---|`0x134` # Used for NPC's being crushed. If inside a block while this is greater than or equal to 5, most NPC's will die (with exceptions, such as springs). Forcing to 0 can prevent the NPC from dying when thrown into a wall. `FIELD_WORD`
---|`0x136` # If true, the NPC can harm other NPC's. Usually true for thrown NPCs and projectile-generated NPCs. Use field isProjectile. `FIELD_BOOL`
---|`0x138` # The NPC's forced state/contained within value. See the table below for details. Use field forcedState. `FIELD_WORD`
---|`0x13C` # General purpose "timer" for forced states. See 0x138 for how each state uses it. Use field forcedCounter1. `FIELD_DFLOAT`
---|`0x144` # General purpose "timer" for forced states. See 0x138 for how each state uses it. Use field forcedCounter2. `FIELD_WORD`
---|`0x146` # The NPC's section. Use field section. `FIELD_WORD`
---|`0x148` # Boss Hit count. Counts up until a per-boss hardcoded kill thereshold is reached. Does not always start at 0 depending on NPC config. `FIELD_FLOAT`
---|`0x14C` # Index of camera that just spawned the NPC. `FIELD_WORD`
---|`0x14E` # ID of the block the NPC was created from due to an ongoing P-Switch effect. `FIELD_WORD`
---|`0x150` # Index of NPC in an array involving blocks. Appears to only count for NPCs affected by the npcblocktop flag (?). `FIELD_WORD`
---|`0x152` # Likely used for an internal bug fix related to collisions next to walls. `FIELD_BOOL`
---|`0x154` # Is set to true when an NPC in a "No Turn Back" section is spawned. The "No Turn Back"-Effect is only capable of permanently killing NPCs with this flag set to true. `FIELD_BOOL`
---|`0x156` # Invincibility frame countdown for all sources of harm. `FIELD_WORD`

---NPCs (Non Player Characters) are interactive level elements. This includes enemies, powerups, platforms and various miscellaneous other objects.
NPC = {}

--- @return integer npcCount Returns the number of NPCs in the level.
function NPC.count() end

--- Spawns a new NPC at the given coordinates in the given section. If 'section' is not provided, it gets the index of the section using the coordinates. If 'respawn' is true, the NPC will not permanently die upon despawning. If 'centered' is true, the x/y coordinates are interpreted to be at the NPC's center, rather than top-left corner. Both 'respawn' and 'centered' default to false.
--- @param id integer The ID of the NPC to spawn.
--- @param x number The x-coordinate for spawning the NPC.
--- @param y number The y-coordinate for spawning the NPC.
--- @param section integer? The section index to spawn the NPC in (optional).
--- @param respawn boolean? Whether the NPC should respawn after despawning (optional).
--- @param centered boolean? Whether the coordinates are centered on the NPC (optional).
--- @return NPC newlySpawnedNPC The NPC object that was spawned.
function NPC.spawn(id, x, y, section, respawn, centered) end

--- Returns a table of references to all NPCs in the level.
--- @return NPC[] NPCs A table of all NPCs.
function NPC.get() end

--- Returns a table of references to all NPCs of the given id(s) in the optionally provided section(s).
--- @param ids integer|integer[] The ID or IDs of NPCs to retrieve.
--- @param sections integer|integer[]? The section or sections to look in (optional).
--- @return NPC[] NPCs A table of NPCs matching the criteria.
function NPC.get(ids, sections) end

--- Returns a table of references to all NPCs that are within the rectangle defined by the 4 coordinates. Coordinates x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The starting x-coordinate of the rectangle.
--- @param y1 number The starting y-coordinate of the rectangle.
--- @param x2 number The ending x-coordinate of the rectangle.
--- @param y2 number The ending y-coordinate of the rectangle.
--- @return NPC[] NPCs A table of NPCs intersecting the rectangle.
function NPC.getIntersecting(x1, y1, x2, y2) end

--- Returns a table of references to all NPCs of the given id(s). Unlike get, the table should be formatted as a lookup table, where the NPC indices are the keys.
--- @param idMap table<integer, boolean> A table formatted as a lookup table with NPC IDs as keys and 'true' as values.
--- @return NPC[] NPCs A table of NPCs matching the ID map.
function NPC.getByFilterMap(idMap) end

--- Returns an iterator for iterating over a table of references to all NPCs in the level.
--- @return fun():number, NPC iterator An iterator for all NPCs.
function NPC.iterate() end

--- Returns an iterator for iterating over a table of references to all NPCs of the given id(s).
--- @param ids integer|integer[] The ID or IDs of NPCs to iterate over.
--- @return fun():number, NPC iterator An for NPCs matching the ID(s).
function NPC.iterate(ids) end

--- Returns an iterator for iterating over a table of references to all NPCs that are within the rectangle defined by the 4 coordinates. Coordinates x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The starting x-coordinate of the rectangle.
--- @param y1 number The starting y-coordinate of the rectangle.
--- @param x2 number The ending x-coordinate of the rectangle.
--- @param y2 number The ending y-coordinate of the rectangle.
--- @return fun():number, NPC iterator An iterator for NPCs intersecting the rectangle.
function NPC.iterateIntersecting(x1, y1, x2, y2) end

--- Returns an iterator for iterating over a table of references to all NPCs of the given id(s). Unlike iterate, the table should be formatted as a lookup table, where the NPC indices are the keys.
--- @param idMap table<integer, boolean> A table formatted as a lookup table with NPC IDs as keys and 'true' as values.
--- @return fun():number, NPC iterator An iterator for NPCs matching the ID map.
function NPC.iterateByFilterMap(idMap) end

--- Includes all NPCs that have a harm type other than HARM_TYPE_LAVA or HARM_TYPE_OFFSCREEN registered.
--- @type integer[]
NPC.HITTABLE = {}

---@type integer[]
NPC.CLEARPIPE = {}

--- Includes all NPCs that are not included in the NPC.HITTABLE list.
--- @type integer[]
NPC.UNHITTABLE = {}

--- Includes all NPCs that have their "health" NPC config flag set to something higher than 1. Note that setting the flag alone doesn't cause an NPC to die in multiple hits. It merely adds it to the list. The health handling has to be done manually.
--- @type integer[]
NPC.MULTIHIT = {}

--- Includes all NPCs that have the "powerup" NPC config flag set. Note that setting the flag doesn't cause an NPC to be a powerup. It merely indicates that it should be part of the list.
--- @type integer[]
NPC.POWERUP = {}

--- Includes all NPCs that have the "isinteractable" NPC config flag set.
--- @type integer[]
NPC.COLLECTIBLE = {}

--- Includes all NPCs that have the "iscoin" NPC config flag set.
--- @type integer[]
NPC.COIN = {}

--- Includes all NPCs that have a nonzero weight set.
--- @type integer[]
NPC.WEIGHT = {}

--- Includes NPCs that have the "isshell" NPC config flag set.
--- @type integer[]
NPC.SHELL = {}

--- Includes all isshoe and isyoshi mounts. The clown car is excluded from this list.
--- @type integer[]
NPC.MOUNT = {}

--- Includes all NPCs that have their "iscustomswitch" NPC config flag set. Note that setting the flag alone doesn't cause an NPC to act like a switch. It merely adds it to the list.
--- @type integer[]
NPC.SWITCH = {}

--- Includes all NPCs that have their "playerblock" NPC config flag set.
--- @type integer[]
NPC.PLAYERSOLID = {}

--- Includes all NPCs that have their "isvine" NPC config flag set.
--- @type integer[]
NPC.VINE = {}

--- Includes all NPCs that have their "isvegetable" NPC config flag set.
--- @type integer[]
NPC.VEGETABLE = {}

--- Includes all NPCs that have their "ishot" NPC config flag set.
--- @type integer[]
NPC.HOT = {}

--- Includes all NPCs that have their "iscold" NPC config flag set.
--- @type integer[]
NPC.COLD = {}

--- Map of all NPCs that have a harm type other than HARM_TYPE_LAVA or HARM_TYPE_OFFSCREEN registered.
--- @type table<integer, boolean>
NPC.HITTABLE_MAP = {}

--- Map of all NPCs that are not included in the NPC.HITTABLE list.
--- @type table<integer, boolean>
NPC.UNHITTABLE_MAP = {}

--- Map of all NPCs that have their "health" NPC config flag set to something higher than 1.
--- @type table<integer, boolean>
NPC.MULTIHIT_MAP = {}

--- Map of all NPCs that have the "powerup" NPC config flag set.
--- @type table<integer, boolean>
NPC.POWERUP_MAP = {}

--- Map of all NPCs that have the "isinteractable" NPC config flag set.
--- @type table<integer, boolean>
NPC.COLLECTIBLE_MAP = {}

--- Map of all NPCs that have the "iscoin" NPC config flag set.
--- @type table<integer, boolean>
NPC.COIN_MAP = {}

--- Map of all NPCs that have a nonzero weight set.
--- @type table<integer, boolean>
NPC.WEIGHT_MAP = {}

--- Map of NPCs that have the "isshell" NPC config flag set.
--- @type table<integer, boolean>
NPC.SHELL_MAP = {}

--- Map of all isshoe and isyoshi mounts. Excludes the clown car.
--- @type table<integer, boolean>
NPC.MOUNT_MAP = {}

--- Map of all NPCs that have their "iscustomswitch" NPC config flag set.
--- @type table<integer, boolean>
NPC.SWITCH_MAP = {}

--- Map of all NPCs that have their "playerblock" NPC config flag set.
--- @type table<integer, boolean>
NPC.PLAYERSOLID_MAP = {}

--- Map of all NPCs that have their "isvine" NPC config flag set.
--- @type table<integer, boolean>
NPC.VINE_MAP = {}

--- Map of all NPCs that have their "isvegetable" NPC config flag set.
--- @type table<integer, boolean>
NPC.VEGETABLE_MAP = {}

--- Map of all NPCs that have their "ishot" NPC config flag set.
--- @type table<integer, boolean>
NPC.HOT_MAP = {}

--- Map of all NPCs that have their "iscold" NPC config flag set.
--- @type table<integer, boolean>
NPC.COLD_MAP = {}

---@type table<integer, boolean>
NPC.CLEARPIPE_MAP = {}

NPC.ALL = {}

NPC.LISTS = {}

---@type table<integer, EnemyHarmType>
NPC.vulnerableHarmTypes = {}

---@type table<integer, NPCConfig|table<string, any>>
NPC.config = {}

---@type table<integer, boolean>
NPC.spinjumpSafe = {}

---@class NPC : CollisionObject
--- @field isValid boolean Validates that the NPC object exists. (Read-only)
--- @field idx integer The NPC's index in the internal list of NPCs. (Read-only)
--- @field id integer The NPC's ID.
--- @field data table The NPC's data table. Access to various custom attributes specific to the NPC.
--- @field x number The NPC's x coordinate.
--- @field y number The NPC's y coordinate.
--- @field width number The NPC's width.
--- @field height number The NPC's height.
--- @field speedX number The NPC's horizontal speed.
--- @field speedY number The NPC's vertical speed.
--- @field direction number The NPC's facing direction. Note: setting this resets speedX to 0 unless staticdirection is set in the NPC's config.
--- @field spawnId number The NPC's ID when spawning.
--- @field spawnX number The NPC's x coordinate when spawning.
--- @field spawnY number The NPC's y coordinate when spawning.
--- @field spawnWidth number The NPC's width when spawning.
--- @field spawnHeight number The NPC's height when spawning.
--- @field spawnSpeedX number The NPC's horizontal speed when spawning.
--- @field spawnSpeedY number The NPC's vertical speed when spawning.
--- @field spawnDirection number The NPC's facing direction when spawning.
--- @field layerObj Layer The layer of the NPC.
--- @field layerName VBStr|string The name of the NPC's layer.
--- @field attachedLayerObj Layer The attached layer of the NPC.
--- @field attachedLayerName VBStr|string The name of the NPC's attached layer.
--- @field activateEventName VBStr|string The name of the event executed when the NPC spawns.
--- @field deathEventName VBStr|string The name of the event executed when the NPC dies.
--- @field talkEventName VBStr|string The name of the event executed when the NPC is talked to.
--- @field noMoreObjInLayer VBStr|string The name of the event executed when the NPC is killed and its layer becomes empty.
--- @field collidesBlockBottom boolean Whether or not the NPC currently collides with a block on its bottom edge.
--- @field collidesBlockLeft boolean Whether or not the NPC currently collides with a block on its left edge.
--- @field collidesBlockUp boolean Whether or not the NPC currently collides with a block on its top edge.
--- @field collidesBlockRight boolean Whether or not the NPC currently collides with a block on its right edge.
--- @field collisionGroup VBStr|string The collision group this NPC belongs to.
--- @field collisionGroupIndex number The numerical index of the collision group this NPC belongs to. Used internally to make collision checks faster. (Read-only)
--- @field underwater boolean Whether or not the NPC is currently underwater.
--- @field invincibleToSword boolean Whether or not the NPC is invincible to sword attacks from Link.
--- @field drawOnlyMask boolean Whether or not to only draw the NPC as a black silhouette. If true, affected NPCs can also pass through walls, like the player can with the shadowstar cheat.
--- @field legacyBoss boolean Whether or not the legacy boss flag is enabled on this NPC.
--- @field friendly boolean Whether or not the NPC is friendly.
--- @field dontMove boolean Whether or not the NPC is able to move. If true, the NPC will also attempt to always face the player.
--- @field isHidden boolean Whether or not the NPC is currently visible.
--- @field msg VBStr|string The NPC's talk message. If this is not an empty string, an exclamation point will appear above the NPC when the player gets close.
--- @field noblockcollision boolean Override for the noblockcollision config flag. Toggles per-NPC block collision.
--- @field isProjectile boolean If true, the NPC currently is in the projectile state (thrown, shot out of a generator).
--- @field isGenerator boolean If true, the NPC is a generator NPC.
--- @field generatorInterval number The generator NPC's spawn interval.
--- @field generatorTimer number The generator NPC's spawn timer.
--- @field generatorDirection number The direction in which NPCs from the generator are spawned.
--- @field generatorType number The type of generator (Warp/Projectile).
--- @field animationFrame number The NPC's current animation frame.
--- @field animationTimer number The NPC's animation timer value.
--- @field heldIndex number Index of the player holding this NPC.
--- @field heldPlayer Player The Player holding this NPC, or nil if not held.
--- @field ai1 number Multi-purpose AI field used by NPC AI.
--- @field ai2 number Multi-purpose AI field used by NPC AI.
--- @field ai3 number Multi-purpose AI field used by NPC AI.
--- @field ai4 number Multi-purpose AI field used by NPC AI.
--- @field ai5 number Multi-purpose AI field used by NPC AI.
--- @field ai6 number Multi-purpose AI field used by NPC AI.
--- @field spawnAi1 number Value of ai1 on spawn.
--- @field spawnAi2 number Value of ai2 on spawn.
--- @field killFlag EnemyHarmType Type If nonzero, a kill with the specified harm type is scheduled. Note: Harm types with "EXT" in the name only work in NPC:harm().
--- @field despawnTimer number Timer until the NPC despawns. Forced to its maximum value while on-screen. Once it reaches 0, the NPC despawns. The timer stays at 0 until the NPC's spawn location is off-screen, then changes to -1. If the timer is -1, the NPC can respawn. NPCs that cannot respawn are killed with HARM_TYPE_OFFSCREEN when this timer reaches 0.
--- @field section number The NPC's section index.
--- @field sectionObj Section The NPC's section object. (Read-only)
--- @field forcedState NPCForcedState The current forced state of the NPC.
--- @field forcedCounter1 number General purpose "timer" for forced states.
--- @field forcedCounter2 number General purpose "timer" for forced states.
--- @field lightSource Light The Light Source attached to the NPC.
--- @field _weightContainers WeightContainer[] A list of all weights attached to the NPC.
local NPC = {}

NPC.__type = "NPC"

--- Returns a value of the NPC struct at a specific memory address-offset. If a value is provided, sets the value at the specified memory offset.
--- @param offset number|NPCMemoryOffset Memory offset to access or modify.
--- @param type MemoryFieldType The type of data to read or write.
--- @param value? any The value to set at the specified offset (optional).
--- @return any value Returns the value at the specified memory offset if no value is provided, otherwise returns nil.
function NPC:mem(offset, type, value) end

--- Harms the NPC, inflicting damage upon it. Can optionally specify a harm type, the amount of damage dealt, and the score combo multiplier. Damage is ignored by NPCs that die in one hit. Returns the new score combo multiplier.
--- @param harmType ExtendedEnemyHarmType The type of harm to inflict.
--- @param damage number The amount of damage to inflict.
--- @param multiplier number The score multiplier.
--- @return number multiplier Returns the updated score combo multiplier.
function NPC:harm(harmType, damage, multiplier) end

--- Kills the NPC instantly using the given harm type. If no harm type is specified, the standard kill effect is used.
--- @param harmType? ExtendedEnemyHarmType The type of harm to use for killing the NPC.
function NPC:kill(harmType) end

--- Causes the given player to collect the NPC.
--- @param player Player The player who will collect the NPC.
function NPC:collect(player) end

--- Kills the NPC with a coin effect, similar to when collecting a goal or using Misc.npcToCoins().
function NPC:toCoin() end

--- Transforms the NPC into an ice block.
function NPC:toIce() end

--- Returns the sum of the NPC's weight and all attached weights.
--- @return number weight The total weight of the NPC.
function NPC:getWeight() end

--- Attaches a new weight to the NPC. Returns a weight container for the weight that was just added.
--- @param weight number The weight to attach.
--- @return WeightContainer weightContainer A container for the attached weight.
function NPC:attachWeight(weight) end

--- Detaches a weight container from an NPC. Fails if the weight container belongs to a different object or is not attached to the NPC. Returns whether the weight was removed or not.
--- @param weight WeightContainer The weight container to detach.
--- @return boolean success `true` if the weight was successfully detached, `false` otherwise.
function NPC:detachWeight(weight) end

--- Transforms the NPC into an NPC of a different ID. Optionally centers the transformation and changes the NPC's spawn location to the point of transformation.
--- @param newID number The new NPC ID.
--- @param centered? boolean If true, transformation is centered. Defaults to true.
--- @param changeSpawn? boolean If true, changes the NPC's spawn location to the point of transformation.
function NPC:transform(newID, centered, changeSpawn) end

--- Prints the current state of an NPC's memory addresses to the screen for debugging. Defaults cover the full range if not specified.
--- @param lowerBound? number The lower memory address to start the dump (optional).
--- @param upperBound? number The upper memory address to end the dump (optional).
function NPC:memdump(lowerBound, upperBound) end

--- Logs the current state of an NPC's memory addresses into a file in the data/logs directory. Defaults cover the full range if not specified.
--- @param lowerBound? number The lower memory address to start logging (optional).
--- @param upperBound? number The upper memory address to end logging (optional).
function NPC:memlog(lowerBound, upperBound) end
