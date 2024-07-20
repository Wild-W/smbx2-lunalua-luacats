---@meta


---@class LuaImageResource
---@field width integer The image width.
---@field height integer the image height.


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