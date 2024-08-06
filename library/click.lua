---@meta

local click = {}

---x y (x2 y2) width height | scene useXY2
---@param table unknown?
---@return boolean
function click.box(table) end

---x y radius | scene
---@param table unknown?
---@return boolean
function click.circle(table) end

---
---@return integer
function click.getCursorID() end

---{{img}, priority, Xoffset, Yoffset, framespeed}
---@param table unknown?
---@return ...
function click.loadCursor(table) end

---
---@return ...
function click.onDraw() end

---
---@return ...
function click.onInitAPI() end

---
---@param num unknown?
---@return ...
function click.setCursorID(num) end

---
---@type boolean
click.click = nil

---
---@type unknown
click.defaultImg = nil

---
---@type table
click.dragBox = nil

---
---@type boolean
click.dragBox.active = nil

---
---@type integer
click.dragBox.bottom = nil

---
---@type number
click.dragBox.diagonal = nil

---
---@type integer
click.dragBox.frames = nil

---
---@type integer
click.dragBox.height = nil

---
---@type integer
click.dragBox.left = nil

---
---@type integer
click.dragBox.right = nil

---
---@type integer
click.dragBox.startX = nil

---
---@type integer
click.dragBox.startY = nil

---
---@type integer
click.dragBox.top = nil

---
---@type integer
click.dragBox.width = nil

---
---@type boolean
click.hold = nil

---
---@type boolean
click.released = nil

---
---@type integer
click.sceneX = nil

---
---@type integer
click.sceneY = nil

---
---@type integer
click.speedX = nil

---
---@type integer
click.speedY = nil

---
---@type boolean
click.state = nil

---
---@type integer
click.x = nil

---
---@type integer
click.y = nil

return click
