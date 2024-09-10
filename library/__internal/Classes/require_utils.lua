---@meta _

require_utils = {}

---@param context _G
---@param extraFields table?
function require_utils.makeEnvironment(context, extraFields) end

---@param context _G
---@param extraFields table?
function require_utils.makeGlobalContext(context, extraFields) end

---@param path string
---@param globalTable table?
---@param loadedTable table?
---@param shareGlobals boolean?
---@param assignRequire boolean?
---@param loadCallback boolean?
---@param fallbackRequire (fun(modname: string): unknown)?
---@param environmentCallback fun(name: string, environment: _G)?
---@param debugstats fun(str: string)?
---@param returnpath boolean?
---@return (fun(modname: string): unknown), packagelib
function require_utils.makeRequire(
    path, globalTable, loadedTable, shareGlobals,
    assignRequire, loadCallback, fallbackRequire, environmentCallback,
    debugstats, returnpath) return require, package end

---@param path string
---@param relBase string?
---@return string normalizedPath
function require_utils.normalizeRelPath(path, relBase) end

---@param path string
---@return boolean
function require_utils.isAbsolutePath(path) end
