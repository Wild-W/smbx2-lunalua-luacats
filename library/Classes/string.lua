---@meta

---Trims leading and trailing whitespace
---@param s string
---@return string trimmedString
function string.trim(s) end

---Splits the string given the given pattern.
---@param s string
---@param pattern string
---@param exclude boolean
---@param plain boolean # If `false`, regex pattern matching is enabled for the pattern.
---@return string[] trimmedStrings
function string.split(s, pattern, exclude, plain) end

---Compares the length and lexical order of the given strings. If a is longer than b, or a is lexically greater, 1 is returned. If the two are equal, 0 is returned. Else, -1 is returned.
---@param a string
---@param b string
---@return number|-1|0|1 ratio
function string.compare(a, b) end
string.__lt = string.compare
