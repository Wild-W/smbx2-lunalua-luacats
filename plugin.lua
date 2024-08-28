local vm = require "vm"
local log = require "log"

log.info("Loaded test plugin!")

---@class parser.object
---@field _compiledNodes        boolean
---@field _node                 any
---@field cindex                integer
---@field func                  parser.object
---@field hideView              boolean
---@field package _returns?     parser.object[]
---@field package _callReturns? parser.object[]
---@field package _asCache?     parser.object[]

---@param next  fun(func:parser.object, param:parser.object) # Default behavior
---@param func  parser.object                                # The function
---@param param parser.object                                # The param
---@return boolean? ready                                    # Already know the type.
function OnCompileFunctionParam(next, func, param)
    log.info("Inside OnCompileFunctionParam!")
    -- Set type to number (test)
    vm.setNode(param, vm.declareGlobal('type', 'number'))
    return true
end

VM = VM or {}
VM.OnCompileFunctionParam = OnCompileFunctionParam

return {
    VM = VM,
    OnCompileFunctionParam = OnCompileFunctionParam
}
