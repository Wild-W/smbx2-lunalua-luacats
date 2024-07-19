---@meta


---@class VBStr
local VBStr = {}

---Reads/Writes the string pointer.
---
---NOTE: Writing in the string pointer is not safe. You shouldn't write more than the original length of the string or it might crash.
---@type string
VBStr.str = nil

---The length of the string.
---@type integer
VBStr.length = nil

---Clears the string.
function VBStr:clear() end
