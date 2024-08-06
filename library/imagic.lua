---@meta

local imagic = {}

---Create a border image layout, allowing custom segmentation of an image. Values are measured in image-space pixels.
---Box-type borders will use 8 segments, circle-type borders will use the middle top segment. By default, the image will be segmented into thirds.
---## Usage
---```lua
---local img = imagic.BorderImage{texture = myImage, width = 8, top = 4}
---imagic.Box{x = 0, y = 0, width = 10, height = 10, borderwidth = 8, bordertexture = img}
---```
---@param args unknown?
---@return table
function imagic.BorderImage(args) end

---Create a physical border layout, allows variable width for box-type borders. At least one argument must be given.
---## Usage
---```lua
---local layout = imagic.BorderLayout{width = 8, top = 4}
---imagic.Box{x = 0, y = 0, width = 10, height = 10, borderwidth = layout}
---```
---@param args unknown?
---@return table
function imagic.BorderLayout(args) end

---Creates a Box wrapper object. (Equivalent to `imagic.Wrapper(imagic.TYPE_BOX, args)`)
---@param args unknown?
---@return table
function imagic.Box(args) end

---Creates a Circle wrapper object. (Equivalent to `imagic.Wrapper(imagic.TYPE_CIRCLE, args)`)
---@param args unknown?
---@return table
function imagic.Circle(args) end

---Creates a Polygon wrapper object. (Equivalent to `imagic.Wrapper(imagic.TYPE_POLY, args)`)
---@param args unknown?
---@return table
function imagic.Poly(args) end

---Creates a Triangle wrapper object. (Equivalent to `imagic.Wrapper(imagic.TYPE_TRI, args)`)
---@param args unknown?
---@return table
function imagic.Tri(args) end

---Creates a wrapper object with the given primitive.
---@param primitive unknown?
---@param args unknown?
---@return table
function imagic.Wrapper(primitive, args) end

---Specialised drawing of a progress bar.
---@param args unknown?
---@return ...
function imagic.bar(args) end

---Creates a vertex buffer object.
---@param args unknown?
---@return table
function imagic.create(args) end

---Instantly draws an image without creating a vertex buffer @{Object}.
---@param args unknown?
---@return ...
function imagic.draw(args) end

---
---@type integer
imagic.ALIGN_BOTTOM = nil

---
---@type integer
imagic.ALIGN_BOTTOMCENTER = nil

---
---@type integer
imagic.ALIGN_BOTTOMCENTRE = nil

---
---@type integer
imagic.ALIGN_BOTTOMLEFT = nil

---
---@type integer
imagic.ALIGN_BOTTOMMIDDLE = nil

---
---@type integer
imagic.ALIGN_BOTTOMRIGHT = nil

---
---@type integer
imagic.ALIGN_CENTER = nil

---
---@type integer
imagic.ALIGN_CENTERLEFT = nil

---
---@type integer
imagic.ALIGN_CENTERRIGHT = nil

---
---@type integer
imagic.ALIGN_CENTRE = nil

---
---@type integer
imagic.ALIGN_CENTRELEFT = nil

---
---@type integer
imagic.ALIGN_CENTRERIGHT = nil

---
---@type integer
imagic.ALIGN_LEFT = nil

---
---@type integer
imagic.ALIGN_MIDDLE = nil

---
---@type integer
imagic.ALIGN_MIDDLELEFT = nil

---
---@type integer
imagic.ALIGN_MIDDLERIGHT = nil

---
---@type integer
imagic.ALIGN_RIGHT = nil

---
---@type integer
imagic.ALIGN_TOP = nil

---
---@type integer
imagic.ALIGN_TOPCENTER = nil

---
---@type integer
imagic.ALIGN_TOPCENTRE = nil

---
---@type integer
imagic.ALIGN_TOPLEFT = nil

---
---@type integer
imagic.ALIGN_TOPMIDDLE = nil

---
---@type integer
imagic.ALIGN_TOPRIGHT = nil

---
---@type function
imagic.Bar = nil

---
---@type function
imagic.Create = nil

---
---@type number
imagic.DEG2RAD = nil

---
---@type function
imagic.Draw = nil

---
---@type number
imagic.RAD2DEG = nil

---
---@type integer
imagic.TEX_FILL = nil

---
---@type integer
imagic.TEX_PLACE = nil

---
---@type integer
imagic.TYPE_BOX = nil

---
---@type integer
imagic.TYPE_BOXBORDER = nil

---
---@type integer
imagic.TYPE_CIRCLE = nil

---
---@type integer
imagic.TYPE_CIRCLEBORDER = nil

---
---@type integer
imagic.TYPE_POLY = nil

---
---@type integer
imagic.TYPE_TRI = nil

return imagic
