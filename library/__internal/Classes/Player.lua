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

---@class Player : CollisionObject, LuaHelperClass
--- @field ToadDoubleJReady integer # Equivalent to `Player:mem(0x0, FIELD_WORD)`.
--- @field SparklingEffect integer # Equivalent to `Player:mem(0x2, FIELD_WORD)`.
--- @field UnknownCTRLLock1 integer # Equivalent to `Player:mem(0x4, FIELD_WORD)`.
--- @field UnknownCTRLLock2 integer # Equivalent to `Player:mem(0x6, FIELD_WORD)`.
--- @field QuicksandEffectTimer integer # Equivalent to `Player:mem(0x8, FIELD_WORD)`.
--- @field OnSlipperyGround integer # Equivalent to `Player:mem(0xa, FIELD_WORD)`.
--- @field IsAFairy integer # Equivalent to `Player:mem(0xc, FIELD_WORD)`.
--- @field FairyAlreadyInvoked integer # Equivalent to `Player:mem(0xe, FIELD_WORD)`.
--- @field FairyFramesLeft integer # Equivalent to `Player:mem(0x10, FIELD_WORD)`.
--- @field SheathHasKey integer # Equivalent to `Player:mem(0x12, FIELD_WORD)`.
--- @field SheathAttackCooldown integer # Equivalent to `Player:mem(0x14, FIELD_WORD)`.
--- @field Hearts integer # Equivalent to `Player:mem(0x16, FIELD_WORD)`.
--- @field PeachHoverAvailable integer # Equivalent to `Player:mem(0x18, FIELD_WORD)`.
--- @field PressingHoverButton integer # Equivalent to `Player:mem(0x1a, FIELD_WORD)`.
--- @field PeachHoverTimer integer # Equivalent to `Player:mem(0x1c, FIELD_WORD)`.
--- @field Unused1 integer # Equivalent to `Player:mem(0x1e, FIELD_WORD)`.
--- @field PeachHoverTrembleSpeed number # Equivalent to `Player:mem(0x20, FIELD_FLOAT)`.
--- @field PeachHoverTrembleDir integer # Equivalent to `Player:mem(0x24, FIELD_WORD)`.
--- @field ItemPullupTimer integer # Equivalent to `Player:mem(0x26, FIELD_WORD)`.
--- @field ItemPullupMomentumSave number # Equivalent to `Player:mem(0x28, FIELD_FLOAT)`.
--- @field Unused2 integer # Equivalent to `Player:mem(0x2c, FIELD_WORD)`.
--- @field UnkClimbing1 integer # Equivalent to `Player:mem(0x2e, FIELD_WORD)`.
--- @field UnkClimbing2 integer # Equivalent to `Player:mem(0x30, FIELD_WORD)`.
--- @field UnkClimbing3 integer # Equivalent to `Player:mem(0x32, FIELD_WORD)`.
--- @field WaterState integer # Equivalent to `Player:mem(0x34, FIELD_WORD)`.
--- @field WaterOrQuicksandState integer # Equivalent to `Player:mem(0x34, FIELD_WORD)`.
--- @field IsInWater integer # Equivalent to `Player:mem(0x36, FIELD_WORD)`.
--- @field WaterStrokeTimer integer # Equivalent to `Player:mem(0x38, FIELD_WORD)`.
--- @field UnknownHoverTimer integer # Equivalent to `Player:mem(0x3a, FIELD_WORD)`.
--- @field SlidingState integer # Equivalent to `Player:mem(0x3c, FIELD_WORD)`.
--- @field SlidingGroundPuffs integer # Equivalent to `Player:mem(0x3e, FIELD_WORD)`.
--- @field ClimbingState integer # Equivalent to `Player:mem(0x40, FIELD_WORD)`.
--- @field UnknownTimer integer # Equivalent to `Player:mem(0x42, FIELD_WORD)`.
--- @field UnknownFlag integer # Equivalent to `Player:mem(0x44, FIELD_WORD)`.
--- @field UnknownPowerupState integer # Equivalent to `Player:mem(0x46, FIELD_WORD)`.
--- @field SlopeRelated integer # Equivalent to `Player:mem(0x48, FIELD_WORD)`.
--- @field TanookiStatueActive integer # Equivalent to `Player:mem(0x4a, FIELD_WORD)`.
--- @field TanookiMorphCooldown integer # Equivalent to `Player:mem(0x4c, FIELD_WORD)`.
--- @field TanookiActiveFrameCount integer # Equivalent to `Player:mem(0x4e, FIELD_WORD)`.
--- @field IsSpinjumping integer # Equivalent to `Player:mem(0x50, FIELD_WORD)`.
--- @field SpinjumpStateCounter integer # Equivalent to `Player:mem(0x52, FIELD_WORD)`.
--- @field SpinjumpLandDirection integer # Equivalent to `Player:mem(0x54, FIELD_WORD)`.
--- @field CurrentKillCombo integer # Equivalent to `Player:mem(0x56, FIELD_WORD)`.
--- @field GroundSlidingPuffsState integer # Equivalent to `Player:mem(0x58, FIELD_WORD)`.
--- @field WarpNearby integer # Equivalent to `Player:mem(0x5a, FIELD_WORD)`.
--- @field NearbyWarpIndex integer # Equivalent to `Player:mem(0x5a, FIELD_WORD)`.
--- @field Unknown5C integer # Equivalent to `Player:mem(0x5c, FIELD_WORD)`.
--- @field Unknown5E integer # Equivalent to `Player:mem(0x5e, FIELD_WORD)`.
--- @field HasJumped integer # Equivalent to `Player:mem(0x60, FIELD_WORD)`.
--- @field CurXPos number # Equivalent to `Player:mem(0xc0, FIELD_DFLOAT)`.
--- @field CurYPos number # Equivalent to `Player:mem(0xc8, FIELD_DFLOAT)`.
--- @field Height number # Equivalent to `Player:mem(0xd0, FIELD_DFLOAT)`.
--- @field Width number # Equivalent to `Player:mem(0xd8, FIELD_DFLOAT)`.
--- @field CurXSpeed number # Equivalent to `Player:mem(0xe0, FIELD_DFLOAT)`.
--- @field CurYSpeed number # Equivalent to `Player:mem(0xe8, FIELD_DFLOAT)`.
--- @field Identity integer # Equivalent to `Player:mem(0xf0, FIELD_WORD)`.
--- @field UKeyState integer # Equivalent to `Player:mem(0xf2, FIELD_WORD)`.
--- @field DKeyState integer # Equivalent to `Player:mem(0xf4, FIELD_WORD)`.
--- @field LKeyState integer # Equivalent to `Player:mem(0xf6, FIELD_WORD)`.
--- @field RKeyState integer # Equivalent to `Player:mem(0xf8, FIELD_WORD)`.
--- @field JKeyState integer # Equivalent to `Player:mem(0xfa, FIELD_WORD)`.
--- @field SJKeyState integer # Equivalent to `Player:mem(0xfc, FIELD_WORD)`.
--- @field XKeyState integer # Equivalent to `Player:mem(0xfe, FIELD_WORD)`.
--- @field RNKeyState integer # Equivalent to `Player:mem(0x100, FIELD_WORD)`.
--- @field SELKeyState integer # Equivalent to `Player:mem(0x102, FIELD_WORD)`.
--- @field STRKeyState integer # Equivalent to `Player:mem(0x104, FIELD_WORD)`.
--- @field MountType integer # Equivalent to `Player:mem(0x108, FIELD_WORD)`.
--- @field MountColor integer # Equivalent to `Player:mem(0x10a, FIELD_WORD)`.
--- @field MountState integer # Equivalent to `Player:mem(0x10c, FIELD_WORD)`.
--- @field MountHeightOffset integer # Equivalent to `Player:mem(0x10e, FIELD_WORD)`.
--- @field MountGfxIndex integer # Equivalent to `Player:mem(0x110, FIELD_WORD)`.
--- @field CurrentPowerup integer # Equivalent to `Player:mem(0x112, FIELD_WORD)`.
--- @field CurrentPlayerSprite integer # Equivalent to `Player:mem(0x114, FIELD_WORD)`.
--- @field Unused116 integer # Equivalent to `Player:mem(0x116, FIELD_WORD)`.
--- @field GfxMirrorX number # Equivalent to `Player:mem(0x118, FIELD_FLOAT)`.
--- @field UpwardJumpingForce integer # Equivalent to `Player:mem(0x11c, FIELD_WORD)`.
--- @field JumpButtonHeld integer # Equivalent to `Player:mem(0x11e, FIELD_WORD)`.
--- @field SpinjumpButtonHeld integer # Equivalent to `Player:mem(0x120, FIELD_WORD)`.
--- @field ForcedAnimationState integer # Equivalent to `Player:mem(0x122, FIELD_WORD)`.
--- @field ForcedAnimationTimer number # Equivalent to `Player:mem(0x124, FIELD_DFLOAT)`.
--- @field DownButtonMirror integer # Equivalent to `Player:mem(0x12c, FIELD_WORD)`.
--- @field InDuckingPosition integer # Equivalent to `Player:mem(0x12e, FIELD_WORD)`.
--- @field SelectButtonMirror integer # Equivalent to `Player:mem(0x130, FIELD_WORD)`.
--- @field Unknown132 integer # Equivalent to `Player:mem(0x132, FIELD_WORD)`.
--- @field DownButtonTapped integer # Equivalent to `Player:mem(0x134, FIELD_WORD)`.
--- @field Unknown136 integer # Equivalent to `Player:mem(0x136, FIELD_WORD)`.
--- @field XMomentumPush number # Equivalent to `Player:mem(0x138, FIELD_FLOAT)`.
--- @field DeathState integer # Equivalent to `Player:mem(0x13c, FIELD_WORD)`.
--- @field DeathTimer integer # Equivalent to `Player:mem(0x13e, FIELD_WORD)`.
--- @field BlinkTimer integer # Equivalent to `Player:mem(0x140, FIELD_WORD)`.
--- @field BlinkState integer # Equivalent to `Player:mem(0x142, FIELD_WORD)`.
--- @field Unknown144 integer # Equivalent to `Player:mem(0x144, FIELD_WORD)`.
--- @field LayerStateStanding integer # Equivalent to `Player:mem(0x146, FIELD_WORD)`.
--- @field LayerStateLeftContact integer # Equivalent to `Player:mem(0x148, FIELD_WORD)`.
--- @field LayerStateTopContact integer # Equivalent to `Player:mem(0x14a, FIELD_WORD)`.
--- @field LayerStateRightContact integer # Equivalent to `Player:mem(0x14c, FIELD_WORD)`.
--- @field PushedByMovingLayer integer # Equivalent to `Player:mem(0x14e, FIELD_WORD)`.
--- @field Unused150 integer # Equivalent to `Player:mem(0x150, FIELD_WORD)`.
--- @field Unused152 integer # Equivalent to `Player:mem(0x152, FIELD_WORD)`.
--- @field HeldNPCIndex integer # Equivalent to `Player:mem(0x154, FIELD_WORD)`.
--- @field Unused182 integer # Equivalent to `Player:mem(0x182, FIELD_WORD)`.
--- @field Unused180 integer # Equivalent to `Player:mem(0x180, FIELD_WORD)`.
--- @field Unused17E integer # Equivalent to `Player:mem(0x17e, FIELD_WORD)`.
--- @field Unused17C integer # Equivalent to `Player:mem(0x17c, FIELD_WORD)`.
--- @field Unknown17A integer # Equivalent to `Player:mem(0x17a, FIELD_WORD)`.
--- @field Unknown178 integer # Equivalent to `Player:mem(0x178, FIELD_WORD)`.
--- @field NPCBeingStoodOnIndex integer # Equivalent to `Player:mem(0x176, FIELD_WORD)`.
--- @field HoldingFlightButton integer # Equivalent to `Player:mem(0x174, FIELD_WORD)`.
--- @field HoldingFlightRunButton integer # Equivalent to `Player:mem(0x172, FIELD_WORD)`.
--- @field FlightTimeRemaining integer # Equivalent to `Player:mem(0x170, FIELD_WORD)`.
--- @field IsFlying integer # Equivalent to `Player:mem(0x16e, FIELD_WORD)`.
--- @field CanFly integer # Equivalent to `Player:mem(0x16c, FIELD_WORD)`.
--- @field TakeoffSpeed number # Equivalent to `Player:mem(0x168, FIELD_FLOAT)`.
--- @field Unknown166 integer # Equivalent to `Player:mem(0x166, FIELD_WORD)`.
--- @field TailswipeTimer integer # Equivalent to `Player:mem(0x164, FIELD_WORD)`.
--- @field ProjectileTimer2 integer # Equivalent to `Player:mem(0x162, FIELD_WORD)`.
--- @field ProjectileTimer1 integer # Equivalent to `Player:mem(0x160, FIELD_WORD)`.
--- @field TargetWarpIndex integer # Equivalent to `Player:mem(0x15e, FIELD_WORD)`.
--- @field WarpCooldownTimer integer # Equivalent to `Player:mem(0x15c, FIELD_WORD)`.
--- @field WarpTimer integer # Equivalent to `Player:mem(0x15c, FIELD_WORD)`.
--- @field CurrentSection integer # Equivalent to `Player:mem(0x15a, FIELD_WORD)`.
--- @field PowerupBoxContents integer # Equivalent to `Player:mem(0x158, FIELD_WORD)`.
--- @field Unknown156 integer # Equivalent to `Player:mem(0x156, FIELD_WORD)`.
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
--- @param absolute boolean?
--- @return number frame The current frame.
function PlayerInstance:getFrame(absolute) end

--- Gets the player's current frame as x and y coordinates on the spritesheet.
--- @param absolute boolean?
--- @return number x, number y The x and y coordinates on the spritesheet for the frame.
function PlayerInstance:getFrame(absolute) end

--- Instantly teleports the player to the target position.
--- @param x number The x-coordinate of the target position.
--- @param y number The y-coordinate of the target position.
--- @param bottomCenterAligned boolean? If `true`, aligns the bottom center of the player's hitbox with the coordinates; otherwise, aligns the top left corner.
function PlayerInstance:teleport(x, y, bottomCenterAligned) end

--- The player's index in the internal list of players. Read only.
---@type number
PlayerInstance.idx = nil

--- If the player instance is valid.
--- @type boolean
PlayerInstance.isValid = nil

--- The direction the player is facing. `-1`: left. `1`: right.
--- @type -1|1
PlayerInstance.FacingDirection = nil

--- The player's x coordinate (left edge of the hitbox).
---@type number
PlayerInstance.x = nil

--- The player's y coordinate (top edge of the hitbox).
---@type number
PlayerInstance.y = nil

--- The width of the player's hitbox.
---@type number
PlayerInstance.width = nil

--- The height of the player's hitbox.
---@type number
PlayerInstance.height = nil

--- The player's horizontal speed.
---@type number
PlayerInstance.speedX = nil

--- The player's vertical speed.
---@type number
PlayerInstance.speedY = nil

--- The number of frames the player has been sliding while not colliding with a slope.
---@type number
PlayerInstance.slidingTimeSinceOnSlope = nil

--- The player's facing direction. Can be either -1 or 1.
---@type 1|-1
PlayerInstance.direction = nil

--- Returns a RECT of the distance between the player and the edges of the camera.
---@type RECT
PlayerInstance.screen = nil

--- The index of the section the player is in.
---@type number
PlayerInstance.section = nil

--- Gets a reference to the section the player is in.
---@type Section
PlayerInstance.sectionObj = nil

--- The player's current powerup state.
---@type number
PlayerInstance.powerup = nil

--- ID of the NPC in the player's reserve item box.
---@type number
PlayerInstance.reservePowerup = nil

--- Whether the player is currently in the Mega Mushroom state.
---@type boolean
PlayerInstance.isMega = nil

--- Whether the player should keep their Tier 2 Powerup when transforming into the Mega state.
---@type boolean
PlayerInstance.keepPowerOnMega = nil

--- Whether the player is currently affected by a Starman's invulnerability.
---@type boolean
PlayerInstance.hasStarman = nil

--- The player's current character index.
---@type number
PlayerInstance.character = nil

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
PlayerInstance.climbing = nil

--- Ignores collision with blocks.
---@type boolean
PlayerInstance.noblockcollision = nil

--- Ignores collision with NPCs.
---@type boolean
PlayerInstance.nonpcinteraction = nil

--- Ignores collision with other Players.
---@type boolean
PlayerInstance.noplayerinteraction = nil

--- If the player is currently in a clear pipe.
---@type boolean
PlayerInstance.inClearPipe = nil

--- If the player is currently in a launch barrel.
---@type boolean
PlayerInstance.inLaunchBarrel = nil

--- The type of mount currently mounted by the player.
---@type MountType
PlayerInstance.mount = nil

--- The color of the mounted mount.
---@type BootColor|YoshiColor
PlayerInstance.mountColor = nil

--- The player's death timer. If >0, the player has died.
---@type number
PlayerInstance.deathTimer = nil

--- The player's current animation frame. Values correspond to a specific chart.
---@type number
PlayerInstance.frame = nil

--- The player's current forced state.
---@type PlayerForcedState
PlayerInstance.forcedState = nil

--- The timer related to the player's current forced state.
---@type number
PlayerInstance.forcedTimer = nil

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
PlayerInstance.upKeyPressing = nil

--- Whether the player is currently pressing down.
---@type boolean
PlayerInstance.downKeyPressing = nil

--- Whether the player is currently pressing left.
---@type boolean
PlayerInstance.leftKeyPressing = nil

--- Whether the player is currently pressing right.
---@type boolean
PlayerInstance.rightKeyPressing = nil

--- Whether the player is currently pressing jump.
---@type boolean
PlayerInstance.jumpKeyPressing = nil

--- Whether the player is currently pressing altJump.
---@type boolean
PlayerInstance.altJumpKeyPressing = nil

--- Whether the player is currently pressing altRun.
---@type boolean
PlayerInstance.altRunKeyPressing = nil

--- Whether the player is currently pressing run.
---@type boolean
PlayerInstance.runKeyPressing = nil

--- Whether the player is currently pressing dropItem.
---@type boolean
PlayerInstance.dropItemKeyPressing = nil

--- Whether the player is currently pressing pause.
---@type boolean
PlayerInstance.pauseKeyPressing = nil

--- The collision group this player belongs to.
---@type string
PlayerInstance.collisionGroup = nil

--- The numerical index of the collision group this player belongs to. Used internally to make collision checks faster.
---@type number
PlayerInstance.collisionGroupIndex = nil

--- A list of all weights attached to the player.
---@type WeightContainer[]
PlayerInstance._weightContainers = nil

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

--- The first player object.
---@type Player
player = nil

--- The second player object, or `nil` if only one player is in the level.
---@type Player?
player2 = nil
