---@meta checkpoints

---@class NewCheckpointFields
---@field x number
---@field y number
---@field section number # Section to spawn to.
---@field actions function? # Callback function that runs when the player spawns to this checkpoint. `nil` if not used.
---@field powerup unknown? # Powerup filter to boost the player up to when they collect this checkpoint. `nil` if not used.
---@field sound string|number? # Sound effect to play when the player collects this checkpoint. `nil` if not used.

---@class NewCheckpointArgs : NewCheckpointFields
---@field ignoreTierCheck boolean

---@class NewCheckpoint : NewCheckpointFields
---@field collected boolean # READ ONLY. Whether the checpoint has been collected.
local NewCheckpoint = {}

--- Reset the checkpoint to allow it to be collected again.
function NewCheckpoint:reset() end

---Collect the checkpoint with the specified player. If player is `nil`, all playes collect the checkpoint.
---@param player Player?
function NewCheckpoint:collect(player) end

---@class NewCheckpointsManager
---@overload fun(args: NewCheckpointArgs): NewCheckpoint
local checkpoints = {}

---Create a new checkpoint object.
---@param args NewCheckpointArgs
---@return NewCheckpoint
function checkpoints.create(args) end

--- Get a list of every checkpoint created with checkpoints.lua
---@return NewCheckpoint[]
function checkpoints.get() end

--- Get a specific checkpoint.
---@param id number
---@return NewCheckpoint
function checkpoints.get(id) end

--- Get active checkpoint, if applicable.
---@return Checkpoint?
function checkpoints.getActive() end

--- Get active checkpoint index (id) or `-1` if none.
---@return integer|-1 index
function checkpoints.getActiveIndex() end

--- Internal event.
function checkpoints.onExitLevel() end

--- Internal event.
function checkpoints.onInitAPI() end

--- Internal event.
function checkpoints.onStart() end

---Supported: sound, powerup
---@param ids unknown?
---@param extraSettingsFieldNames unknown?
---@return ...
function checkpoints.registerNPC(ids, extraSettingsFieldNames) end

--- Reset all checkpoints
function checkpoints.reset() end

return checkpoints
