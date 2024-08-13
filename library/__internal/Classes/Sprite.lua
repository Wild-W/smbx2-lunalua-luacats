---@meta

-- This file needs a lot of work.

---The Sprite class is designed for more in-depth drawing functions, without the use of Graphics.glDraw. It is used to create objects that can be moved, rotated, animated, stretched, and applied to an object hierarchy using Transforms.
---@class SpriteManager
Sprite = {}

Sprite.barscale = {}

Sprite.barscale.BOTH = 0
Sprite.barscale.HORIZONTAL = 1
Sprite.barscale.VERTICAL = -1

Sprite.align = {}

---@type Vector2
Sprite.align.LEFT = nil

---@type Vector2
Sprite.align.BOTTOMRIGHT = nil

---@type Vector2
Sprite.align.CENTER = nil

---@type Vector2
Sprite.align.MIDDLE = nil

---@type Vector2
Sprite.align.TOP = nil

---@type Vector2
Sprite.align.BOTTOMLEFT = nil

---@type Vector2
Sprite.align.TOPLEFT = nil

---@type Vector2
Sprite.align.TOPRIGHT = nil

---@type Vector2
Sprite.align.RIGHT = nil

---@type Vector2
Sprite.align.CENTRE = nil

---@type Vector2
Sprite.align.BOTTOM = nil

---Creates a new Sprite object. The supplied arguments will determine the shape of the object.
---@param args table
---@return Sprite sprite
function Sprite(args) end

---Creates a new Progress Bar.
---@param args table
---@return SpriteBar bar
function Sprite.bar(args) end

---Creates a new Box-shaped Sprite object
---@param args table
---@return Sprite sprite
function Sprite.box(args) end

---Creates and draws a Sprite object immediately. This function is slow and is not recommended. Sprite.box is preferred for almost all use cases. This function accepts all arguments from Graphics.glDraw (see Graphics) with the exception of: vertexCoords, textureCoords, texture, and primitive.
---@param args table
function Sprite.draw(args) end

---Creates a new Poly-shaped Sprite object.
---@param args table
---@return Sprite sprite
function Sprite.poly(args) end

---Creates a new Circle-shaped Sprite object.
---@param args table
---@return Sprite sprite
function Sprite.circle(args) end

-- TODO: Fix implementation for Sprite & Transform

---`Sprite` doesn't actually implement all of `Transform`, just [these methods](https://docs.codehaus.moe/#/reference/sprite#instance-methods)
---@class Sprite : Transform
--- @field x number The local x coordinate of the Sprite.
--- @field y number The local y coordinate of the Sprite.
--- @field position Vector2 The local position of the Sprite.
--- @field rotation number The local rotation of the Sprite, in degrees.
--- @field scale Vector2 The local scale of the Sprite.
--- @field texture Texture The image displayed on the Sprite.
--- @field image Texture The image displayed on the Sprite.
--- @field width number The width of a Box-shaped Sprite.
--- @field height number The height of a Box-shaped Sprite.
--- @field radius number The radius of a Circle-shaped Sprite.
--- @field verts Vector2[] A list of vertices in a Poly-shaped Sprite.
--- @field wposition Vector2 The global position of the Sprite. Can only by modified by directly assigning to the field.
--- @field wrotation number The global rotation of the Sprite, in degrees.
--- @field wscale Vector2 The global scale of the Sprite. Can only by modified by directly assigning to the field.
--- @field pivot Vector2 The relative pivot position of the Sprite object (between (0,0) and (1,1)). This is unused in Poly-shaped Sprite objects.
--- @field align Vector2 The relative pivot position of the Sprite object (between (0,0) and (1,1)). This is unused in Poly-shaped Sprite objects.
--- @field texpivot Vector2 The relative pivot position of the texture on the Sprite (between (0,0) and (1,1)).
--- @field texalign Vector2 The relative pivot position of the texture on the Sprite (between (0,0) and (1,1)).
--- @field bordertexture Texture The image displayed on the Sprite's border, if one exists. This is unused in Poly-shaped Sprite objects.
--- @field borderimage Texture The image displayed on the Sprite's border, if one exists. This is unused in Poly-shaped Sprite objects.
--- @field borderwidth number The width of the Sprite border. 0 can be used to disable the border entirely. This is unused in Poly-shaped Sprite objects.
--- @field frames number|number[] The number of frames the texture contains. If assigned to a single number, the frames will be assumed to stack vertically. Otherwise, if a two-number table is assigned, the first number will provide the horizontal frame count and the second will provide the vertical frame count.
--- @field transform Transform The Transform object that defines the Sprite's position, rotation, and scale.
--- @field textransform Transform The Transform object that defines the texture's position, rotation, and scale on the Sprite.
--- @field vertexCount number The number of vertices in the Sprite object.
--- @field texposition Vector2 The relative position of the texture within the Sprite.
--- @field texrotation number The relative rotation of the texture within the Sprite, in degrees.
--- @field texscale Vector2 The relative size of the texture within the Sprite, in pixels.
--- @field texwposition Vector2 The global position of the texture within the Sprite. Can only by modified by directly assigning to the field.
--- @field texwrotation number The global rotation of the texture within the Sprite, in degrees.
--- @field texwscale Vector2 The global size of the texture within the Sprite, in pixels. Can only by modified by directly assigning to the field.
--- @field parent Transform The parent Transform object of the Sprite. Will be nil if no parent exists.
--- @field up Vector2 The local "up" vector of the Sprite. Can only by modified by directly assigning to the field.
--- @field right Vector2 The local "right" vector of the Sprite. Can only by modified by directly assigning to the field.
--- @field wup Vector2 The global "up" vector of the Sprite. Can only by modified by directly assigning to the field.
--- @field wright Vector2 The global "right" vector of the Sprite. Can only by modified by directly assigning to the field.
--- @field siblingIdx number The sibling index of the Sprite in its parent Transform's child list.
--- @field root Transform The topmost parent Transform in the scene hierarchy.
local Sprite = {}

---Gets the number of vertices in this `Sprite` object.
---@return number vertices
function Sprite.getVertexCount() end

---Draws the Sprite object to the screen. This function accepts all arguments from Graphics.glDraw (see Graphics) with the exception of: vertexCoords, textureCoords, texture, and primitive
---@param args table
function Sprite.draw(args) end

---@class SpriteBar : Sprite
---@field bgbordertexture Texture? The image displayed on the Bar background's border. If set to `nil`, the `bgtexture` field will be used.
---@field bgborderimage Texture? The image displayed on the Bar background's border. If set to `nil`, the `bgtexture` field will be used.
---@field bgtexture Texture The image displayed on the Bar background.
---@field bgimage Texture The image displayed on the Bar background.
