---@meta _

---@param filename string Name of the file that the created logger will output to. Placed in the local directory for the level.
---@return Logger
function Logger(filename) end

---@class Logger: LuaHelperClass
local Logger = {}

---@param message string The message that is outputted. Will append a newline.
function Logger:write(message) end
