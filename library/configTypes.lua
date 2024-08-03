---@meta

--- common type handling functions for config files
local configTypes = {}

-- set up a new parser function for an arbitrary type name
function configTypes.registerPropParser(type, parse) end

-- Encoder for casting to boolean
---@return boolean
local function encodeBoolean(value) end
configTypes.encodeBoolean = encodeBoolean

-- Encoder for casting to number
---@return number
local function encodeNumber(value) end
configTypes.encodeNumber = encodeNumber

-- Converts the property to the specified type, if possible
---@param value any
---@param toType "boolean"|"number"|"string"|"function"|"Color"|string
---@return boolean|number|string|function|Color
local function convertPropType(value, toType) end
configTypes.convertPropType = convertPropType

-- Wraps a config variable as an array that can be set from config files using square brackets `[1, 2, 3]`, `[false, true, false]`, etc. If the type argument is not specified, the type is attempted to be inferred from the first argument.
---@param array any[]
---@param ofType "boolean"|"number"|"string"|"function"|"Color"|string
---@return boolean|number|string|function|Color
local asArray = function(array, ofType) end
configTypes.asArray = asArray

return configTypes
