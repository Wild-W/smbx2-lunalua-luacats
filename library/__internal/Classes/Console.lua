---@meta _

---The console namespace lets you print text to the console. The console is enabled through [command line arguments](https://docs.codehaus.moe/#/features/command-line) when starting the game. The default instance of the console window is called "console".
---@class Console
console = {}
---Prints the text to the console window.
---@param text string
function console:print(text) end
---Prints the text to the console window and adds a linebreak (`\n`).
---@param text string
function console:println(text) end
