---@meta

---The camera is the area of the screen that is being rendered. It is usually fixed to the player, but may be moved differently depending on section boundaries or autoscroll. Internally, a camera's position is updated just before its respective onCameraUpdate call. Thus, using onCameraUpdate is recommended for moving the camera, and onCameraDraw is recommended for drawing to a camera's viewport.
Camera = {}

--- Returns a table of references to all active cameras.
--- @return Camera[] cameras A table of all active cameras.
function Camera.get() end

---The first Camera object.
---@type Camera
camera = {}
---The second Camera object (or `nil`).
---@type Camera?
camera2 = {}

---@class Camera
local CameraInstance = {}

--- Returns a value of the Camera struct at a specific memory address-offset.
--- @param offset number|CameraMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @return any value The value at the specified memory address-offset.
function CameraInstance:mem(offset, type) end

--- Sets a value of the Camera struct at a specific memory address-offset.
--- @param offset number|CameraMemoryOffset The memory address-offset.
--- @param type MemoryFieldType The type of the field.
--- @param value any The value to set at the specified memory address-offset.
function CameraInstance:mem(offset, type, value) end

---	Validates that the camera object exists.
---@type boolean
CameraInstance.isValid = false

--- The camera's index in the internal list of cameras.
---@type number
CameraInstance.idx = 0

--- The camera's x coordinate (left edge of the screen).
---@type number
CameraInstance.x = 0

--- The camera's y coordinate (top edge of the screen).
---@type number
CameraInstance.y = 0

--- The width of the camera's viewport.
---@type number
CameraInstance.width = 0

--- The height of the camera's viewport.
---@type number
CameraInstance.height = 0

--- The x-coordinate of the left edge of the camera, relative to the SMBX window.
---@type number
CameraInstance.renderX = 0

--- The y-coordinate of the top edge of the camera, relative to the SMBX window.
---@type number
CameraInstance.renderY = 0

--- Returns a RECT consisting of the camera's left, top, right and bottom edges (relative to the scene).
---@type RECT
CameraInstance.bounds = nil

--- Whether or not the camera is split (multiplayer).
---@type boolean
CameraInstance.isSplit = false

---@alias CameraMemoryOffset
--- | `0x00` # RenderX. Use field renderX. `FIELD_DFLOAT`
--- | `0x08` # RenderY. Use field renderY. `FIELD_DFLOAT`
--- | `0x10` # Width. Use field width. `FIELD_DFLOAT`
--- | `0x18` # Height. Use field height. `FIELD_DFLOAT`
--- | `0x20` # Is split screen? Use field isSplit. `FIELD_BOOL`
--- | `0x22` # Unknown/Unused (?)
--- | `0x24` # Unknown/Unused (?)
--- | `0x26` # Unknown/Unused (?)
--- | `0x28` # Unknown/Unused (?)
--- | `0x2A` # Unknown/Unused (?)
--- | `0x2C` # The player's Y position difference. This will only work when the cameras are split vertically. Otherwise, it returns 0. The number caps at -150 or 150. `FIELD_DFLOAT`
--- | `0x34` # Starts at 0 and then decreases to 0. May be related to two cameras being in different sections (?) `FIELD_DWORD`
