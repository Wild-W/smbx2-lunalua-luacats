---@meta

local lib3d = {}

---
---@param args unknown?
---@return table
function lib3d.Box(args) end

---Create a new camera - objects will be drawn to camera.target when camera:draw is called
---@param args unknown?
---@return table
function lib3d.Camera(args) end

---
---@param args unknown?
---@return table
function lib3d.Cylinder(args) end

---Create a new light
---@param args unknown?
---@return table
function lib3d.Light(args) end

---
---@param shader unknown?
---@param uniforms unknown?
---@param attributes unknown?
---@param macros unknown?
---@return table
function lib3d.Material(shader, uniforms, attributes, macros) end

---
---@param args unknown?
---@return table
function lib3d.Mesh(args) end

---
---@param args unknown?
---@return table
function lib3d.Plane(args) end

---
---@param args unknown?
---@return table
function lib3d.Quad(args) end

---
---@param args unknown?
---@return table
function lib3d.Sphere(args) end

---Loads a mesh that can be repeatedly fed into `lib3d.Mesh` calls via the `meshdata` argument
---@param path unknown?
---@param importsettings unknown?
---@return table
function lib3d.loadMesh(path, importsettings) end

---Main camera draw function, called automatically
---@param idx unknown?
---@return ...
function lib3d.onCameraDraw(idx) end

---Recreate the main camera when necessary, making sure to retain the old settings
---@param width unknown?
---@param height unknown?
---@return ...
function lib3d.onFramebufferResize(width, height) end

---
---@return ...
function lib3d.onInitAPI() end

---Software project point
---@param cam unknown?
---@param v unknown?
---@return ...
function lib3d.project(cam, v) end

---
---@type unknown
lib3d.ambientLight = nil

---
---@type boolean
lib3d.backfaceCulling = nil

---Automatic main camera - can be disabled by setting it to inactive
---@type table
lib3d.camera = nil

---
---@type boolean
lib3d.camera.active = nil

---
---@type integer
lib3d.camera.farclip = nil

---
---@type unknown
lib3d.camera.nearclip = nil

---
---@type boolean
lib3d.debug = nil

---
---@type table
lib3d.defaultMaterial = nil

---
---@type boolean
lib3d.dualCamera = nil

---
---@type unknown
lib3d.fogColor = nil

---
---@type table
lib3d.import = nil

---
---@type table
lib3d.lighttype = nil

---Define shader macro constants here
---@type table
lib3d.macro = nil

---
---@type table
lib3d.projection = nil

---
---@type table
lib3d.uv = nil

return lib3d
