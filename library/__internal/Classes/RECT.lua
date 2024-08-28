---@meta _

---Rects are rectangle definitions. They are most prominently used by sections.
---## Usage
---Since the individual fields of the rectangle are number values,
---setting rects must be done by overwriting the entire rect, like so:
---```
---local sec0 = Section(0)
---local sectionBounds = sec0.boundary
---sectionBounds.left = player.x - 400
---sectionBounds.right = sectionBounds.left + 800
---sec0.boundary = sectionBounds
---```
---@class RECT
---@field left number # The left edge of the rectangle.
---@field right number # The right edge of the rectangle.
---@field top number # The top edge of the rectangle.
---@field bottom number # The bottom edge of the rectangle.

---@class RECTd : RECT

---@return RECT
function newRECT() end

---@return RECTd
function newRECTd() end
