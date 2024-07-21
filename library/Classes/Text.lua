---@meta


Text = {}

--- Writes `debugText` in a message box and shows it to the user.
--- @param debugText string
--- @deprecated Use `Misc.dialog` instead.
function Text.windowDebug(debugText) end

---@param ... unknown
function Text.windowDebugSimple(...) end

--- Prints text relative to screen space coordinates with font type 3. The text does not have to be explicitly converted into a string in order to be displayed.
---@param text any The text object or any object that can be converted to a string.
---@param x number The x-coordinate on the screen.
---@param y number The y-coordinate on the screen.
function Text.print(text, x, y) end

--- Prints text relative to screen space coordinates. The text does not have to be explicitly converted into a string in order to be displayed. The type argument determines the font to use and can be a number between 1 and 4. Type 1 only renders numbers, Type 2 is the black world map font, Type 3 is the default, and Type 4 is all white and used for message boxes.
---@param text any The text object or any object that can be converted to a string.
---@param type number The font type.
---@param x number The x-coordinate on the screen.
---@param y number The y-coordinate on the screen.
function Text.print(text, type, x, y) end

--- Prints text relative to screen space coordinates with a specified render priority. The text does not have to be explicitly converted into a string in order to be displayed.
---@param text any The text object or any object that can be converted to a string.
---@param x number The x-coordinate on the screen.
---@param y number The y-coordinate on the screen.
---@param priority number The render priority.
function Text.printWP(text, x, y, priority) end

--- Prints text relative to screen space coordinates with a specified render priority and font type. The type argument determines the font to use and can be a number between 1 and 4. Type 1 only renders numbers, Type 2 is the black world map font, Type 3 is the default, and Type 4 is all white and used for message boxes.
---@param text any The text object or any object that can be converted to a string.
---@param type number The font type.
---@param x number The x-coordinate on the screen.
---@param y number The y-coordinate on the screen.
---@param priority number The render priority.
function Text.printWP(text, type, x, y, priority) end

--- Displays a SMBX message dialog with the given text.
---@param text string The text to display in the message box.
function Text.showMessageBox(text) end

--- Returns the size the text would have if displayed with the given type.
---@param text any The text object or any object that can be converted to a string.
---@param type number The font type to use.
---@return number width The width of the text.
---@return number height The height of the text.
function Text.getSize(text, type) end
