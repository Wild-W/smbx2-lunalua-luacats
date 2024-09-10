---@meta _

---The UserData-Namespace gives your access to the variable bank. With variable bank you can save number-values for other levels and when the game closes.
---@deprecated
UserData = {}

---Sets a number-value by a specific key
---@deprecated
---@param key string
---@param value number
---@diagnostic disable-next-line: deprecated
function UserData.setValue(key, value) end

---Gets a number-value by a specific key. If value is not set then nil is returned.
---@deprecated
---@param key string
---@return number?
---@diagnostic disable-next-line: deprecated
function UserData.getValue(key) end

---If value is not set then `false` is returned. Otherwise `true`.
---@deprecated
---@param key string
---@return boolean
---@diagnostic disable-next-line: deprecated
function UserData.isValueSet(key) end

---Returns a table with all mapped values of the variable bank.
---@deprecated
---@return table<string, number> mappedValues
---@diagnostic disable-next-line: deprecated
function UserData.values() end

---Writes all the data in the variable txt-file.
---@diagnostic disable-next-line: deprecated
function UserData.save() end
