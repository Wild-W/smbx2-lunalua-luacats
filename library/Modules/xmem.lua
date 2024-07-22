---@meta

local xmem = {}

---Prints the current state of global memory addresses to the screen for debugging. If the arguments are not specified, they default to the minium and maximum values respectively.
---@param lowerBound number?
---@param upperBound number?
function xmem.memdump(lowerBound, upperBound) end

---Logs the current state of global memory addresses into a file in the data/logs directory. If the arguments are not specified, they default to the minium and maximum values respectively.
---@param lowerBound number?
---@param upperBound number?
function xmem.memlog(lowerBound, upperBound) end

function xmem.onTick() end

function xmem.getNPCAddress(address) end

function xmem.getPlayerAddress(address) end

function xmem.getGlobalAddress(address) end

return xmem
