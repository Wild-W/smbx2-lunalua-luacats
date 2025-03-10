---@meta _

Background = {}

---@enum ParalaxAlign
Background.align = {
    BOTTOM = 1,
    CENTER = 0.5,
    CENTRE = 0.5,
    LEFT = 0,
    MID = 0.5,
    RIGHT = 1,
    TOP = 0
}

---@enum ParalaxDepth
Background.depth = {
    -- Infinity (`math.huge`)
    INFINITE = math.huge,
    -- Infinity (`math.huge`)
    MAX = math.huge,
    MIN = -200
}

--- Internal Event
--- @type onInitAPI
function Background.onInitAPI() end

--- Internal Event
--- @type onCameraDraw
function Background.onCameraDraw(camIdx) end

--- Internal Event
--- @type onTick
function Background.onTick() end

---@param newFocus number
function Background.SetFocus(newFocus) end

---@param section number
---@param background Background
function Background.set(section, background) end

---@param section number
---@return Background
function Background.get(section) end

---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background.Background(fillColor, ...) end

---@param bounds Bounds
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background.Background(bounds, fillColor, ...) end

---@param bounds Bounds
---@param ...BackgroundLayer
---@return Background background
function Background.Background(bounds, ...) end

---@param section number
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background.Background(section, fillColor, ...) end

---@param section number
---@param bounds Bounds
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background.Background(section, bounds, fillColor, ...) end

---@param section number
---@param bounds Bounds
---@param extraLayer BackgroundLayer
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background.Background(section, bounds, extraLayer, fillColor, ...) end

---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background(fillColor, ...) end

---@param bounds Bounds
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background(bounds, fillColor, ...) end

---@param bounds Bounds
---@param ...BackgroundLayer
---@return Background background
function Background(bounds, ...) end

---@param section number
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background(section, fillColor, ...) end

---@param section number
---@param bounds Bounds
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background(section, bounds, fillColor, ...) end

---@param section number
---@param bounds Bounds
---@param extraLayer BackgroundLayer
---@param fillColor Color
---@param ...BackgroundLayer
---@return Background background
function Background(section, bounds, extraLayer, fillColor, ...) end

---@class Bounds
--- @field left number
--- @field right number
--- @field bottom number
--- @field top number

---@class Background : LuaHelperClass
--- @field layers BackgroundLayer[]
--- @field section number
--- @field bounds Bounds
--- @field fillColor Color
--- @field hidden boolean
local Background = {}

function Background:Add(args) end
Background.add = Background.Add

---@return Background
function Background:Clone() end
Background.clone = Background.Clone

---@param name string
function Background:Get(name) end
Background.get = Background.Get

---@return BackgroundLayer|string|number
function Background:Remove(layer) end
Background.remove = Background.Remove

---@class BackgroundLayer : LuaHelperClass
--- @field image LuaImageResource
--- @field x number
--- @field y number
--- @field img LuaImageResource
--- @field name string
--- @field depth ParalaxDepth|number
--- @field fitX boolean
--- @field fitY boolean
--- @field maxParallaxX number
--- @field maxParallaxY number
--- @field sourceX number
--- @field sourceY number
--- @field sourceWidth number
--- @field sourceHeight number
--- @field priority number
--- @field color Color
--- @field opacity number
--- @field speedX number
--- @field speedY number
--- @field parallaxX number
--- @field parallaxY number
--- @field repeatX number
--- @field repeatY number
--- @field padX number
--- @field pady number
--- @field hidden boolean
--- @field frames number
--- @field framespeed number
--- @field startingFrame number
--- @field margin number
--- @field alignX number|ParalaxAlign
--- @field alignY number|ParalaxAlign
--- @field vertshader string
--- @field fragshader string
--- @field uniforms table<string, number|LuaImageResource|Vector2|Vector3|number[]>
--- @field attributes table<string, number[]>
local BackgroundLayer = {}

--- @return BackgroundLayer
function BackgroundLayer:GetArgs() end
BackgroundLayer.getArgs = BackgroundLayer.GetArgs
