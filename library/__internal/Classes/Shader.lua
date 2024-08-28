---@meta _

---Shaders are visual effects handled by the user's graphics card that can be used in Graphics.glDraw, as well as rendering calls that use Graphics.glDraw under the hood.
---Lunalua uses vertex and fragment shaders that are written in GLSL. First the vertex shader (if defined) runs for each vertex of the drawn polygon, then the fragment shader runs for each pixel within the area defied by the polygon. At the top of each file, #version 120 must be specified.
---@class ShaderManager
Shader = {}

---Creates a new Shader-Object. This Shader-Object is not valid until `Shader:compileFromSource` or `Shader:compileFromFile` is called.
---@return Shader
function Shader() end

---Compiles a new shader given the respective vertex and fragment shader source files. `nil` can be supplied to either argument to ignore that type of shader code.
---@param vertexShaderFilename string?
---@param fragmentShaderFilename string?
---@return Shader
function Shader.fromFile(vertexShaderFilename, fragmentShaderFilename) end

---Compiles a new shader given the respective vertex and fragment shader inline defined code. `nil` can be supplied to either argument to ignore that type of shader code.
---@param vertexShaderCode string?
---@param fragmentShaderCode string?
---@return Shader
function Shader.fromSource(vertexShaderCode, fragmentShaderCode) end

---@class Shader
---@field isCompiled boolean Whether the shader has been successfully compiled.
local Shader = {}

Shader._cobj = {
	---@type ShaderAttributeInfo
	_attributeInfo = nil,
	---@type boolean
	_isCompiled = nil,
	---@type table
	_obj = nil,
	---@type ShaderAttributeInfo
	_uniformInfo = nil,
}

---@param vertexShaderFilename string The filename of the vertex shader source file.
---@param fragmentShaderFilename string The filename of the fragment shader source file.
function Shader:compileFromFile(vertexShaderFilename, fragmentShaderFilename) end

---@param vertexShaderCode string The vertex shader code as a string.
---@param fragmentShaderCode string The fragment shader code as a string.
function Shader:compileFromSource(vertexShaderCode, fragmentShaderCode) end

---Returns a table with information of all active attributes. The key of the table is the variable name. The value represents another table with the specific information.
---@return table<string, ShaderAttributeInfo>
function Shader:getAttributeInfo() end

---Returns a table with information of all active uniforms. The key of the table is the variable name. The value represents another table with the specific information.
---@return table<string, ShaderAttributeInfo>
function Shader:getUniformInfo() end

---@class ShaderAttributeInfo
---@field id number The location of the attribute/uniform.
---@field type number The data type of the array.
---@field arrayDepth number The dimension of the array. 0 if not an array, 1 if it is an array.
---@field arrayCount number How many elements the array can contain, if the attribute/uniform is an array.
---@field name string The name with a possible array suffix. Same as rawName if the attribute/uniform is not an array.
---@field rawName string The name without any qualifier.
