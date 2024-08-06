---@meta

local textplus = {}

---Performs layout (i.e. wrapping) of formatted text
---@param input unknown?
---@param maxWidth unknown?
---@param fmt unknown?
---@param customTags unknown?
---@param customAutoSelfClosingTags unknown?
---@return unknown
function textplus.layout(input, maxWidth, fmt, customTags, customAutoSelfClosingTags) end

---Function for loading a font from ini file
---@param filename unknown?
---@return ...
function textplus.loadFont(filename) end

---Parses input text with specified formatting data
---@param text unknown?
---@param fmt unknown?
---@param customTags unknown?
---@param customAutoSelfClosingTags unknown?
---@return table
function textplus.parse(text, fmt, customTags, customAutoSelfClosingTags) end

---Convenience function to parse/layout/render text all at once. Accepts all parameters as named
--- arguments, and extra named arguments will be treated as formatting data.
---@param args unknown?
---@return ...
function textplus.print(args) end

---Renders a text layout
---@param args unknown?
---@return ...
function textplus.render(args) end

---Function to turn a UTF-8 string into a table of character codes.
---@param input unknown?
---@return ...
function textplus.strToCodes(input) end

---
---@type table
textplus.settings = nil

---
---@type string
textplus.version = nil

return textplus
