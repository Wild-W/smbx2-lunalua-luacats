---@meta


---Checkpoints are temporary mid-level save points that allow players to restart from them when they die. By default, they last until the level is completed, or the game is shut down.
---@class Checkpoints
Checkpoint = {}

--- Gets the checkpoint with the specified checkpoint ID.
--- @param id number The checkpoint ID.
--- @return Checkpoint checkpoint The checkpoint with the specified ID, or nil if none exists.
function Checkpoint(id) end

---@class CheckpointArgs
--- @field x number The X coordinate to spawn the player at when respawning from this checkpoint.
--- @field y number The Y coordinate to spawn the player at when respawning from this checkpoint.
--- @field section number The section number to spawn the player at when respawning from this checkpoint.
--- @field actions fun(checkpointObject: Checkpoint, playerObject: any) A function that is run when the player spawns from this checkpoint. It is run once for each player.
--- @field sound number|string A sound effect to play when the player collects this checkpoint. Can be either a sound ID or a file path.
--- @field powerup number A powerup value to boost the player up to when this checkpoint is collected.

--- Creates a new checkpoint object in the current level.
--- @param args CheckpointArgs A table containing the arguments for the checkpoint.
--- @return Checkpoint newCheckpoint The newly created checkpoint object.
function Checkpoint(args) end

--- Gets the currently active checkpoint.
--- @return Checkpoint activeCheckpoint The currently active checkpoint, or nil if there is none.
function Checkpoint.getActive() end

--- Gets the currently active checkpoint's index.
--- @return number activeCheckpointIdx The index of the currently active checkpoint, or -1 if no checkpoint is active.
function Checkpoint.getActiveIndex() end

--- Returns a table of references to all checkpoints in the level.
--- @return Checkpoint[] checkpoints A table of references to all checkpoints.
function Checkpoint.get() end

--- Resets all collected checkpoints in the current level.
function Checkpoint.reset() end

--- Registers a specific NPC ID or list of IDs to create a Checkpoint as soon as they appear in the level.
--- @param id number|number[] The NPC ID or list of IDs to register as checkpoints.
function Checkpoint.registerNPC(id) end

-- Instance

---@class Checkpoint
local checkPointClass = {}
---Has the Checkpoint been collected?
---@type boolean
checkPointClass.collected = false
---The Checkpoint's internal index.
---@type integer
checkPointClass.idx = 0
---The Checkpoint's internal index.
---@type integer
checkPointClass.id = 0

---Collects the checkpoint and sets it as the currently active checkpoint. The event `onCheckpoint` will be called afterwards.
---@param collectedBy Player
function checkPointClass:collect(collectedBy) end

---Resets the current checkpoint, un-collecting it and preventing the player from respawning at it. This will not respawn any NPCs that were collected to activate this checkpoint.
function checkPointClass:reset() end
