---@meta


---Used by the `Graphics.draw` function to specify whether text or an image is being drawn.
---@alias RenderType
---| `RTYPE_TEXT` # Text is being drawn, unlocking the text and fontType named args.
---| `RTYPE_IMAGE` # An Image is being drawn, unlocking the image, sourceX, sourceY, sourceWidth, sourceHeight and opacity named args.

---Text is being drawn, unlocking the text and fontType named args.
RTYPE_TEXT = 1
---An Image is being drawn, unlocking the image, sourceX, sourceY, sourceWidth, sourceHeight and opacity named args.
RTYPE_IMAGE = 0