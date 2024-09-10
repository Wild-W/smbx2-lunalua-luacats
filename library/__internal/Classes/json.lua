---@meta _

---@class FileParser
local FileParser = {}

function FileParser.run() end

---@param toLineNumber number
---@return string jsonSubstring
function FileParser.read(toLineNumber) end

---@return number position
function FileParser.tellpos() end

---@return number byte
function FileParser.tryc() end

json = {}

---@param source string|fun()
---@param saxTbl table
---@return FileParser parser
function json.newparser(source, saxTbl) end

---@param json string
---@param position number?
---@param nullValue any?
---@param arrayLength number?
---@return table
function json.decode(json, position, nullValue, arrayLength) end

---@param filename string
---@param saxTbl table
---@return FileParser parser
function json.newfileparser(filename, saxTbl) end

---@param value any
---@param nullValue any?
---@return string
function json.encode(value, nullValue) end
