---@meta _

---The Cheats class lets you add, remove, modify, deactivate and activate cheat codes in SMBX2. Cheat codes are called by typing in keywords on the keyboard. A list of cheat codes available by default can be found [here](/features/cheats.md).
---@class Cheats
Cheats = {}

--- Gets a reference to the cheat triggered by the provided string. Returns nil if none were found.
--- @param name string The name of the cheat.
--- @return Cheat? foundCheat The found cheat or nil.
function Cheats.get(name) end

--- Gets a reference to the cheat by the cheat's internal ID. Returns nil if none were found.
--- @param id number The internal ID of the cheat.
--- @return Cheat? foundCheat The found cheat or nil.
function Cheats.get(id) end

--- Resets, thus disabling, all cheat codes.
function Cheats.reset() end

--- Triggers a cheat. If the first argument is not a cheat, this function tries to do an internal Cheats.get call to resolve it. The silent argument is optional and will prevent any sounds from playing if true.
--- @param cheat Cheat The cheat to trigger.
--- @param silent boolean Whether to prevent any sounds from playing.
function Cheats.trigger(cheat, silent) end

--- Creates a new cheat.
--- @param name string The name of the cheat.
--- @param args table The arguments for the cheat.
--- @return Cheat createdCheat The created cheat.
function Cheats.register(name, args) end

--- Creates a new cheat group. Cheat groups are cheats that trigger other cheats when triggered. An example is the "holytrinity" cheat, which triggers "jumpman", "shadowstar" and "donthurtme".
--- @param name string The name of the cheat group.
--- @param args table The arguments for the cheat group.
--- @return Cheat createdCheat The created cheat group.
function Cheats.registerGroup(name, args) end

--- Creates a new cheat that transforms the player into a different ID.
--- @param name string The name of the cheat.
--- @param id number The ID to transform the player into.
--- @param args table The arguments for the cheat.
--- @return Cheat createdCheat The created cheat.
function Cheats.registerPlayer(name, id, args) end

--- Deregisters and, if still active, deactivates the cheat's effect. If keepAliases is true, the cheat's aliases are not deleted and one of the aliases becomes the new main.
--- @param name string The name of the cheat.
--- @param keepAliases boolean Whether to keep the aliases.
function Cheats.deregister(name, keepAliases) end

--- Adds an alias to an existing cheat.
--- @param name string The name of the cheat.
--- @param alias string The alias to add.
function Cheats.addAlias(name, alias) end

--- Returns a list of all cheat names.
--- @return table<number, string> allCheats A list of all cheat names.
function Cheats.listCheats() end

---@type boolean
Cheats.enabled = true

---@class Cheat
local Cheat = {}

--- Triggers this cheat. The silent argument is optional and will prevent any sounds from playing if true.
--- @param silent boolean Whether to prevent any sounds from playing.
--- @return nil
function Cheat:trigger(silent) end

---@type number
Cheat.id = 0

---@type table<number, string>
Cheat.aliases = {}
