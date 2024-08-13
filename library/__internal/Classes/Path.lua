---@meta

--- Provides methods and properties for managing path objects on the overworld.
Path = {}

--- Returns the number of path objects on the overworld.
--- @return number amount How many path objects are on the overworld.
function Path.count() end

--- Returns all path objects on the overworld.
--- @return Path[] paths A table of all path objects.
function Path.get() end

--- Returns all path objects with the matching item IDs.
--- @param ids number|number[] The ID or IDs to match.
--- @return Path[] paths table of path objects with the matching IDs.
function Path.get(ids) end

--- Returns all path objects intersecting with a specified area.
--- @param x1 number The x-coordinate of the top-left corner of the area.
--- @param y1 number The y-coordinate of the top-left corner of the area.
--- @param x2 number The x-coordinate of the bottom-right corner of the area.
--- @param y2 number The y-coordinate of the bottom-right corner of the area.
--- @return Path[] paths A table of path objects intersecting the specified area.
function Path.getIntersecting(x1, y1, x2, y2) end

---@class Path : userdata
--- @field id number The ID of the path object. Different IDs can be used to distinguish path types.
--- @field x number The x position of the path object on the overworld.
--- @field y number The y position of the path object on the overworld.
--- @field width number The width of the path object.
--- @field height number The height of the path object.
--- @field visible boolean Whether the path object is visible or not.
--- @field isValid boolean Whether the path object is a valid object. This should be checked especially in dynamic contexts where objects might be deleted.
local Path = {}
