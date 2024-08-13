---@meta

local map3d = {}

---Gets an animation frame for a given tile type and ID
---@param tileType unknown?
---@param id unknown?
---@return ...
function map3d.GetAnimationFrame(tileType, id) end

---Computes the polygon that intersects the ground plane and contains all objects that can be seen by the camera, and the AABB surrounding the intersecting polygon
---@return table|nil
---@return table|nil
---@return unknown
function map3d.GetClippingFrustum() end

---Read a value from the heightmap (with bicubic interpolation)
---@param x unknown?
---@param y unknown?
---@return integer|unknown
function map3d.GetHeight(x, y) end

---After changing certain parameters such as which tiles are billboarded, this must be called to regenerate the buffers
---THIS IS EXTREMELY EXPENSIVE AND SHOULD BE USED SPARINGLY
---@return ...
function map3d.RefreshBuffers() end

---Tests the clipping volumes to see if the rectangle defined by the two extents is visible
---@param px unknown?
---@param py unknown?
---@param p2x unknown?
---@param p2y unknown?
---@param polygon unknown?
---@param aabb unknown?
---@return boolean
function map3d.TestClip(px, py, p2x, p2y, polygon, aabb) end

---
---@return unknown
function map3d.getTarget() end

---Main draw function
function map3d.onDraw() end

--- Internal event
function map3d.onInitAPI() end

---Computes a screen space coordinate given a vectr.v4 object of the form (x,y,z,1)
---@param v unknown?
---@return unknown
function map3d.project(v) end

---
---@param target unknown?
---@return ...
function map3d.setTarget(target) end

---A large plane of tiles drawn at ground level, designed to mask clipping planes
---@type table
map3d.BGPlane = nil

---List of object IDs that should be billboarded. Supports "level" and "scene" objects
---@type table
map3d.Billboard = nil

---
---@type integer
map3d.BucketSize = nil

---The properties of the camera
---@type table
map3d.CameraSettings = nil

---Whether or not to draw the vanilla pause menu (the menu will still operate regardless of this setting)
---@type boolean
map3d.DrawPauseMenu = nil

---The fog settings
---@type table
map3d.FogSettings = nil

---Which HUD style to use (use HUD_NONE to draw your own)
---@type integer
map3d.HUDMode = nil

---
---@type integer
map3d.HUD_BUBBLE = nil

---
---@type integer
map3d.HUD_DEFAULT = nil

---
---@type integer
map3d.HUD_NONE = nil

---
---@type table
map3d.Heightmap = nil

---
---@type unknown
map3d.LIGHT_CEL = nil

---
---@type unknown
map3d.LIGHT_LAMBERT = nil

---
---@type table
map3d.Light = nil

---
---@type integer
map3d.MODE_ORTHO = nil

---
---@type integer
map3d.MODE_ORTHOGRAPHIC = nil

---TODO: Implement orthographic properly (sort of can already, but it messes some things up)
---@type integer
map3d.MODE_PERSPECTIVE = nil

---
---@type table
map3d.MipMaps = nil

---
---@type function
map3d.MipMaps.get = nil

---
---@type function
map3d.MipMaps.refresh = nil

---
---@type function
map3d.RefreshCharacterSprite = nil

---
---@type table
map3d.SceneryClip = nil

---Skybox image
---@type nil
map3d.Skybox = nil

---Skybox tint. This doubles as background colour if Skybox is nil
---@type unknown
map3d.SkyboxTint = nil

---
---@type table
map3d.Stackables = nil

---Swell tiles to fix projection rounding errors
---@type number
map3d.TileSwell = nil

---Vanilla world map offsets the level "path backgrounds". In 3d, this can look odd, so an option to disable the default behaviour and properly centre "path backgrounds" can be found here
---@type boolean
map3d.UseOffsetPathBackgrounds = nil

---
---@type boolean
map3d.clearScene = nil

return map3d
