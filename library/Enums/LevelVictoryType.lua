---@meta

---The level end state constants relate to level end animation, and are the values used by `Level.winState(endState)`.
---@alias LevelEndState
---| `LEVEL_END_STATE_ROULETTE` # SMB3 Card Roulette.
---| `LEVEL_END_STATE_SMB3ORB` # SMB3 ?-Orb.
---| `LEVEL_END_STATE_KEYHOLE` # SMW Keyhole Exit.
---| `LEVEL_END_STATE_SMB2ORB` # SMB2 Crystal Orb.
---| `LEVEL_END_STATE_GAMEEND` # Game End - Bowser Defeat victory.
---| `LEVEL_END_STATE_STAR` # SMB3 Star Exit.
---| `LEVEL_END_STATE_TAPE` # SMW Goal Tape.
---| `LEVEL_END_STATE_SWITCHPALACE` # Switch Palace.
---| `LEVEL_END_STATE_FLAGPOLE` # Flagpole.
---| `LEVEL_END_STATE_SMW` # SMW Goal Orb.

---The level win type constants relate to the victory flags on the overworld (i.e. unlocking paths) and determine which type of
---victory has occured in a level. This value does not necessarily match the end state.
---This is the value passed to the onExitLevel event, and also a value that you can pass to Level.exit(winType)
---@alias LevelWinType
---| `LEVEL_WIN_TYPE_NONE` # Didn't win.
---| `LEVEL_WIN_TYPE_ROULETTE` # SMB3 Card Roulette.
---| `LEVEL_WIN_TYPE_SMB3ORB` # SMB3 ?-Orb (currently called "boss defeat" in editor)
---| `LEVEL_WIN_TYPE_OFFSCREEN` # Offscreen exit.
---| `LEVEL_WIN_TYPE_KEYHOLE` # SMW Keyhole exit.
---| `LEVEL_WIN_TYPE_SMB2ORB` # SMB2 Crystal Orb.
---| `LEVEL_WIN_TYPE_WARP` # Warp exit.
---| `LEVEL_WIN_TYPE_STAR` # SMB3 Star exit.
---| `LEVEL_WIN_TYPE_TAPE` # SMW Goal Tape.
---| `LEVEL_WIN_TYPE_SWITCHPALACE` # SMW Switch Palace.
---| `LEVEL_WIN_TYPE_FLAGPOLE` # Flagpole.
---| `LEVEL_WIN_TYPE_SMWORB` # SMW Goal Orb.

---SMB3 Card Roulette.
LEVEL_END_STATE_ROULETTE = 1
---SMB3 ?-Orb.
LEVEL_END_STATE_SMB3ORB = 2
---SMW Keyhole Exit.
LEVEL_END_STATE_KEYHOLE = 3
---SMB2 Crystal Orb.
LEVEL_END_STATE_SMB2ORB = 4
---Game End - Bowser Defeat victory.
LEVEL_END_STATE_GAMEEND = 5
---SMB3 Star Exit.
LEVEL_END_STATE_STAR = 6
---SMW Goal Tape.
LEVEL_END_STATE_TAPE = 7
---Switch Palace.
LEVEL_END_STATE_SWITCHPALACE = 8
---Flagpole.
LEVEL_END_STATE_FLAGPOLE = 9
---SMW Goal Orb.
LEVEL_END_STATE_SMW = 10

---Didn't win.
LEVEL_WIN_TYPE_NONE = 0
---SMB3 Card Roulette.
LEVEL_WIN_TYPE_ROULETTE = 1
---SMB3 ?-Orb (currently called "boss defeat" in editor)
LEVEL_WIN_TYPE_SMB3ORB = 2
---Offscreen exit.
LEVEL_WIN_TYPE_OFFSCREEN = 3
---SMW Keyhole exit.
LEVEL_WIN_TYPE_KEYHOLE = 4
---SMB2 Crystal Orb.
LEVEL_WIN_TYPE_SMB2ORB = 5
---Warp exit.
LEVEL_WIN_TYPE_WARP = 6
---SMB3 Star exit.
LEVEL_WIN_TYPE_STAR = 7
---SMW Goal Tape.
LEVEL_WIN_TYPE_TAPE = 8
---SMW Switch Palace.
LEVEL_WIN_TYPE_SWITCHPALACE = 9
---Flagpole.
LEVEL_WIN_TYPE_FLAGPOLE = 10
---SMW Goal Orb.
LEVEL_WIN_TYPE_SMWORB = 11
