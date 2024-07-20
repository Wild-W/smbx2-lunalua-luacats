---@meta


FileFormats = {}

---@type userdata
FileFormats.LevelData = nil

---@type userdata
FileFormats.LevelDoor = nil

---@type userdata
FileFormats.LevelEvent_Sets = nil

---@type userdata
FileFormats.LevelNPC = nil

---@type userdata
FileFormats.LevelPhysEnv = nil

---@type userdata
FileFormats.LevelSection = nil

---@type userdata
FileFormats.WorldData = nil

---@type userdata
FileFormats.LevelBGO = nil

---@param ... unknown
---@return ...
function FileFormats.openWorld(...) end

---@param ... unknown
---@return ...
function FileFormats.getLevelData(...) end

---@param ... unknown
---@return ...
function FileFormats.openLevelHeader(...) end

---@param ... unknown
---@return ...
function FileFormats.openWorldHeader(...) end

---@param ... unknown
---@return ...
function FileFormats.openLevel(...) end

---@param ... unknown
---@return ...
function FileFormats.openNpcConfig(...) end