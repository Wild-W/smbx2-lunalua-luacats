---@meta _

---The musicbox class lets you access musicbox objects on the overworld.
Musicbox = {}

--- Returns the number of musicbox items.
--- @return number amount The number of musicbox items.
function Musicbox.count() end

--- Returns a table of all musicbox items.
--- @return Musicbox[] musicBoxes A table of all musicbox items.
function Musicbox.get() end

--- Returns a table of all musicbox items of the matching IDs.
--- @param ids number|table<number> The ID or IDs to match.
--- @return Musicbox[] musicBoxes A table of musicbox items matching the IDs.
function Musicbox.get(ids) end

--- Returns a table of all musicbox items within the rectangle defined between (x1, y1) (top-left) and (x2, y2) (bottom right).
--- @param x1 number The x-coordinate of the top-left corner of the rectangle.
--- @param y1 number The y-coordinate of the top-left corner of the rectangle.
--- @param x2 number The x-coordinate of the bottom right corner of the rectangle.
--- @param y2 number The y-coordinate of the bottom right corner of the rectangle.
--- @return Musicbox[] musicBoxes A table of musicbox items within the specified rectangle.
function Musicbox.getIntersecting(x1, y1, x2, y2) end

---@class Musicbox : userdata
--- @field id number ID of the musicbox item. Different IDs play different music.
--- @field x number X-Coordinate of the musicbox item.
--- @field y number Y-Coordinate of the musicbox item.
--- @field width number Width of the musicbox item.
--- @field height number Height of the musicbox item.
--- @field isValid boolean Whether or not the musicbox item is a valid object. Should be used when retrieving the object from a self-made variable on ticks after the frame Musicbox.get was used to retrieve it. (Read-only)
--- @field idx number The musicbox's index within the internal list of musicboxes. (Read-only)
local Musicbox = {}
