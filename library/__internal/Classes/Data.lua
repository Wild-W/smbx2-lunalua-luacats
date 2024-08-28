---@meta _
---@diagnostic disable: deprecated

---@deprecated Use `GameData` or `SaveData` instead.
Data = {}

---Data location: This data will be saved in the level custom folder and can be only accessed by the current level.
Data.DATA_LEVEL = 0
---Data location: This data will be saved in the episode folder and can be only accessed by the current world or level.
Data.DATA_WORLD = 1
---Data location: This data will be saved in the {SMBX-Path}/worlds folder and can be accessed from every world or level.
Data.DATA_GLOBAL = 2

---@alias DataType
---|`Data.DATA_LEVEL`
---|`Data.DATA_WORLD`
---|`Data.DATA_GLOBAL`

---## Usage
---```lua
---local myLevelData = Data(Data.DATA_LEVEL, "myData")
---```
---@param dataType DataType
---@param key string
---@return Data
---@deprecated Use `GameData` or `SaveData` instead.
function Data(dataType, key) end

---@param dataType DataType
---@param key string
---@param useSaveSlot boolean
---@return Data
---@deprecated Use `GameData` or `SaveData` instead.
function Data(dataType, key, useSaveSlot) end

---@param dataType DataType
---@param key string
---@param sectionName string
---@return Data
---@deprecated Use `GameData` or `SaveData` instead.
function Data(dataType, key, sectionName) end

---@param dataType DataType
---@param key string
---@param sectionName string
---@param useSaveSlot boolean
---@return Data
---@deprecated Use `GameData` or `SaveData` instead.
function Data(dataType, key, sectionName, useSaveSlot) end

---@class Data
local Data = {}

---Returns a table with a copy of the content. The key is the table-index while the value is the table-value. Use the tonumber() function to convert a string into a number.
---@param key string
---@return table<string, string>
function Data:get(key) end

---Sets a value in the Data class. Use the tostring() function if you want to save a number.
---@param key string
---@param value string
function Data:set(key, value) end

---Saves the data.
function Data:save() end

---Saves the data and sets a new section name.
---@param sectionName string
function Data:save(sectionName) end

---@type DataType The save location of the data.
Data.dataType = nil

---@type string The section name of the data.
Data.sectionName = nil

---@type boolean If the save slot number should be used when saving.
Data.useSaveSlot = nil
