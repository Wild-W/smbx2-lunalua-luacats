---@meta

local npcManager = {}

---@type table<integer, NPC>
npcManager.customCollisionNPCsMap = {}

--- func takes 4 arguments: npc to check, b to check against (can be nil), btype (can be nil) & the collision filter for getColliding (can be nil)
--- func returns a list of intersecting objects or nil
--- because it can return nil you cannot use it in a for loop directly. store it to a variable first
--- this is used for onCollideBlock and onIntersectBlock
--- @param npcID integer
--- @param func fun(npc: NPC, block: Block?, blockType: BlockClassification?, collisionFilter: function?)
function npcManager.registerCustomCollisionFunction(npcID, func) end

--- Internal Event
function npcManager.onInitAPI() end

--- @param settingsArray table Not an array.
--- @return NPCConfig
function npcManager.setNpcSettings(settingsArray) end

--- @return NPCConfig
function npcManager.getNpcSettings(settingsArray) end

--- @param id integer
--- @param typelist table
function npcManager.registerDefines(id, typelist) end

--- @param id integer
--- @param typelist table
function npcManager.deregisterDefines(id, typelist) end

---@param id integer
---@param harmList table
---@param deatheffects table
function npcManager.registerHarmTypes(id, harmList, deatheffects) end

---Register an event on an NPC.
---@param id number
---@param tbl table
---@param eventName EventName
---@param libEventName string
function npcManager.registerEvent(id, tbl, eventName, libEventName) end

function npcManager.refreshEvents() end

---Get NPC's Collider Box.
---@param npc NPC
---@param swell number
---@return BoxCollider
function npcManager.getNPCHitbox(npc, swell) end

--- Internal event.
function npcManager.onStart() end

--- Internal event
--- @param npc NPC
function npcManager.onTickEndNPC(npc) end

--- Internal event.
function npcManager.onTickEnd() end

--- Internal event.
function npcManager.onNPCTransform(npc, oldID, reason) end

--- Internal event.
function npcManager.onPostNPCKill(npc, reason) end

---Takes an npc and a kill reason and gives the first player that could have collected this, if any;
---@deprecated Use onNPCCollect/onPostNPCCollect
---@param npc NPC
---@param reason integer
---@return Player?
function npcManager.collected(npc, reason) end

function npcManager.loadNpcCode() end

return npcManager
