---@meta
-- TODO: Finish field descriptions.

---The Darkness class allows you to create and manipulate darkness fields and lighting.
---@class Darkness
Darkness = {}

--- Creates a new darkness field in the scene.
--- @param args table The arguments for the darkness field.
--- @return DarknessField field The created darkness field.
function Darkness.create(args) end

--- Creates a new light source, but does not add it to the scene.
--- @param args table The arguments for the light source.
--- @return Light source The created light source.
function Darkness.light(args) end

--- Creates a new light source, but does not add it to the scene.
--- @param x number The x position of the light source.
--- @param y number The y position of the light source.
--- @param radius number The radius of the light source.
--- @param brightness number The brightness of the light source.
--- @param color Color The color of the light source.
--- @return Light source The created light source.
function Darkness.light(x, y, radius, brightness, color) end

--- Creates a new light source, but does not add it to the scene.
--- @param x number The x position of the light source.
--- @param y number The y position of the light source.
--- @param radius number The radius of the light source.
--- @param brightness number The brightness of the light source.
--- @param color Color The color of the light source.
--- @param flicker boolean Whether the light should flicker.
--- @return Light source The created light source.
function Darkness.light(x, y, radius, brightness, color, flicker) end

--- Adds a light to the global light list, adding it to every darkness field in the scene.
--- @param light Light The light to add.
--- @return Light light The added light.
function Darkness.addLight(light) end

--- Removes a light from the global light list, removing it from the scene (unless it has been added to a specific darkness field separately).
--- @param light Light The light to remove.
--- @return nil
function Darkness.removeLight(light) end

Darkness.falloff = {
	---@type string
	INV_SQR = "",
	---@type string
	LINEAR = "",
	---@type string
	HARD = "",
	---@type string
	SIGMOID = "",
	---@type string
	STEP = "",
	---@type string
	SQR_STEP = "",
	---@type string
	DEFAULT = "",
}

Darkness.shadow = {
	---@type string
	NONE = "",
	---@type string
	RAYMARCH = "",
	---@type string
	HARD_RAYMARCH = "",
	---@type string
	DEFAULT = "",
}

Darkness.lighttype = {
	POINT = 0,
	SPOT = 1,
	BOX = 2,
	LINE = 3,
}

---@type table<string, number>
Darkness.priority = {
	DISTANCE = 0,
	SIZE = 1,
	BRIGHTNESS = 2,
	DEFAULT = 0,
}

---@class DarknessField
local DarknessFieldInstance = {}

--- Adds a light to this darkness field only.
--- @param light Light The light to add.
--- @return Light light The added light.
function DarknessFieldInstance:addLight(light) end

--- Removes a light from this darkness field only.
--- @param light Light The light to remove.
--- @return nil
function DarknessFieldInstance:removeLight(light) end

--- Recompiles the darkness field's shader. This is necessary when updating certain values in the field data, such as `maxLights`, `falloff`, and `shadows`.
--- @return nil
function DarknessFieldInstance:rebuildShader() end

--- Destroys the darkness field, removing it from the scene and preventing it from being reused.
--- @return nil
function DarknessFieldInstance:destroy() end

---@type string
DarknessFieldInstance.falloff = Darkness.falloff.DEFAULT

---@type string
DarknessFieldInstance.shadows = Darkness.shadow.DEFAULT

---@type number
DarknessFieldInstance.maxLights = 60

---@type table
DarknessFieldInstance.uniforms = {}

---@type number
DarknessFieldInstance.priorityType = Darkness.priority.DEFAULT

---@type RECT
DarknessFieldInstance.bounds = nil

---@type number
DarknessFieldInstance.boundBlendLength = 64

---@type number|table<number, number>
DarknessFieldInstance.section = -1

---@type Color
DarknessFieldInstance.ambient = nil

---@type number
DarknessFieldInstance.priority = 0

---@type boolean
DarknessFieldInstance.additiveBrightness = true

---@type boolean
DarknessFieldInstance.enabled = true

---@type boolean
DarknessFieldInstance.isValid = true

---@type Shader
DarknessFieldInstance.shader = nil

---@type table
DarknessFieldInstance.subshaders = {}

---@class Light
local LightInstance = {}

--- Attaches the light to an object, automatically updating its position to match the object it is attached to.
--- @param object table The object to attach the light to.
--- @param snap boolean Whether to snap the light to the centre of the object.
--- @return nil
function LightInstance:attach(object, snap) end

--- Detaches the light from a previously attached object.
--- @return nil
function LightInstance:detach() end

--- Removes the light from all darkness fields, including the global light list, and prevents it from being reused.
--- @return nil
function LightInstance:destroy() end

---@type number
LightInstance.x = 0

---@type number
LightInstance.y = 0

---@type number
LightInstance.radius = 64

---@type number
LightInstance.brightness = 1

---@type number
LightInstance.intensity = 1

---@type Color
LightInstance.color = nil

---@type boolean
LightInstance.flicker = false

---@type number
LightInstance.type = Darkness.lighttype.POINT

---@type Vector2
LightInstance.dir = nil

---@type Vector2
LightInstance.direction = nil

---@type number
LightInstance.spotangle = 45

---@type number
LightInstance.spotpower = 8

---@type number
LightInstance.width = 32

---@type number
LightInstance.height = 32

---@type boolean
LightInstance.isValid = true
