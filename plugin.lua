local vm = require "vm"
local log = require "log"
local guide = require "parser.guide"
local inspect = require "inspect"

local args = { ... }
local LUNALUA_EVENTS_URI = args[2] .. "/library/__internal/LunaLuaEvents.lua"

log.info("Starting LunaLua Event Plugin")

local LUNALUA_EVENTS = {
    onStart = true,
    onLoad = true,
    onTick = true,
    onTickEnd = true,
    onDraw = true,
    onDrawUnfocusOverlay = true,
    onDrawEnd = true,
    onLoop = true,
    onLoopSection0 = true,
    onLoopSection1 = true,
    onLoopSection2 = true,
    onLoopSection3 = true,
    onLoopSection4 = true,
    onLoopSection5 = true,
    onLoopSection6 = true,
    onLoopSection7 = true,
    onLoopSection8 = true,
    onLoopSection9 = true,
    onLoopSection10 = true,
    onLoopSection11 = true,
    onLoopSection12 = true,
    onLoopSection13 = true,
    onLoopSection14 = true,
    onLoopSection15 = true,
    onLoopSection16 = true,
    onLoopSection17 = true,
    onLoopSection18 = true,
    onLoopSection19 = true,
    onLoopSection20 = true,
    onLoadSection = true,
    onLoadSection0 = true,
    onLoadSection1 = true,
    onLoadSection2 = true,
    onLoadSection3 = true,
    onLoadSection4 = true,
    onLoadSection5 = true,
    onLoadSection6 = true,
    onLoadSection7 = true,
    onLoadSection8 = true,
    onLoadSection9 = true,
    onLoadSection10 = true,
    onLoadSection11 = true,
    onLoadSection12 = true,
    onLoadSection13 = true,
    onLoadSection14 = true,
    onLoadSection15 = true,
    onLoadSection16 = true,
    onLoadSection17 = true,
    onLoadSection18 = true,
    onLoadSection19 = true,
    onLoadSection20 = true,
    onSectionChange = true,
    onJump = true,
    onJumpEnd = true,
    onKeyDown = true,
    onKeyUp = true,
    onFramebufferResize = true,
    onEvent = true,
    onEventDirect = true,
    onExitLevel = true,
    onInputUpdate = true,
    onMessageBox = true,
    onColorSwitch = true,
    onSyncSwitch = true,
    onBeatWarn = true,
    onBeatStateChange = true,
    onBlockHit = true,
    onBlockRemove = true,
    onHUDDraw = true,
    onNPCKill = true,
    onCameraUpdate = true,
    onCameraDraw = true,
    onKeyboardPress = true,
    onKeyboardPressDirect = true,
    onKeyboardKeyPress = true,
    onKeyboardKeyRelease = true,
    onPause = true,
    onExit = true,
    onNPCHarm = true,
    onNPCCollect = true,
    onCheckpoint = true,
    onExplosion = true,
    onRunEffectInternal = true,
    onExplosionInternal = true,
    onPostNPCRearrangeInternal = true,
    onBlockInvalidateForReuseInternal = true,
    onWarpEnter = true,
    onWarp = true,
    onGroupDeallocationInternal = true,
    onPasteText = true,
    onChangeController = true,
    onControllerButtonPress = true,
    onControllerButtonRelease = true,
    onPostNPCKill = true,
    onPostNPCHarm = true,
    onPostNPCCollect = true,
    onPostExplosion = true,
    onPostEventDirect = true,
    onPostWarpEnter = true,
    onPostBlockHit = true,
    onPostBlockRemove = true,
    onNPCGenerated = true,
    onNPCTransform = true,
    onNPCConfigChange = true,
    onBlockConfigChange = true,
    onBGOConfigChange = true,
    onPlayerKill = true,
    onPlayerHarm = true,
    onPostPlayerKill = true,
    onPostPlayerHarm = true,
    onPOW = true,
    onPostPOW = true,
    onMouseButtonEvent = true,
    onMouseWheelEvent = true,
    onCollide = true,
    onIntersect = true,
}

---@class parser.object

---@param next  fun(func:parser.object, param:parser.object) # Default behavior
---@param func  parser.object                                # The function
---@param param parser.object                                # The param
---@return boolean? ready                                    # Already know the type.
local function OnCompileFunctionParam(next, func, param)
    if next(func, param) then return true end -- User already knows the type
    if not guide.isGlobal(func.parent) then return false end

    local funcName = vm.getGlobalNode(func.parent):getName()
    if not LUNALUA_EVENTS[funcName] then return false end

    if not B then
        B = true
        log.info(inspect(param.parent, { depth = 5 }))
    end

    vm.setNode(func, vm.declareGlobal("type", funcName, LUNALUA_EVENTS_URI))
    return true
end

VM = { OnCompileFunctionParam = OnCompileFunctionParam }
