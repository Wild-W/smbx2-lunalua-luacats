---@meta

local followa = {}

---
---@param npc unknown?
---@param target unknown?
---@param speed unknown?
---@param offset unknown?
---@param mindistance unknown?
---@param maxdistance unknown?
---@param behaviour unknown?
---@return ...
function followa.Follow(npc, target, speed, offset, mindistance, maxdistance, behaviour) end

---
---@param npc unknown?
---@param behaviour unknown?
---@return ...
function followa.SetBehaviour(npc, behaviour) end

---
---@param npc unknown?
---@param makeUnfriendly unknown?
---@return ...
function followa.StopFollowing(npc, makeUnfriendly) end

---
---@param npc unknown?
---@param target unknown?
---@return ...
function followa.Update(npc, target) end

---
---@return ...
function followa.onDraw() end

---
---@return ...
function followa.onDrawEnd() end

---
---@return ...
function followa.onInitAPI() end

---
---@param npc unknown?
---@param reason unknown?
---@return ...
function followa.onPostNPCKill(npc, reason) end

---
---@return ...
function followa.onTick() end

---
---@return ...
function followa.onTickEnd() end

---
---@type table
followa.TYPE = nil

return followa