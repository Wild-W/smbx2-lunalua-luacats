---@meta

-- This file needs much work.
-- If you're contributing please help here.

Graphics = {}

--- Toggles the level HUD on or off.
---@param showHud boolean
function Graphics.activateHud(showHud) end

--- Toggles the overworld HUD on or off.
---@param hudState WorldHudState
function Graphics.activateOverworldHud(hudState) end

--- Returns whether the default level HUD is activated.
---@return boolean isActive
function Graphics.isHudActivated() end

--- Returns the active state of the overworld HUD.
---@return WorldHudState
function Graphics.getOverworldHudState() end

--- Adds a new HUD element to the HUD render process.
---@param elementFunction function
function Graphics.addHUDElement(elementFunction) end

--- Replaces the render function for levels.
---@param newRenderFunction function
function Graphics.overrideHUD(newRenderFunction) end

--- Replaces the render function for the overworld.
---@param newRenderFunction function
function Graphics.overrideOverworldHUD(newRenderFunction) end

--- Registers a render function for a specific character.
---@param characterID CharacterType
---@param hudType HUDType
---@param actions function
---@param sprites table
function Graphics.registerCharacterHUD(characterID, hudType, actions, sprites) end

--- Returns the HUD type used by the specified character.
---@param characterID CharacterType
---@return HUDType
function Graphics.getHUDType(characterID) end

--- Returns the HUD actions used by the specified character.
---@param characterID CharacterType
---@return function
function Graphics.getHUDActions(characterID) end

--- Returns the offset relative to the center of the screen for the hearts/itembox HUD element.
---@param playerIdx number
---@param isSplit boolean
---@return number
function Graphics.getHUDOffset(playerIdx, isSplit) end

--- Draws the vanilla HUD for the given camera.
---@param camIndex number
---@param priority number
---@param isSplit boolean
function Graphics.drawVanillaHUD(camIndex, priority, isSplit) end

--- Draws the vanilla overworld HUD.
---@param priority number
function Graphics.drawVanillaOverworldHUD(priority) end

--- Static loading & rendering functions

--- Loads an image by a given filename. Relative strings are based in the current level folder.
---@param fileName string
---@return Texture
function Graphics.loadImage(fileName) end

--- Loads an image by a given filename. Performs a call to Misc.resolveGraphicsFile internally.
---@param fileName string
---@return Texture
function Graphics.loadImageResolved(fileName) end

--- Extracts all image data from the image in an array in BGRA-Format.
---@param image Texture
---@return table BGRAPixelValues
---@return number width
---@return number height
function Graphics.getPixelData(image) end

--- Draws the given image for a frame at the given coordinates relative to screen space.
---@param image Texture
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param opacity number
function Graphics.drawImage(image, x, y, sourceX, sourceY, sourceWidth, sourceHeight, opacity) end

--- Draws the given image for a frame at the given coordinates relative to scene space.
---@param image Texture
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param opacity number
function Graphics.drawImageToScene(image, x, y, sourceX, sourceY, sourceWidth, sourceHeight, opacity) end

--- Static Misc functions

--- Returns whether the game currently uses the software-implemented OpenGL renderer.
---@return boolean isSoftGL
function Graphics.isSoftwareGL() end

--- Returns the total number and skipped number of frames in rendering.
---@return number totalFrames
---@return number skippedFrames
function Graphics.getFrameStats() end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param img Texture
--- @param xPos number
--- @param yPos number
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function Graphics.placeSprite(type, img, xPos, yPos) end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param img Texture
--- @param xPos number
--- @param yPos number
--- @param extra string
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function Graphics.placeSprite(type, img, xPos, yPos, extra) end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param img Texture
--- @param xPos number
--- @param yPos number
--- @param extra string
--- @param time number
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function Graphics.placeSprite(type, img, xPos, yPos, extra, time) end

---@param ... unknown
---@return ...
function Graphics.glDrawTriangles(...) end

---@param ... unknown
---@return ...
function Graphics.glGetComponentSize(...) end

---@param ... unknown
---@return ...
function Graphics.getMainFramebufferSize(...) end

---@param ... unknown
---@return ...
function Graphics.getBits32(...) end

---@param ... unknown
---@return ...
function Graphics.redirectCameraFB(...) end

---@param ... unknown
function Graphics.setMainFramebufferSize(...) end

---@param ... unknown
---@return ...
function Graphics.loadAnimatedImage(...) end

---@param ... unknown
---@return ...
function Graphics.drawImageWP(...) end

---@param ... unknown
---@return ...
function Graphics.glSetTexture(...) end

---@param ... unknown
---@return ...
function Graphics.glSetTextureRGBA(...) end

---@param ... unknown
---@return ...
function Graphics.isOpenGLEnabled(...) end

---@param ... unknown
---@return ...
function Graphics.drawImageToSceneWP(...) end

---@param ... unknown
---@return ...
function Graphics.__copyDrawTable(...) end

--- Removes all placed sprites with the same img resource.
--- @param img Texture
--- @deprecated
function Graphics.unplaceSprites(img) end

--- Removes all placed sprites with the same img resource and x-pos, y-pos.
--- @param img Texture
--- @param xPos number
--- @param yPos number
--- @deprecated
function Graphics.unplaceSprites(img, xPos, yPos) end

--- Draws an image according to the values of the named arguments using OpenGL.
---@param args table Named arguments for OpenGL rendering.
function Graphics.glDraw(args) end

--- A wrapper for glDraw that makes drawing rectangular images easier.
---@param args table Named arguments for rectangular drawing.
function Graphics.drawBox(args) end

--- A wrapper for glDraw that makes drawing over the entire screen easier.
---@param args table Named arguments for screen-wide drawing.
function Graphics.drawScreen(args) end

--- A wrapper for glDraw that makes drawing lines easier.
---@param args table Named arguments for line drawing.
function Graphics.drawLine(args) end

--- A wrapper for glDraw that makes drawing circles easier.
---@param args table Named arguments for circle drawing.
function Graphics.drawCircle(args) end

--- Draws an image or text according to the values of the named arguments.
---@param args table Named arguments for drawing images or text.
function Graphics.draw(args) end

--- Represents a capture buffer that can be used as a texture.
---@class CaptureBuffer
local CaptureBuffer = {}

--- Causes the capture buffer to capture the screen at the given render priority.
---@param priority number
function CaptureBuffer:captureAt(priority) end

--- Causes the capture buffer to clear up until a certain render priority.
---@param priority number
function CaptureBuffer:clear(priority) end

--- The constructor for Graphics.CaptureBuffer returns a capture buffer object of the given size.
---@param width number
---@param height number
---@return CaptureBuffer
function Graphics.CaptureBuffer(width, height) end

---@class SpriteOverride
---@field img Texture

--- Contains references to images currently used by the game.
---@type table<string, SpriteOverride[]>
Graphics.sprites = {}

Graphics.Shader = {}

---@type string
Graphics.GL_VERSION = nil

---@type string
Graphics.GL_SHADING_LANGUAGE_VERSION = nil

---@type string
Graphics.GL_RENDERER = nil

---@type string
Graphics.GL_VENDOR = nil

Graphics.GL_MAX_ELEMENT_INDEX = -1

Graphics.GL_MAX_COMPUTE_WORK_GROUP_COUNT = 0

Graphics.GL_MAX_COMPUTE_WORK_GROUP_SIZE = 0

Graphics.HUD_NONE = 0

Graphics.GL_POINTS = 0

Graphics.GL_LINES = 1

Graphics.GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = 1

Graphics.GL_MAX_SAMPLE_MASK_WORDS = 1

Graphics.HUD_HEARTS = 1

Graphics.HUD_ITEMBOX = 2

Graphics.GL_LINE_LOOP = 2

Graphics.GL_LINE_STRIP = 3

Graphics.GL_MAJOR_VERSION = 4

Graphics.GL_TRIANGLES = 4

Graphics.GL_TRIANGLE_STRIP = 5

Graphics.GL_TRIANGLE_FAN = 6

Graphics.GL_MINOR_VERSION = 6

Graphics.GL_MAX_PROGRAM_TEXEL_OFFSET = 7

Graphics.GL_MAX_GEOMETRY_ATOMIC_COUNTERS = 8

Graphics.GL_MAX_FRAGMENT_ATOMIC_COUNTERS = 8

Graphics.GL_MAX_DEPTH_TEXTURE_SAMPLES = 8

Graphics.GL_MAX_COMBINED_ATOMIC_COUNTERS = 8

Graphics.GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = 8

Graphics.GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = 8

Graphics.GL_MAX_DRAW_BUFFERS = 8

Graphics.GL_MAX_COLOR_TEXTURE_SAMPLES = 8

Graphics.GL_MAX_INTEGER_SAMPLES = 8

Graphics.GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = 8

Graphics.GL_MAX_COMPUTE_ATOMIC_COUNTERS = 8

Graphics.GL_MAX_CLIP_DISTANCES = 8

Graphics.GL_MAX_VERTEX_ATOMIC_COUNTERS = 8

Graphics.GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 15

Graphics.GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 15

Graphics.GL_MAX_VERTEX_UNIFORM_BLOCKS = 15

Graphics.GL_MAX_COMPUTE_UNIFORM_BLOCKS = 15

Graphics.GL_MAX_VIEWPORTS = 16

Graphics.GL_MAX_FRAMEBUFFER_SAMPLES = 16

Graphics.GL_MAX_TEXTURE_LOD_BIAS = 16

Graphics.GL_MAX_VERTEX_ATTRIB_BINDINGS = 29

Graphics.GL_MAX_VERTEX_ATTRIBS = 29

Graphics.GL_MAX_TEXTURE_IMAGE_UNITS = 32

Graphics.GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = 32

Graphics.GL_MAX_VARYING_VECTORS = 32

Graphics.GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = 32

Graphics.GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 32

Graphics.GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 64

Graphics.GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 64

Graphics.GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 64

Graphics.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 64

Graphics.GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 64

Graphics.GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 64

Graphics.GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 64

Graphics.GL_MAX_DEBUG_GROUP_STACK_DEPTH = 64

Graphics.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 64

Graphics.GL_MAX_UNIFORM_BUFFER_BINDINGS = 90

Graphics.GL_MAX_COMBINED_UNIFORM_BLOCKS = 90

Graphics.GL_MAX_VARYING_COMPONENTS = 128

Graphics.GL_MAX_FRAGMENT_INPUT_COMPONENTS = 128

Graphics.GL_MAX_VARYING_FLOATS = 128

Graphics.GL_MAX_VERTEX_OUTPUT_COMPONENTS = 128

Graphics.GL_MAX_GEOMETRY_INPUT_COMPONENTS = 128

Graphics.GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = 128

Graphics.GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = 160

Graphics.GL_MAX_LABEL_LENGTH = 256

Graphics.GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = 1024

Graphics.GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = 2047

Graphics.GL_MAX_ARRAY_TEXTURE_LAYERS = 2048

Graphics.GL_MAX_3D_TEXTURE_SIZE = 2048

Graphics.GL_MAX_VERTEX_UNIFORM_VECTORS = 4096

Graphics.GL_MAX_UNIFORM_LOCATIONS = 4096

Graphics.GL_MAX_FRAGMENT_UNIFORM_VECTORS = 4096

Graphics.GL_MAX_FRAMEBUFFER_LAYERS = 8192

Graphics.GL_MAX_COMPUTE_UNIFORM_COMPONENTS = 16384

Graphics.GL_MAX_FRAMEBUFFER_WIDTH = 16384

Graphics.GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 16384

Graphics.GL_MAX_TEXTURE_SIZE = 16384

Graphics.GL_MAX_VIEWPORT_DIMS = 16384

Graphics.GL_MAX_RECTANGLE_TEXTURE_SIZE = 16384

Graphics.GL_MAX_FRAMEBUFFER_HEIGHT = 16384

Graphics.GL_MAX_VERTEX_UNIFORM_COMPONENTS = 16384

Graphics.GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = 16384

Graphics.GL_MAX_RENDERBUFFER_SIZE = 16384

Graphics.GL_MAX_CUBE_MAP_TEXTURE_SIZE = 16384

Graphics.GL_MAX_TEXTURE_BUFFER_SIZE = 268435456

Graphics.GL_MAX_ELEMENTS_INDICES = 536870911

Graphics.GL_MAX_ELEMENTS_VERTICES = 536870911

Graphics.GL_MAX_UNIFORM_BLOCK_SIZE = 572657868

Graphics.GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 2147483389

Graphics.GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 2147483389

Graphics.GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = 2147483389

Graphics.GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 2147483389

Graphics.GL_MAX_SERVER_WAIT_TIMEOUT = 2147483647

---@alias HUDType
---|`Graphics.HUD_NONE` # Neither hearts nor itembox are used.
---|`Graphics.HUD_HEARTS` # Heart-based HUD.
---|`Graphics.HUD_ITEMBOX` # Itembox-based HUD.
