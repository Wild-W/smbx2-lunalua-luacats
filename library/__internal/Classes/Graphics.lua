---@meta _

Graphics = {}

--- Toggles the level HUD on or off.
---@param showHud boolean
function Graphics.activateHud(showHud) end

--- Toggles the overworld HUD on or off.
--- 
--- Overworld only.
---@param hudState WorldHudState
function Graphics.activateOverworldHud(hudState) end

--- Returns whether the default level HUD is activated.
--- 
--- Level only.
---@return boolean isActive
function Graphics.isHudActivated() end

--- Returns the active state of the overworld HUD.
---@return WorldHudState
function Graphics.getOverworldHudState() end

--- Adds a new HUD element to the HUD render process. The elementFunction will be called with 3 arguments: camIdx (for retrieving the camera), priority (equal to HUDOverride.priority) and isSplit (whether splitscreen is active).
---@param elementFunction fun(camIdx: number, priority: number, isSplit: boolean)
function Graphics.addHUDElement(elementFunction) end

--- Replaces the render function for levels. The level render function gets three arguments passed: camIndex, priority (requal to HUDOverride.priority) and isSplit (whether splitscreen is active).
---@param newRenderFunction fun(camIdx: number, priority: number, isSplit: boolean)
function Graphics.overrideHUD(newRenderFunction) end

--- Replaces the render function for the overworld. The overworld render function gets one argument passed that is equal to the value of HUDOverride.priority.
---@param newRenderFunction fun(priority: number)
function Graphics.overrideOverworldHUD(newRenderFunction) end

---@alias HUDActions fun(playerIdx: number, camObj: Camera, playerObj: Player, priority: number, isSplit: boolean, playerCount: number)

---@class HUDSprites
--- @field reserveBox Sprite # Sprite for the reserve itembox.
--- @field coins Sprite # Sprite for the coin icon.
--- @field cross Sprite # Sprite for the x in the hud.
--- @field stars Sprite # Sprite for the star icon.
--- @field lives Sprite # Sprite for the lives icon.
--- @field lives2 Sprite # Sprite for the lives icon for player 2 in battle mode.
--- @field heartEmpty Sprite # Sprite for the empty heart icon.
--- @field heartFull Sprite # Sprite for the filled heart icon.
--- @field keys Sprite # Sprite for the key icon on Link's HUD.
--- @field bombs Sprite # Sprite for the bombs icon on Link's HUD.
--- @field overworldBox Sprite # Sprite for the overworld border.
--- @field arrowUp Sprite # Sprite for an up arrow in the star coin HUD.
--- @field arrowDown Sprite # Sprite for a down arrow in the star coin HUD.
--- @field starcoinCollected Sprite # Sprite for collected star coins.
--- @field starcoinUncollected Sprite # Sprite for uncollected star coins.
--- @field timer Sprite # Sprite for the timer clock icon.

--- Registers a render function for a specific character.
---@param characterID CharacterType
---@param hudType HUDType
---@param actions HUDActions?
---@param sprites HUDSprites?
function Graphics.registerCharacterHUD(characterID, hudType, actions, sprites) end

--- Returns the HUD type used by the specified character.
---@param characterID CharacterType
---@return HUDType
function Graphics.getHUDType(characterID) end

--- Returns the HUD actions used by the specified character.
---@param characterID CharacterType
---@return HUDActions
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
---@return LuaImageResource
function Graphics.loadImage(fileName) end

--- Loads an image by a given filename. Performs a call to Misc.resolveGraphicsFile internally.
---@param fileName string
---@return LuaImageResource
function Graphics.loadImageResolved(fileName) end

--- Extracts all image data from the image in an array in BGRA-Format.
---@param image LuaImageResource
---@return number[] BGRAPixelValues
---@return number width
---@return number height
function Graphics.getPixelData(image) end

--- Draws the given image for a frame at the given coordinates relative to screen space.
---@param image LuaImageResource
---@param x number
---@param y number
function Graphics.drawImage(image, x, y, opacity) end

--- Draws the given image for a frame at the given coordinates relative to screen space. Additionally the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
---@param x number
---@param y number
---@param opacity number
function Graphics.drawImage(image, x, y, opacity) end

--- Draws the given image for a frame at the given coordinates relative to screen space. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created.
---@param image LuaImageResource
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
function Graphics.drawImage(image, x, y, sourceX, sourceY, sourceWidth, sourceHeight, opacity) end

--- Draws the given image for a frame at the given coordinates relative to screen space. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created. Additionally, the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param opacity number
function Graphics.drawImage(image, x, y, sourceX, sourceY, sourceWidth, sourceHeight, opacity) end

--- Draws the given image for a frame at the given coordinates relative to scene space.
---@param image LuaImageResource
---@param x number
---@param y number
function Graphics.drawImageToScene(image, x, y) end

--- Draws the given image for a frame at the given coordinates relative to scene space. Additionally, the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
---@param x number
---@param y number
---@param opacity number
function Graphics.drawImageToScene(image, x, y, opacity) end

--- Draws the given image for a frame at the given coordinates relative to scene space. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created.
---@param image LuaImageResource
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
function Graphics.drawImageToScene(image, x, y, sourceX, sourceY, sourceWidth, sourceHeight) end

--- Draws the given image for a frame at the given coordinates relative to scene space. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created. Additionally, the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
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
--- @param img LuaImageResource
--- @param xPos number
--- @param yPos number
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function Graphics.placeSprite(type, img, xPos, yPos) end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param img LuaImageResource
--- @param xPos number
--- @param yPos number
--- @param extra string
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function Graphics.placeSprite(type, img, xPos, yPos, extra) end

--- Places a sprite from the resource memory at 'xPos', 'yPos'.
--- @param type number
--- @param img LuaImageResource
--- @param xPos number
--- @param yPos number
--- @param extra string
--- @param time number
--- @deprecated Use Graphics.draw or Graphics.drawImageWP instead.
function Graphics.placeSprite(type, img, xPos, yPos, extra, time) end

---@param vertexCoords number[]
---@param textureCoords number[]
---@param vertexCount number
---@deprecated Use Graphics.glDraw instead.
function Graphics.glDrawTriangles(vertexCoords, textureCoords, vertexCount) end

---@alias GLType
--- | `GL_DOUBLE_VEC3`
--- | `GL_DOUBLE_VEC2`
--- | `GL_FLOAT`
--- | `GL_FLOAT_VEC2`
--- | `GL_FLOAT_VEC3`
--- | `GL_FLOAT_VEC4`
--- | `GL_FLOAT_MAT2`
--- | `GL_FLOAT_MAT3`
--- | `GL_FLOAT_MAT4`
--- | `GL_FLOAT_MAT2x3`
--- | `GL_FLOAT_MAT2x4`
--- | `GL_FLOAT_MAT3x2`
--- | `GL_FLOAT_MAT3x4`
--- | `GL_FLOAT_MAT4x2`
--- | `GL_FLOAT_MAT4x3`
--- | `GL_INT`
--- | `GL_INT_VEC2`
--- | `GL_INT_VEC3`
--- | `GL_INT_VEC4`
--- | `GL_UNSIGNED_INT`
--- | `GL_UNSIGNED_INT_VEC2`
--- | `GL_UNSIGNED_INT_VEC3`
--- | `GL_UNSIGNED_INT_VEC4`
--- | `GL_DOUBLE_MAT4x3`
--- | `GL_DOUBLE_MAT3x4`
--- | `GL_DOUBLE_MAT3x2`
--- | `GL_DOUBLE_MAT2x3`
--- | `GL_DOUBLE_MAT3`
--- | `GL_DOUBLE_MAT2`
--- | `GL_DOUBLE_VEC4`
--- | `GL_DOUBLE`
--- | `GL_DOUBLE_MAT4`
--- | `GL_SAMPLER_2D`
--- | `GL_DOUBLE_MAT4x2`
--- | `GL_DOUBLE_MAT2x4`

GL_DOUBLE_VEC3 = 36861
GL_DOUBLE_VEC2 = 36860
GL_FLOAT = 5126
GL_FLOAT_VEC2 = 35664
GL_FLOAT_VEC3 = 35665
GL_FLOAT_VEC4 = 35666
GL_FLOAT_MAT2 = 35674
GL_FLOAT_MAT3 = 35675
GL_FLOAT_MAT4 = 35676
GL_FLOAT_MAT2x3 = 35685
GL_FLOAT_MAT2x4 = 35686
GL_FLOAT_MAT3x2 = 35687
GL_FLOAT_MAT3x4 = 35688
GL_FLOAT_MAT4x2 = 35689
GL_FLOAT_MAT4x3 = 35690
GL_INT = 5124
GL_INT_VEC2 = 35667
GL_INT_VEC3 = 35668
GL_INT_VEC4 = 35669
GL_UNSIGNED_INT = 5125
GL_UNSIGNED_INT_VEC2 = 36294
GL_UNSIGNED_INT_VEC3 = 36295
GL_UNSIGNED_INT_VEC4 = 36296
GL_DOUBLE_MAT4x3 = 36686
GL_DOUBLE_MAT3x4 = 36684
GL_DOUBLE_MAT3x2 = 36683
GL_DOUBLE_MAT2x3 = 36681
GL_DOUBLE_MAT3 = 36679
GL_DOUBLE_MAT2 = 36678
GL_DOUBLE_VEC4 = 36862
GL_DOUBLE = 5130
GL_DOUBLE_MAT4 = 36680
GL_SAMPLER_2D = 35678
GL_DOUBLE_MAT4x2 = 36685
GL_DOUBLE_MAT2x4 = 36682

---@param type GLType
---@param isMaximal boolean?
---@return number size
function Graphics.glGetComponentSize(type, isMaximal) end

---@return number width
---@return number height
function Graphics.getMainFramebufferSize() end

---@class Bits32 : ffi.cdata*
--- @field __data ffi.cdata*
--- @field __maxidx number
--- @field __resImgRef LuaImageResource

---@param image LuaImageResource
---@return Bits32|integer[] bits32
function Graphics.getBits32(image) end

---@param frameBuffer CaptureBuffer
---@param startPriority number
---@param endPriority number
function Graphics.redirectCameraFB(frameBuffer, startPriority, endPriority) end

---@param width integer
---@param height integer
function Graphics.setMainFramebufferSize(width, height) end

--- **Unimplemented as of SMBX2b5p2.**
--- @deprecated
function Graphics.loadAnimatedImage(...) end

---Draws the given image for a frame at the given coordinates relative to screen space at a given priority.
---@param image LuaImageResource
---@param x number
---@param y number
---@param priority number
function Graphics.drawImageWP(image, x, y, priority) end

---Draws the given image for a frame at the given coordinates relative to screen space at a given priority. Additionally, the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
---@param x number
---@param y number
---@param opacity number
---@param priority number
function Graphics.drawImageWP(image, x, y, opacity, priority) end

---Draws the given image for a frame at the given coordinates relative to screen space at a given priority. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created.
---@param image LuaImageResource
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param priority number
function Graphics.drawImageWP(image, x, y, sourceX, sourceY, sourceWidth, sourceHeight, priority) end

---Draws the given image for a frame at the given coordinates relative to screen space at a given priority. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created. Additionally, the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param opacity number
---@param priority number
function Graphics.drawImageWP(image, x, y, sourceX, sourceY, sourceWidth, sourceHeight, opacity, priority) end

---@param image LuaImageResource?
---@param hue number
function Graphics.glSetTexture(image, hue) end

---@param image LuaImageResource?
---@param hue number
function Graphics.glSetTextureRGBA(image, hue) end

--- Always returns true as of SMBX2b5p2
---@return boolean
function Graphics.isOpenGLEnabled() end

---Draws the given image for a frame at the given coordinates relative to scene space at a given priority.
---@param image LuaImageResource
---@param x number
---@param y number
---@param priority number
function Graphics.drawImageToSceneWP(image, x, y, priority) end

---Draws the given image for a frame at the given coordinates relative to scene space at a given priority. Additionally, the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
---@param x number
---@param y number
---@param opacity number
---@param priority number
function Graphics.drawImageToSceneWP(image, x, y, opacity, priority) end

---Draws the given image for a frame at the given coordinates relative to scene space at a given priority. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created.
---@param image LuaImageResource
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param priority number
function Graphics.drawImageToSceneWP(image, x, y, priority, sourceX, sourceY, sourceWidth, sourceHeight) end

---Draws the given image for a frame at the given coordinates relative to scene space at a given priority. Additionally, a rectangle to draw from the source image can be specified using the source parameters. By varying the parameters across frames, animation can be created. Additionally, the opacity (between 0 and 1) can be specified.
---@param image LuaImageResource
---@param x number
---@param y number
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param opacity number
---@param priority number
function Graphics.drawImageToSceneWP(image, x, y, opacity, priority, sourceX, sourceY, sourceWidth, sourceHeight) end

---@param args table
---@param rtrn table?
---@return table rtrn
function Graphics.__copyDrawTable(args, rtrn) end

--- Removes all placed sprites with the same img resource.
--- @param img LuaImageResource
--- @deprecated
function Graphics.unplaceSprites(img) end

--- Removes all placed sprites with the same img resource and x-pos, y-pos.
--- @param img LuaImageResource
--- @param xPos number
--- @param yPos number
--- @deprecated
function Graphics.unplaceSprites(img, xPos, yPos) end

---@class GL.DrawArgs
--- @field vertexCoords number[] # A list of alternating x and y coordinates used to define the vertices of the drawn primitive.
--- @field primitive PrimitiveType? # The type of primitive to render.
--- @field texture CaptureBuffer|LuaImageResource? # The texture to draw. Can be a capture buffer.
--- @field textureCoords number[]? # A list of alternating x and y coordinates used to define the UV-coordinates of the texture to draw. All coordinates are clamped between 0 (top/left edge of image) and 1 (bottom/right edge of image).
--- @field color Color|RGBA? # Color tint to apply to the whole image.
--- @field vertexColors number[]? # A flat list of RGBA color values for each vertex.
--- @field priority number? # The render priority. Defaults to 1.
--- @field sceneCoords boolean? # Whether to draw to the scene coordinate space. False by default.
--- @field shader Shader? # The shader to use.
--- @field uniforms table<string, number|LuaImageResource|Vector2|Vector3|number[]>? # A table where the key is the name of the uniform and the value is that uniform's value. Table values are converted to arrays for the shader.
--- @field attributes table<string, number[]>? # A table where the key is the name of the attribute and the value is a an array containing all required values. Keep in mind that this is per-vertex, so you the number of values you pass in that array depends on the number for vertices you use.
--- @field target CaptureBuffer? # The render target/capture buffer to draw to.

--- Draws an image according to the values of the named arguments using OpenGL.
---@param args GL.DrawArgs Named arguments for OpenGL rendering.
function Graphics.glDraw(args) end

---@class GL.DrawBoxArgs : GL.DrawArgs
--- @field x number # x-Coordinate.
--- @field y number # y-Coordinate.
--- @field width number? # Width of the drawn image.
--- @field height number? # Height of the drawn image.
--- @field w number? # Width of the drawn image.
--- @field h number? # Height of the drawn image.
--- @field sourceX number? # Left edge of the texture's drawn area.
--- @field sourceY number? # Top edge of the texture's drawn area.
--- @field sourceWidth number? # Width of the texture's drawn area.
--- @field sourceHeight number? # Height of the texture's drawn area.
--- @field rotation number? # Angle of the drawn image.
--- @field centered boolean? # If true, x and y are interpreted as the center of the image.

--- A wrapper for glDraw that makes drawing rectangular images easier.
---@param args GL.DrawBoxArgs Named arguments for rectangular drawing.
function Graphics.drawBox(args) end

---@class GL.DrawScreenArgs : GL.DrawArgs
--- @field camera Camera? # Camera to render to. If none is provided, the first camera is used.
--- @field cam Camera? # Camera to render to. If none is provided, the first camera is used.
--- @field sourceX number? # Left edge of the texture's drawn area.
--- @field sourceY number? # Top edge of the texture's drawn area.
--- @field sourceWidth number? # Width of the segment of the source image section to draw.
--- @field sourceHeight number? # Height of the segment of the source image section to draw.

--- A wrapper for glDraw that makes drawing over the entire screen easier.
---@param args GL.DrawScreenArgs Named arguments for screen-wide drawing.
function Graphics.drawScreen(args) end

---@class GL.DrawLineArgs : GL.DrawArgs
--- @field start Vector2? # Vector (or table with 2 entries) specifying x1 and y1.
--- @field stop Vector2? # Vector (or table with 2 entries) specifying x2 and y2.
--- @field x1 number? # Starting x-coordinate.
--- @field y1 number? # Starting y-coordinate.
--- @field x2 number? # Ending x-coordinate.
--- @field y2 number? # Ending y-coordinate.

--- A wrapper for glDraw that makes drawing lines easier.
---@param args GL.DrawLineArgs Named arguments for line drawing.
function Graphics.drawLine(args) end

---@class GL.DrawCircleArgs : GL.DrawArgs
--- @field x number # x-coordinate at the center of the circle.
--- @field y number # y-coordinate at the center of the circle.
--- @field radius number # Radius of the circle.
--- @field rotation number? # Angle of the circle.
--- @field sourceX number? # Left edge of the texture's drawn area.
--- @field sourceY number? # Top edge of the texture's drawn area.
--- @field sourceWidth number? # Width of the texture's drawn area.
--- @field sourceHeight number? # Height of the texture's drawn area.

--- A wrapper for glDraw that makes drawing circles easier.
---@param args GL.DrawCircleArgs Named arguments for circle drawing.
function Graphics.drawCircle(args) end

---@class GL.BasicDrawArgs
--- @field x number # x-coordinate.
--- @field y number # y-coordinate.
--- @field type RenderType # Drawing type.
--- @field isSceneCoordinates boolean? # Whether to draw to the scene coordinate space. False by default.
--- @field isSceneCoords boolean? # Whether to draw to the scene coordinate space. False by default.
--- @field sceneCoords boolean? # Whether to draw to the scene coordinate space. False by default.
--- @field priority number? # The render priority. Defaults to 1 for images and 3 for text.

---@class GL.TextDrawArgs : GL.BasicDrawArgs
--- @field text string # The text to display.
--- @field fontType number? # The font type to use (between 1 and 4). Font 2 can only display numbers. Defaults to 3.

---@class GL.ImageDrawArgs : GL.BasicDrawArgs
--- @field image LuaImageResource # The texture to draw.
--- @field sourceX number? # Left edge of source image section to draw.
--- @field sourceY number? # Top edge of source image section to draw.
--- @field sourceWidth number? # Width of the segment of the source image section to draw.
--- @field sourceHeight number? # Height of the segment of the source image section to draw.
--- @field opacity number? # Opacity of the image drawn (between 0 and 1).

--- Draws an image or text according to the values of the named arguments.
---@param args GL.TextDrawArgs|GL.ImageDrawArgs Named arguments for drawing images or text.
function Graphics.draw(args) end

--- Represents a capture buffer that can be used as a texture.
---@class CaptureBuffer : LuaImageResource
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
---@field img LuaImageResource

--- Contains references to images currently used by the game.
---@type table<string, SpriteOverride[]>
Graphics.sprites = {}

---@type Shader
Graphics.Shader = nil

---@type string
Graphics.GL_VERSION = nil

---@type string
Graphics.GL_SHADING_LANGUAGE_VERSION = nil

---@type string
Graphics.GL_RENDERER = nil

---@type string
Graphics.GL_VENDOR = nil

Graphics.GL_MAX_ELEMENT_INDEX = -1

---@type number
Graphics.GL_MAX_COMPUTE_WORK_GROUP_COUNT = nil

---@type number
Graphics.GL_MAX_COMPUTE_WORK_GROUP_SIZE = nil

---@alias PrimitiveType
--- | `Graphics.GL_POINTS` # Individual vertices.
--- | `Graphics.GL_LINES` # 2 vertices per line.
--- | `Graphics.GL_LINE_STRIP` # Lines that follow the vertices in order.
--- | `Graphics.GL_LINE_LOOP` # Lines that follow the vertices in order and loop back to the first.
--- | `Graphics.GL_TRIANGLES` # 3 vertices per triangle.
--- | `Graphics.GL_TRIANGLE_FAN` # Number of vertices must be 3 or greater. The first vertex of a triangle fan acts like a hub. The vertices following connect with the previous non-starting vertex and the hub.
--- | `Graphics.GL_TRIANGLE_FAN` # Every 3 adjacent vertices will generate a triangle. Like with triangle fans, the number of vertices must be 3 or greater, but can be any number otherwise. For N vertices in a stream, triangle strips will generate N-2 triangles.

Graphics.HUD_NONE = 0

Graphics.GL_POINTS = 0

Graphics.GL_LINES = 1

---@type number
Graphics.GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = nil

---@type number
Graphics.GL_MAX_SAMPLE_MASK_WORDS = nil

Graphics.HUD_HEARTS = 1

Graphics.HUD_ITEMBOX = 2

Graphics.GL_LINE_LOOP = 2

Graphics.GL_LINE_STRIP = 3

Graphics.GL_MAJOR_VERSION = 4

Graphics.GL_TRIANGLES = 4

Graphics.GL_TRIANGLE_STRIP = 5

Graphics.GL_TRIANGLE_FAN = 6

Graphics.GL_MINOR_VERSION = 6

---@type number
Graphics.GL_MAX_PROGRAM_TEXEL_OFFSET = nil

---@type number
Graphics.GL_MAX_GEOMETRY_ATOMIC_COUNTERS = nil

---@type number
Graphics.GL_MAX_FRAGMENT_ATOMIC_COUNTERS = nil

---@type number
Graphics.GL_MAX_DEPTH_TEXTURE_SAMPLES = nil

---@type number
Graphics.GL_MAX_COMBINED_ATOMIC_COUNTERS = nil

---@type number
Graphics.GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS = nil

---@type number
Graphics.GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS = nil

---@type number
Graphics.GL_MAX_DRAW_BUFFERS = nil

---@type number
Graphics.GL_MAX_COLOR_TEXTURE_SAMPLES = nil

---@type number
Graphics.GL_MAX_INTEGER_SAMPLES = nil

---@type number
Graphics.GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS = nil

---@type number
Graphics.GL_MAX_COMPUTE_ATOMIC_COUNTERS = nil

---@type number
Graphics.GL_MAX_CLIP_DISTANCES = nil

---@type number
Graphics.GL_MAX_VERTEX_ATOMIC_COUNTERS = nil

---@type number
Graphics.GL_MAX_GEOMETRY_UNIFORM_BLOCKS = nil

---@type number
Graphics.GL_MAX_FRAGMENT_UNIFORM_BLOCKS = nil

---@type number
Graphics.GL_MAX_VERTEX_UNIFORM_BLOCKS = nil

---@type number
Graphics.GL_MAX_COMPUTE_UNIFORM_BLOCKS = nil

---@type number
Graphics.GL_MAX_VIEWPORTS = nil

---@type number
Graphics.GL_MAX_FRAMEBUFFER_SAMPLES = nil

---@type number
Graphics.GL_MAX_TEXTURE_LOD_BIAS = nil

---@type number
Graphics.GL_MAX_VERTEX_ATTRIB_BINDINGS = nil

---@type number
Graphics.GL_MAX_VERTEX_ATTRIBS = nil

---@type number
Graphics.GL_MAX_TEXTURE_IMAGE_UNITS = nil

---@type number
Graphics.GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS = nil

---@type number
Graphics.GL_MAX_VARYING_VECTORS = nil

---@type number
Graphics.GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS = nil

---@type number
Graphics.GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = nil

---@type number
Graphics.GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = nil

---@type number
Graphics.GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = nil

---@type number
Graphics.GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = nil

---@type number
Graphics.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = nil

---@type number
Graphics.GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = nil

---@type number
Graphics.GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = nil

---@type number
Graphics.GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = nil

---@type number
Graphics.GL_MAX_DEBUG_GROUP_STACK_DEPTH = nil

---@type number
Graphics.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = nil

---@type number
Graphics.GL_MAX_UNIFORM_BUFFER_BINDINGS = nil

---@type number
Graphics.GL_MAX_COMBINED_UNIFORM_BLOCKS = nil

---@type number
Graphics.GL_MAX_VARYING_COMPONENTS = nil

---@type number
Graphics.GL_MAX_FRAGMENT_INPUT_COMPONENTS = nil

---@type number
Graphics.GL_MAX_VARYING_FLOATS = nil

---@type number
Graphics.GL_MAX_VERTEX_OUTPUT_COMPONENTS = nil

---@type number
Graphics.GL_MAX_GEOMETRY_INPUT_COMPONENTS = nil

---@type number
Graphics.GL_MAX_GEOMETRY_OUTPUT_COMPONENTS = nil

---@type number
Graphics.GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = nil

---@type number
Graphics.GL_MAX_LABEL_LENGTH = nil

---@type number
Graphics.GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS = nil

---@type number
Graphics.GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET = nil

---@type number
Graphics.GL_MAX_ARRAY_TEXTURE_LAYERS = nil

---@type number
Graphics.GL_MAX_3D_TEXTURE_SIZE = nil

---@type number
Graphics.GL_MAX_VERTEX_UNIFORM_VECTORS = nil

---@type number
Graphics.GL_MAX_UNIFORM_LOCATIONS = nil

---@type number
Graphics.GL_MAX_FRAGMENT_UNIFORM_VECTORS = nil

---@type number
Graphics.GL_MAX_FRAMEBUFFER_LAYERS = nil

---@type number
Graphics.GL_MAX_COMPUTE_UNIFORM_COMPONENTS = nil

---@type number
Graphics.GL_MAX_FRAMEBUFFER_WIDTH = nil

---@type number
Graphics.GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = nil

---Returns the maximum dimensions in pixels your PC can handle for textures in glDraw.
---A value of 8192 means that glDraw-based functions will crop larger than 8192 pixels in either axis, be it 10x9000 or 8193x8192.
---@type integer
Graphics.GL_MAX_TEXTURE_SIZE = nil

---@type number
Graphics.GL_MAX_VIEWPORT_DIMS = nil

---@type number
Graphics.GL_MAX_RECTANGLE_TEXTURE_SIZE = nil

---@type number
Graphics.GL_MAX_FRAMEBUFFER_HEIGHT = nil

---@type number
Graphics.GL_MAX_VERTEX_UNIFORM_COMPONENTS = nil

---@type number
Graphics.GL_MAX_GEOMETRY_UNIFORM_COMPONENTS = nil

---@type number
Graphics.GL_MAX_RENDERBUFFER_SIZE = nil

---@type number
Graphics.GL_MAX_CUBE_MAP_TEXTURE_SIZE = nil

---@type number
Graphics.GL_MAX_TEXTURE_BUFFER_SIZE = nil

---@type number
Graphics.GL_MAX_ELEMENTS_INDICES = nil

---@type number
Graphics.GL_MAX_ELEMENTS_VERTICES = nil

---@type number
Graphics.GL_MAX_UNIFORM_BLOCK_SIZE = nil

---@type number
Graphics.GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = nil

---@type number
Graphics.GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = nil

---@type number
Graphics.GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS = nil

---@type number
Graphics.GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = nil

---@type number
Graphics.GL_MAX_SERVER_WAIT_TIMEOUT = nil

---@alias HUDType
--- | `Graphics.HUD_NONE` # Neither hearts nor itembox are used.
--- | `Graphics.HUD_HEARTS` # Heart-based HUD.
--- | `Graphics.HUD_ITEMBOX` # Itembox-based HUD.
