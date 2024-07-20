---@meta


---Constants for player.forcedState values. Note that some may be unsafe to set. Also, there are no states for powering down from 3 hearts with any other powerup.
---@alias PlayerForcedState
---| `FORCEDSTATE_NONE` # No forced state.
---| `FORCEDSTATE_POWERUP_BIG` # Powering up to big state.
---| `FORCEDSTATE_POWERDOWN_SMALL` # Powering down to small state.
---| `FORCEDSTATE_PIPE` # Entering a pipe (crashes if no valid warp is provided).
---| `FORCEDSTATE_POWERUP_FIRE` # Powering up to fire state.
---| `FORCEDSTATE_POWERUP_LEAF` # Powering up to leaf state.
---| `FORCEDSTATE_RESPAWN` # Respawning in Multiplayer. Known to be glitchy when manipulated.
---| `FORCEDSTATE_DOOR` # Entering a door (crashes if no valid warp is provided).
---| `FORCEDSTATE_INVISIBLE` # Invisibility while transforming into a fairy or different character.
---| `FORCEDSTATE_ONTONGUE` # On another player's yoshi's tongue.
---| `FORCEDSTATE_SWALLOWED` # Swallowed by another player's yoshi.
---| `FORCEDSTATE_POWERUP_TANOOKI` # Powering up to tanooki state.
---| `FORCEDSTATE_POWERUP_HAMMER` # Powering up to hammer state.
---| `FORCEDSTATE_POWERUP_ICE` # Powering up to ice state.
---| `FORCEDSTATE_POWERDOWN_FIRE` # Powering down from fire while at 3 hearts.
---| `FORCEDSTATE_POWERDOWN_ICE` # Powering down from ice while at 3 hearts.
---| `FORCEDSTATE_FLAGPOLE` # On a flagpole.
---| `FORCEDSTATE_MEGASHROOM` # Mega shroom transformation state.
---| `FORCEDSTATE_TANOOKI_POOF` # Tanooki statue transformation poof.
---| `FORCEDSTATE_BOSSBASS` # Tanooki statue transformation poof.

---Constants for npc.forcedState values. Note that some may be unsafe to set.
---@alias NPCForcedState
---| `NPCFORCEDSTATE_NONE` # No forced state.
---| `NPCFORCEDSTATE_BLOCK_RISE` # Coming out of a block upwards.
---| `NPCFORCEDSTATE_DROPPED_ITEM` # Dropping from a player's reserve itembox.
---| `NPCFORCEDSTATE_BLOCK_FALL` # Coming out of a block downwards.
---| `NPCFORCEDSTATE_WARP` # Coming out of a warp generator.
---| `NPCFORCEDSTATE_YOSHI_TONGUE` # On a Yoshi's tongue.
---| `NPCFORCEDSTATE_YOSHI_MOUTH` # In a Yoshi's mouth.
---| `NPCFORCEDSTATE_INVISIBLE` # Invisible.
---| `NPCFORCEDSTATE_IN_JAR` # Contained in Mother Brain Jar or held by Buster Beetle/Clawgrip.

---No forced state.
FORCEDSTATE_NONE = 0
---Powering up to big state.
FORCEDSTATE_POWERUP_BIG = 1
---Powering down to small state.
FORCEDSTATE_POWERDOWN_SMALL = 2
---Entering a pipe (crashes if no valid warp is provided).
FORCEDSTATE_PIPE = 3
---Powering up to fire state.
FORCEDSTATE_POWERUP_FIRE = 4
---Powering up to leaf state.
FORCEDSTATE_POWERUP_LEAF = 5
---Respawning in Multiplayer. Known to be glitchy when manipulated.
FORCEDSTATE_RESPAWN = 6
---Entering a door (crashes if no valid warp is provided).
FORCEDSTATE_DOOR = 7
---Invisibility while transforming into a fairy or different character.
FORCEDSTATE_INVISIBLE = 8
---On another player's yoshi's tongue.
FORCEDSTATE_ONTONGUE = 9
---Swallowed by another player's yoshi.
FORCEDSTATE_SWALLOWED = 10
---Powering up to tanooki state.
FORCEDSTATE_POWERUP_TANOOKI = 11
---Powering up to hammer state.
FORCEDSTATE_POWERUP_HAMMER = 12
---Powering up to ice state.
FORCEDSTATE_POWERUP_ICE = 41
---Powering down from fire while at 3 hearts.
FORCEDSTATE_POWERDOWN_FIRE = 227
---Powering down from ice while at 3 hearts.
FORCEDSTATE_POWERDOWN_ICE = 228
---On a flagpole.
FORCEDSTATE_FLAGPOLE = 300
---Mega shroom transformation state.
FORCEDSTATE_MEGASHROOM = 499
---Tanooki statue transformation poof.
FORCEDSTATE_TANOOKI_POOF = 500
---Tanooki statue transformation poof.
FORCEDSTATE_BOSSBASS = 600

---No forced state.
NPCFORCEDSTATE_NONE = 0
---Coming out of a block upwards.
NPCFORCEDSTATE_BLOCK_RISE = 1
---Dropping from a player's reserve itembox.
NPCFORCEDSTATE_DROPPED_ITEM = 2
---Coming out of a block downwards.
NPCFORCEDSTATE_BLOCK_FALL = 3
---Coming out of a warp generator.
NPCFORCEDSTATE_WARP = 4
---On a Yoshi's tongue.
NPCFORCEDSTATE_YOSHI_TONGUE = 5
---In a Yoshi's mouth.
NPCFORCEDSTATE_YOSHI_MOUTH = 6
---Invisible.
NPCFORCEDSTATE_INVISIBLE = 8
---Contained in Mother Brain Jar or held by Buster Beetle/Clawgrip.
NPCFORCEDSTATE_IN_JAR = 208
