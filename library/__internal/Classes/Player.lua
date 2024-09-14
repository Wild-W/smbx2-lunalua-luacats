---@meta _

---Players are human-controlled characters that serve as the primary way for players to interact with the game in standard levels. They are only used within Levels. For player's controlled entity on World Maps, see the World class.
Player = {}

--- Returns the number of players currently in the level.
--- @return number playerCount The number of players currently in the level.
function Player.count() end

--- Returns a table of references to all players currently in the level.
--- @return Player[] players A table of all active players.
function Player.get() end

--- Returns the player closest to a given coordinate.
--- @param x number The x-coordinate.
--- @param y number The y-coordinate.
--- @return Player player The closest player.
function Player.getNearest(x, y) end

--- Returns a table of players that intersect with the defined area.
--- @param left number The left boundary of the area.
--- @param top number The top boundary of the area.
--- @param right number The right boundary of the area.
--- @param bottom number The bottom boundary of the area.
--- @return Player[] players A table of players intersecting with the area.
function Player.getIntersecting(left, top, right, bottom) end

--- Returns all player templates.
--- @return Player[] playerTemplates A table of all player templates.
function Player.getTemplates() end

--- Returns the player template of a given ID.
--- @param id number The template ID.
--- @return Player playerTemplate The player template.
function Player.getTemplate(id) end

--- Converts a spritesheet frame into its corresponding x and y coordinate on the spritesheet.
--- @param frame number The frame number on the spritesheet.
--- @param direction number The direction the sprite is facing.
--- @return number x, number y The x and y coordinates on the spritesheet.
function Player.convertFrame(frame, direction) end

--- Sets a player character's costume.
--- @param character CharacterType The character to change the costume for.
--- @param costumeName string The name of the costume.
--- @param volatile boolean Whether the costume change should be temporary.
function Player.setCostume(character, costumeName, volatile) end

--- Gets the name of the currently equipped costume for a specified character.
--- @param character CharacterType The character to check.
--- @return string costumeName The name of the costume.
function Player.getCostume(character) end

--- The first player object.
---@type Player
player = {}

--- The second player object, or `nil` if only one player is in the level.
---@type Player?
player2 = {}

---@class Player : CollisionObject, LuaHelperClass
local PlayerInstance = {}

PlayerInstance.data = {
	_basegame = {},
}

---@type WeightContainer[]
PlayerInstance._weightContainers = {}

---@type number
PlayerInstance._idx = nil

---@type number
PlayerInstance._ptr = nil

--- Returns a value of the Player struct at a specific memory address-offset.
--- @param offset number|PlayerMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function PlayerInstance:mem(offset, type) end

--- Sets a value of the Player struct at a specific memory address-offset.
--- @param offset number|PlayerMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function PlayerInstance:mem(offset, type, value) end

--- Harms the player. Does nothing while the player is invulnerable.
function PlayerInstance:harm() end

--- Kills the player instantly.
function PlayerInstance:kill() end

--- Returns the sum of the player's weight and all attached weights.
--- @return number weight The total weight.
function PlayerInstance:getWeight() end

--- Attaches a new weight to the player.
--- @param weight number The weight to attach.
--- @return WeightContainer weight A container for the attached weight.
function PlayerInstance:attachWeight(weight) end

--- Detaches a weight container from the player.
--- @param weight WeightContainer The weight container to detach.
--- @return boolean success Whether the weight was successfully detached.
function PlayerInstance:detachWeight(weight) end

--- Transforms the player into another character.
--- @param index CharacterType The character index to transform into.
--- @param effect boolean? Whether to apply a transformation effect.
function PlayerInstance:transform(index, effect) end

--- Returns a PlayerSettings object of the current character and powerup state of the player.
--- @return PlayerSettings playerSettings The current player settings.
function PlayerInstance:getCurrentPlayerSetting() end

--- Returns true if the player is touching the ground.
--- @return boolean isOnGround Whether the player is on the ground.
function PlayerInstance:isOnGround() end

--- Returns true if the player is touching the ground.
--- @return boolean isOnGround Whether the player is on the ground.
function PlayerInstance:isGroundTouching() end

--- Returns true if the player is climbing.
--- @return boolean isClimbing Whether the player is climbing.
function PlayerInstance:isClimbing() end

--- Returns true if the player is invincible.
--- @return boolean isInvincible Whether the player is invincible.
function PlayerInstance:isInvincible() end

--- Sets the current sprite on the spritesheet.
--- @param x number The x coordinate on the spritesheet.
--- @param y number The y coordinate on the spritesheet.
--- @param forceDirection boolean Whether to force the direction of the player.
function PlayerInstance:setCurrentSpriteIndex(x, y, forceDirection) end

--- Renders the player according to the provided arguments.
--- @param args table Named arguments for rendering.
function PlayerInstance:render(args) end

--- Logs the current state of a Player's memory addresses into a file.
--- @param lowerBound number The lower memory address bound.
--- @param upperBound number The upper memory address bound.
function PlayerInstance:memlog(lowerBound, upperBound) end

--- Prints the current state of a Player's memory addresses to the screen.
--- @param lowerBound number The lower memory address bound.
--- @param upperBound number The upper memory address bound.
function PlayerInstance:memdump(lowerBound, upperBound) end

---Returns the current indexX and indexY of the sprite on the spritesheet.
---@return number x
---@return number y
function PlayerInstance:getCurrentSpriteIndex() end

--- Causes the player to animate according to a defined sequence of frames.
--- @param frames table of number The sequence of frames for the animation.
--- @param speed number The speed of the animation.
--- @param loop boolean Whether the animation should loop.
--- @param priority number The rendering priority of the animation.
--- @return PlayerAnimation playerAnimation The animation object.
function PlayerInstance:playAnim(frames, speed, loop, priority) end

--- Causes the player to animate according to a defined sequence of frames, interpreting frames as x-y coordinates on the spritesheet.
--- @param frames table of number The sequence of frames for the animation, interpreted as x-y coordinates.
--- @param speed number The speed of the animation.
--- @param loop boolean Whether the animation should loop.
--- @param priority number The rendering priority of the animation.
--- @param useCoordinates boolean If true, uses x-y coordinates for the frame on the spritesheet.
--- @return PlayerAnimation playerAnimation The animation object.
function PlayerInstance:playAnim(frames, speed, loop, priority, useCoordinates) end

--- Sets the player's current frame on the spritesheet.
--- @param frame number The frame to set.
function PlayerInstance:setFrame(frame) end

--- Sets the player's current frame on the spritesheet using x and y coordinates.
--- @param x number The x coordinate on the spritesheet for the frame.
--- @param y number The y coordinate on the spritesheet for the frame.
function PlayerInstance:setFrame(x, y) end

--- Gets the player's current frame as a spritesheet frame.
--- @param frame number The frame to retrieve.
--- @return number frame The current frame.
function PlayerInstance:getFrame(frame) end

--- Gets the player's current frame as x and y coordinates on the spritesheet.
--- @param frame number The frame to retrieve.
--- @return number x, number y The x and y coordinates on the spritesheet for the frame.
function PlayerInstance:getFrame(frame) end

--- Instantly teleports the player to the target position.
--- @param x number The x-coordinate of the target position.
--- @param y number The y-coordinate of the target position.
--- @param bottomCenterAligned boolean? If `true`, aligns the bottom center of the player's hitbox with the coordinates; otherwise, aligns the top left corner.
function PlayerInstance:teleport(x, y, bottomCenterAligned) end

--- The player's index in the internal list of players.
---@type number
PlayerInstance.idx = 0

--- If the player instance is valid.
--- @type boolean
PlayerInstance.isValid = nil

--- The direction the player is facing. `-1`: left. `1`: right.
--- @type -1|1
PlayerInstance.FacingDirection = nil

--- The player's x coordinate (left edge of the hitbox).
---@type number
PlayerInstance.x = 0

--- The player's y coordinate (top edge of the hitbox).
---@type number
PlayerInstance.y = 0

--- The width of the player's hitbox.
---@type number
PlayerInstance.width = 0

--- The height of the player's hitbox.
---@type number
PlayerInstance.height = 0

--- The player's horizontal speed.
---@type number
PlayerInstance.speedX = 0

--- The player's vertical speed.
---@type number
PlayerInstance.speedY = 0

--- The number of frames the player has been sliding while not colliding with a slope.
---@type number
PlayerInstance.slidingTimeSinceOnSlope = 0

--- The player's facing direction. Can be either -1 or 1.
---@type number
PlayerInstance.direction = 1

--- Returns a RECT of the distance between the player and the edges of the camera.
---@type RECT
PlayerInstance.screen = nil

--- The index of the section the player is in.
---@type number
PlayerInstance.section = 0

--- Gets a reference to the section the player is in.
---@type Section
PlayerInstance.sectionObj = nil

--- The player's current powerup state.
---@type number
PlayerInstance.powerup = 0

--- ID of the NPC in the player's reserve item box.
---@type number
PlayerInstance.reservePowerup = 0

--- Whether the player is currently in the Mega Mushroom state.
---@type boolean
PlayerInstance.isMega = false

--- Whether the player should keep their Tier 2 Powerup when transforming into the Mega state.
---@type boolean
PlayerInstance.keepPowerOnMega = false

--- Whether the player is currently affected by a Starman's invulnerability.
---@type boolean
PlayerInstance.hasStarman = false

--- The player's current character index.
---@type number
PlayerInstance.character = 0

--- The NPC currently held by the player. If the player is not holding an NPC, this value is nil.
---@type NPC?
PlayerInstance.holdingNPC = nil

--- The NPC currently stood on by the player. If the player is not standing on an NPC, this value is nil.
---@type NPC?
PlayerInstance.standingNPC = nil

--- The NPC currently climbed on by the player. If the player is not climbing on an NPC, this value is nil.
---@type NPC?
PlayerInstance.climbingNPC = nil

--- The BGO currently climbed on by the player. If the player is not climbing on a BGO, this value is nil.
---@type BGO?
PlayerInstance.climbingBGO = nil

--- Mirror to isClimbing().
---@type boolean
PlayerInstance.climbing = false

--- Ignores collision with blocks.
---@type boolean
PlayerInstance.noblockcollision = false

--- Ignores collision with NPCs.
---@type boolean
PlayerInstance.nonpcinteraction = false

--- Ignores collision with other Players.
---@type boolean
PlayerInstance.noplayerinteraction = false

--- If the player is currently in a clear pipe.
---@type boolean
PlayerInstance.inClearPipe = false

--- If the player is currently in a launch barrel.
---@type boolean
PlayerInstance.inLaunchBarrel = false

--- The type of mount currently mounted by the player.
---@type MountType
PlayerInstance.mount = nil

--- The color of the mounted mount.
---@type BootColor|YoshiColor
PlayerInstance.mountColor = nil

--- The player's death timer. If >0, the player has died.
---@type number
PlayerInstance.deathTimer = 0

--- The player's current animation frame. Values correspond to a specific chart.
---@type number
PlayerInstance.frame = 0

--- The player's current forced state.
---@type PlayerForcedState
PlayerInstance.forcedState = nil

--- The timer related to the player's current forced state.
---@type number
PlayerInstance.forcedTimer = 0

---@class PlayerKeysMap
local playerKeys = {
	---@type PlayerKeyState
	up = nil,
	---@type PlayerKeyState
	down = nil,
	---@type PlayerKeyState
	left = nil,
	---@type PlayerKeyState
	right = nil,
	---@type PlayerKeyState
	jump = nil,
	---@type PlayerKeyState
	altJump = nil,
	---@type PlayerKeyState
	run = nil,
	---@type PlayerKeyState
	altRun = nil,
	---@type PlayerKeyState
	dropItem = nil,
	---@type PlayerKeyState
	pause = nil,
}

--- A PlayerKeys object containing information on the player's current input. Individual key presses can be manipulated in order to control the player's movement.
---@class PlayerKeys : PlayerKeysMap
PlayerInstance.keys = {
	---@type PlayerKeysMap
	_last = nil,
	---@type PlayerKeysMap
	_now = nil,
	---@type Player
	_parent = nil,
}

--- A PlayerKeys object containing information on the player's current input. Unlike keys, rawKeys will always return the unaltered player input and cannot be manipulated directly.
---@type PlayerKeysMap
PlayerInstance.rawKeys = nil

--- Whether the player is currently pressing up.
---@type boolean
PlayerInstance.upKeyPressing = false

--- Whether the player is currently pressing down.
---@type boolean
PlayerInstance.downKeyPressing = false

--- Whether the player is currently pressing left.
---@type boolean
PlayerInstance.leftKeyPressing = false

--- Whether the player is currently pressing right.
---@type boolean
PlayerInstance.rightKeyPressing = false

--- Whether the player is currently pressing jump.
---@type boolean
PlayerInstance.jumpKeyPressing = false

--- Whether the player is currently pressing altJump.
---@type boolean
PlayerInstance.altJumpKeyPressing = false

--- Whether the player is currently pressing altRun.
---@type boolean
PlayerInstance.altRunKeyPressing = false

--- Whether the player is currently pressing run.
---@type boolean
PlayerInstance.runKeyPressing = false

--- Whether the player is currently pressing dropItem.
---@type boolean
PlayerInstance.dropItemKeyPressing = false

--- Whether the player is currently pressing pause.
---@type boolean
PlayerInstance.pauseKeyPressing = false

--- The collision group this player belongs to.
---@type string
PlayerInstance.collisionGroup = ""

--- The numerical index of the collision group this player belongs to. Used internally to make collision checks faster.
---@type number
PlayerInstance.collisionGroupIndex = 0

--- A list of all weights attached to the player.
---@type WeightContainer[]
PlayerInstance._weightContainers = {}

---@alias PlayerMemoryOffset
--- | `0x00` # Can Toad use his double jump? Use field `canDoubleJump`. `FIELD_BOOL`
--- | `0x02` # Star sparkling effect on the player. `FIELD_WORD`
--- | `0x04` # Whether or not the player is using the unfinished airship vehicle NPC. Forcing to true results in disabling horizontal movement and ducking. `FIELD_BOOL`
--- | `0x06` # Greater than 0 when in quicksand. `FIELD_WORD`
--- | `0x08` # Number of Bombs Link has in his inventory. `FIELD_WORD`
--- | `0x0A` # Is the player on slippery ground? `FIELD_BOOL`
--- | `0x0C` # Is the player a fairy? `FIELD_BOOL`
--- | `0x0E` # Has the fairy already been used in this jump? `FIELD_BOOL`
--- | `0x10` # Frames until the fairy runs out. `FIELD_WORD`
--- | `0x12` # Does Link have a key? `FIELD_BOOL`
--- | `0x14` # Link Slash cooldown timer. `FIELD_WORD`
--- | `0x16` # Number of HP-hearts (used by all characters). `FIELD_WORD`
--- | `0x18` # Is Peach's hover currently available? `FIELD_BOOL`
--- | `0x1A` # Has the player already pressed the jump button for Peach's hover? `FIELD_BOOL`
--- | `0x1C` # Peach hover timer. `FIELD_WORD`
--- | `0x20` # Princess hover Y wave speed. `FIELD_FLOAT`
--- | `0x24` # Princess hover Y wave direction. `FIELD_WORD`
--- | `0x26` # Timer for grabbing objects from above (herb, grabtop NPCs). `FIELD_WORD`
--- | `0x28` # Momentum stored from before a grab from top was initiated. `FIELD_FLOAT`
--- | `0x2C` # Index of the NPC currently climbed on or opposite of the index of the BGO currently climbed on depending on whether the player is climbing a NPC or a BGO. `FIELD_DFLOAT`
--- | `0x34` # 2 when in water or quicksand. Can be set to force the player to be underwater. `FIELD_WORD`
--- | `0x36` # Is the player currently underwater? `FIELD_BOOL`
--- | `0x38` # Water stroke cooldown. `FIELD_WORD`
--- | `0x3A` # If greater than 0, counts down and temporarily disables gravity for the player. Used when launching off of an upwards slope. `FIELD_WORD`
--- | `0x3C` # Is the player sliding? `FIELD_BOOL`
--- | `0x3E` # Is the player generating sliding smoke puffs? `FIELD_BOOL`
--- | `0x40` # Climbing state (3 climbing, 2 pushed up against edge of climbable area). `FIELD_WORD`
--- | `0x42` # An unused timer originally intended to keep the player from kicking their own shell when shell-surfing.  If greater than 0, it cancels some collisions between players and NPCs they have thrown. `FIELD_WORD`
--- | `0x44` # Is riding a rainbow shell? `FIELD_BOOL`
--- | `0x46` # The ID of the NPC used to reach the current powerup state, used for the reserve box (e.g., collecting an SMB3 fire flower will set this to 14). `FIELD_WORD`
--- | `0x48` # Index of the slope being stood on. `FIELD_WORD`
--- | `0x4A` # Currently using the statue mode? `FIELD_BOOL`
--- | `0x4C` # Statue transform cooldown timer. `FIELD_WORD`
--- | `0x4E` # Frames spent as statue. `FIELD_WORD`
--- | `0x50` # Is the player currently spinjumping? `FIELD_BOOL`
--- | `0x52` # Spinjump timer. `FIELD_WORD`
--- | `0x54` # Direction of spinjump fireball shots, for non-fire states stays at the direction the spinjump started on. `FIELD_WORD`
--- | `0x56` # Current enemy kill combo count. `FIELD_WORD`
--- | `0x58` # Ground sliding smoke puffs state. `FIELD_WORD`
--- | `0x5A` # ID of intersecting warp entrance. `FIELD_WORD`
--- | `0x5C` # Yoshi Ground Pound Flag. `FIELD_BOOL`
--- | `0x5E` # Yoshi Ground Pound Upwards Bounce Flag. `FIELD_BOOL`
--- | `0x60` # Whether or not the player can groundpound when using a purple yoshi. `FIELD_BOOL`
--- | `0x62` # If greater than 0, will count down and the player cannot let go of the NPC they're currently holding, even if not holding the run button. `FIELD_WORD`
--- | `0x64` # Does Yoshi have the earthquake ability? `FIELD_BOOL`
--- | `0x66` # Does Yoshi have the flight ability? `FIELD_BOOL`
--- | `0x68` # Does Yoshi have the fire ability? `FIELD_BOOL`
--- | `0x6A` # Wings' current frame (Yoshi and Boot). `FIELD_WORD`
--- | `0x6C` # Wings' animation timer (Yoshi and Boot). `FIELD_WORD`
--- | `0x6E` # Yoshi Head X-Offset. `FIELD_WORD`
--- | `0x70` # Yoshi Head Y-Offset. `FIELD_WORD`
--- | `0x72` # Yoshi's head animation frame (0-4 is left, 5-9 is right). `FIELD_WORD`
--- | `0x74` # Yoshi swallow timer. `FIELD_WORD`
--- | `0x76` # Yoshi body X position offset. `FIELD_WORD`
--- | `0x78` # Yoshi body Y position offset. `FIELD_WORD`
--- | `0x7A` # Yoshi's body animation frame (0-6 is left, 7-13 is right). `FIELD_WORD`
--- | `0x7C` # Yoshi animation frame timer (rapidly increments from 0 to 32, freezes in the air, resets to 0 when pressing down; probably used to to move body and head with the animation). `FIELD_WORD`
--- | `0x80` # Tongue X-Position. `FIELD_DFLOAT`
--- | `0x88` # Tongue Y-Position. `FIELD_DFLOAT`
--- | `0x90` # Tongue Width. `FIELD_DFLOAT`
--- | `0x98` # Tongue Height. `FIELD_DFLOAT`
--- | `0xA0` # Allocated for the "speed" of the tongue, but unused. `FIELD_DFLOAT`
--- | `0xA8` # Allocated for the "speed" of the tongue, but unused. `FIELD_DFLOAT`
--- | `0xB0` # Tongue X-Start/End Position. `FIELD_FLOAT`
--- | `0xB4` # Tongue length. `FIELD_WORD`
--- | `0xB6` # Is the tongue retracting? `FIELD_BOOL`
--- | `0xB8` # Index of NPC currently on the tongue (0 if no NPC). `FIELD_WORD`
--- | `0xBA` # Index of the player currently on the tongue (0 if no player). `FIELD_WORD`
--- | `0xBC` # Mounting cooldown. `FIELD_WORD`
--- | `0xBE` # Unused. `FIELD_WORD`
