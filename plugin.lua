local vm = require "vm"
local log = require "log"
local guide = require "parser.guide"
local fs = require "bee.filesystem"
local furi = require "file-uri"
local inspect = require "inspect"

local args = { ... }
local LUNALUA_EVENTS_URI = args[2] .. "/library/__internal/LunaLuaEvents.lua"

log.info("Starting LunaLua Event Plugin")

LUNALUA_EVENTS = {
    onInputUpdate = {},
    onTick = {},
    onTickEnd = {},
    onCameraUpdate = {
        [1] = "number",
    },
    onDraw = {},
    onCameraDraw = {
        [1] = "number",
    },
    onHUDDraw = {
        [1] = "number",
    },
    onDrawEnd = {},
    onInitAPI = {},
    onStart = {},
    onSaveGame = {},
    onSectionChange = {
        [1] = "number",
        [2] = "number",
    },
    onLoadSection = {
        [1] = "number",
    },
    onLoadSection0 = {
        [1] = "number",
    },
    onLoadSection1 = {
        [1] = "number",
    },
    onLoadSection2 = {
        [1] = "number",
    },
    onLoadSection3 = {
        [1] = "number",
    },
    onLoadSection4 = {
        [1] = "number",
    },
    onLoadSection5 = {
        [1] = "number",
    },
    onLoadSection6 = {
        [1] = "number",
    },
    onLoadSection7 = {
        [1] = "number",
    },
    onLoadSection8 = {
        [1] = "number",
    },
    onLoadSection9 = {
        [1] = "number",
    },
    onLoadSection10 = {
        [1] = "number",
    },
    onLoadSection11 = {
        [1] = "number",
    },
    onLoadSection12 = {
        [1] = "number",
    },
    onLoadSection13 = {
        [1] = "number",
    },
    onLoadSection14 = {
        [1] = "number",
    },
    onLoadSection15 = {
        [1] = "number",
    },
    onLoadSection16 = {
        [1] = "number",
    },
    onLoadSection17 = {
        [1] = "number",
    },
    onLoadSection18 = {
        [1] = "number",
    },
    onLoadSection19 = {
        [1] = "number",
    },
    onLoadSection20 = {
        [1] = "number",
    },
    onEvent = {
        [1] = "string",
    },
    onEventDirect = {
        [1] = "EventToken",
        [2] = "string",
    },
    onPostEventDirect = {
        [1] = "string",
    },
    onMessageBox = {
        [1] = "EventToken",
        [2] = "string",
        [3] = "Player",
        [4] = "NPC",
    },
    onBlockHit = {
        [1] = "EventToken",
        [2] = "Block",
        [3] = "boolean",
        [4] = "Player",
    },
    onPostBlockHit = {
        [1] = "Block",
        [2] = "boolean",
        [3] = "Player|nil",
    },
    onBlockRemove = {
        [1] = "EventToken",
        [2] = "Block",
    },
    onPostBlockRemove = {
        [1] = "Block",
    },
    onColorSwitch = {
        [1] = "number",
    },
    onSyncSwitch = {
        [1] = "boolean",
    },
    onWarp = {
        [1] = "Warp",
        [2] = "Player",
    },
    onWarpEnter = {
        [1] = "EventToken",
        [2] = "Warp",
        [3] = "Player",
    },
    onPostWarpEnter = {
        [1] = "Warp",
        [2] = "Player",
    },
    onBeatWarn = {
        [1] = "number",
    },
    onBeatStateChange = {
        [1] = "boolean",
    },
    onNPCHarm = {
        [1] = "EventToken",
        [2] = "NPC",
        [3] = "EnemyHarmType",
        [4] = "NPC|Player|nil",
    },
    onPostNPCHarm = {
        [1] = "NPC",
        [2] = "EnemyHarmType",
        [3] = "NPC|Player|nil",
    },
    onNPCTransform = {
        [1] = "NPC",
        [2] = "number",
        [3] = "EnemyHarmType",
    },
    onNPCKill = {
        [1] = "EventToken",
        [2] = "NPC",
        [3] = "EnemyHarmType",
    },
    onPostNPCKill = {
        [1] = "NPC",
        [2] = "EnemyHarmType",
    },
    onNPCCollect = {
        [1] = "EventToken",
        [2] = "NPC",
        [3] = "Player",
    },
    onPostNPCCollect = {
        [1] = "NPC",
        [2] = "Player",
    },
    onPlayerHarm = {
        [1] = "EventToken",
        [2] = "Player",
    },
    onPostPlayerHarm = {
        [1] = "Player",
    },
    onPlayerKill = {
        [1] = "EventToken",
        [2] = "Player",
    },
    onPostPlayerKill = {
        [1] = "Player",
    },
    onPOW = {
        [1] = "EventToken",
    },
    onPostPOW = {},
    onNPCPOWHit = {
        [1] = "EventToken",
        [2] = "NPC",
        [3] = "string",
    },
    onPostNPCPOWHit = {
        [1] = "NPC",
        [2] = "string",
    },
    onBlockPOWHit = {
        [1] = "EventToken",
        [2] = "Block",
        [3] = "string",
    },
    onPostBlockPOWHit = {
        [1] = "Block",
        [2] = "string",
    },
    onMouseButtonEvent = {
        [1] = "number",
        [2] = "number",
        [3] = "number",
        [4] = "number",
    },
    onKeyboardKeyPress = {
        [1] = "VirtualKeyCode",
        [2] = "string",
    },
    onKeyboardKeyRelease = {
        [1] = "VirtualKeyCode",
        [2] = "string",
    },
    onKeyboardPress = {
        [1] = "VirtualKeyCode",
    },
    onKeyboardPressDirect = {
        [1] = "VirtualKeyCode",
        [2] = "boolean",
        [3] = "string",
    },
    onPasteText = {
        [1] = "string",
    },
    onControllerButtonPress = {
        [1] = "number",
        [2] = "number",
        [3] = "string",
    },
    onControllerButtonRelease = {
        [1] = "number",
        [2] = "number",
        [3] = "string",
    },
    onChangeController = {
        [1] = "string",
        [2] = "number",
    },
    onCheckpoint = {
        [1] = "Checkpoint",
        [2] = "Player",
    },
    onExit = {},
    onExitLevel = {
        [1] = "LevelWinType",
    },
    onPause = {
        [1] = "EventToken",
        [2] = "Player",
    },
    onExplosion = {
        [1] = "EventToken",
        [2] = "Explosion",
        [3] = "Player",
    },
    onPostExplosion = {
        [1] = "Explosion",
        [2] = "Player",
    },
    onNPCGenerated = {
        [1] = "NPC",
        [2] = "NPC",
    },
    onNPCConfigChange = {
        [1] = "number",
        [2] = "string",
    },
    onBlockConfigChange = {
        [1] = "number",
        [2] = "string",
    },
    onBGOConfigChange = {
        [1] = "number",
        [2] = "string",
    },
    onDrawUnfocusOverlay = {},
    onLoop = {},
    onLoad = {},
    onJump = {
        [1] = "number",
    },
    onJumpEnd = {
        [1] = "number",
    },
    onKeyDown = {
        [1] = "KeyCode",
        [2] = "number",
    },
    onKeyUp = {
        [1] = "KeyCode",
        [2] = "number",
    },
}

--[[
    Global event callbacks
]]

---@class parser.object
---@field parent parser.object

---@param next  fun(func:parser.object, param:parser.object) # Default behavior
---@param func  parser.object                                # The function
---@param param parser.object                                # The param
---@return boolean? ready                                    # Already know the type.
local function OnCompileFunctionParam(next, func, param)
    if next(func, param) then return true end -- User already knows the type
    if not guide.isGlobal(func.parent) then return false end

    local funcName = vm.getGlobalNode(func.parent):getName()
    if not LUNALUA_EVENTS[funcName] then return false end

    for i, p in ipairs(param.parent) do
        if p[1] == param[1] then
            vm.setNode(param, vm.declareGlobal("type", LUNALUA_EVENTS[funcName][i]))
            break
        end
    end

    vm.setNode(func, vm.declareGlobal("type", funcName, LUNALUA_EVENTS_URI))
    return true
end

VM = { OnCompileFunctionParam = OnCompileFunctionParam }

--[[
    Case insensitive file system (SMBX2 only runs on Windows)
]]

local libRoot = fs.current_path() / "library"

local function resolveCaseInsensitive(root, moduleName)
    for file in fs.pairs(root) do
        if fs.is_regular_file(file) then
            local fileName = file:filename():string()
            if fileName:lower() == (moduleName .. ".lua"):lower() then
                return file:string()
            end
        end
    end
end

---@param  uri  string # The URI of file
---@param  name string # Argument of require()
---@return string[]?
function ResolveRequire(uri, name)
    local libModuleFile = resolveCaseInsensitive(libRoot, name)
    local localModuleFile = resolveCaseInsensitive(fs.path(furi.decode(uri)), name)

    local result = {}
    if libModuleFile then
        result[#result+1] = furi.encode(libModuleFile)
    end
    if localModuleFile then
        result[#result+1] = furi.encode(localModuleFile)
    end

    if #result ~= 0 then
        return result
    end
end
