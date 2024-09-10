---@meta _

API = {}

---@param thisTable table
---@param event EventName
---@param eventHandler EventName?
---@param beforeMainCall boolean?
function API.addHandler(thisTable, event, eventHandler, beforeMainCall) end

---@param api table
---@return boolean
function API.isLoaded(api) end

---@return boolean
function API.isLoadingShared() end

---Loads the library packagename.lua and shares it with lunadll.lua and lunaworld.lua unless `loadShared` is `false`. **Do load it outside every other function! (Recommended at the top of your scriptfile).**
---@param packageName string
---@param loadShared boolean?
---@return table api
---@return boolean newLoaded `false` if the library is already loaded
---@deprecated Use "require" for SMBX2 Beta 4 or later
function API.load(packageName, loadShared) end

---@param apiTable table
---@param event EventName
---@param eventHandler EventName?
function API.remHandler(apiTable, event, eventHandler) end
