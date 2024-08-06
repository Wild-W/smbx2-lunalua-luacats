---@meta

local savestate = {
	STATE_NPC = 0x1,
	STATE_PLAYER = 0x2,
	STATE_ANIM = 0x4,
	STATE_LAYEREVENT = 0x18,
	STATE_LAYEREVENT2 = 0x08,
	STATE_BLOCK = 0x10,
	STATE_ALL = 0x1F,
}

---
---@param state unknown?
---@param stateMask unknown?
---@return unknown
function savestate.load(state, stateMask) end

---
---@param stateMask unknown?
---@return table
function savestate.save(stateMask) end

---
---@param section unknown?
---@return table
function savestate.saveSectionNPCs(section) end

return savestate
