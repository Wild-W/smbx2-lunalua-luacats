---@meta


---BGOs (background objects) are scenery elements for levels.
BGO = {}

--- Returns a table of references to all BGOs in the level.
--- @return table<number, BGO> bgos A table of all BGOs.
function BGO.get() end

--- Returns a table of references to all BGOs of the given id(s).
--- @param ids number|table<number> The ID(s) of the BGOs to retrieve.
--- @return table<number, BGO> bgos A table of all BGOs with the given ID(s).
function BGO.get(ids) end

--- Returns a table of references to all BGOs that are within the rectangle defined by the 4 coordinates, where x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The x-coordinate of the top-left corner of the rectangle.
--- @param y1 number The y-coordinate of the top-left corner of the rectangle.
--- @param x2 number The x-coordinate of the bottom-right corner of the rectangle.
--- @param y2 number The y-coordinate of the bottom-right corner of the rectangle.
--- @return table<number, BGO> bgos A table of all BGOs within the specified rectangle.
function BGO.getIntersecting(x1, y1, x2, y2) end

--- Returns a table of references to all BGOs of the given id(s). Unlike `get`, the table in this should be formatted as a lookup table, where the BGO indices are the keys.
--- @param idMap table<number, boolean> A lookup table where BGO indices are the keys.
--- @return table<number, BGO> bgos A table of all BGOs with the given ID(s).
function BGO.getByFilterMap(idMap) end

--- Returns an iterator for iterating over a table of references to all BGOs in the level.
--- @return fun():BGO An iterator for all BGOs.
function BGO.iterate() end

--- Returns an iterator for iterating over a table of references to all BGOs of the given id(s).
--- @param ids number|table<number> The ID(s) of the BGOs to retrieve.
--- @return fun():BGO An iterator for all BGOs with the given ID(s).
function BGO.iterate(ids) end

--- Returns an iterator for iterating over a table of references to all BGOs that are within the rectangle defined by the 4 coordinates, where x1 and y1 must be smaller than x2 and y2 respectively.
--- @param x1 number The x-coordinate of the top-left corner of the rectangle.
--- @param y1 number The y-coordinate of the top-left corner of the rectangle.
--- @param x2 number The x-coordinate of the bottom-right corner of the rectangle.
--- @param y2 number The y-coordinate of the bottom-right corner of the rectangle.
--- @return fun():BGO An iterator for all BGOs within the specified rectangle.
function BGO.iterateIntersecting(x1, y1, x2, y2) end

--- Returns an iterator for iterating over a table of references to all BGOs of the given id(s). Unlike `iterate`, the table in this should be formatted as a lookup table, where the BGO indices are the keys.
--- @param idMap table<number, boolean> A lookup table where BGO indices are the keys.
--- @return fun():BGO An iterator for all BGOs with the given ID(s).
function BGO.iterateByFilterMap(idMap) end

---@type table<number, BGOConfig>
BGO.config = {}

---@class BGO
local BGOInstance = {}

--- Transforms the BGO into a BGO of a different ID. Centered defaults to true and will cause the transformation to happen relative to the center of the old and new BGO sizes.
--- @param newID number The new BGO ID.
--- @param centered boolean Whether to transform centered. Defaults to true.
function BGOInstance:transform(newID, centered) end

---@type boolean
BGOInstance.isValid = false

---@type number
BGOInstance.idx = 0

---@type number
BGOInstance.id = 0

---@type table
BGOInstance.data = {}

---@type number
BGOInstance.x = 0

---@type number
BGOInstance.y = 0

---@type number
BGOInstance.width = 0

---@type number
BGOInstance.height = 0

---@type number
BGOInstance.speedX = 0

---@type number
BGOInstance.speedY = 0

---@type Layer
BGOInstance.layer = nil

---@type Layer
BGOInstance.layerObj = nil

---@type string
BGOInstance.layerName = ""

---@type boolean
BGOInstance.isHidden = false

---@type Light
BGOInstance.lightSource = nil
