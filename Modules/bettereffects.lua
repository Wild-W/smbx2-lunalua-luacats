---@meta


---Bettereffects is the library managing X2-specific [effects](https://docs.codehaus.moe/#/reference/effect). In some cases, it is necessary to load bettereffects, as Effect.get and its sibling functions are currently restricted to 1.3 effects.
local bfx = {}


-- Set this to false to enable the full overriding of vanilla effect support (experimental)
bfx.restricted = true

function ParseIni(path, id, fdef) end

function bfx.onInitAPI() end

--postpone loading to onStart to allow custom defined imports
function bfx.onStart() end

---Returns all effect spawners with specified IDs if supplied.
---@param id number|number[]?
---@return EffectSpawner
function bfx.getEffectSpawners(id) end

---Returns all effect particles with specified IDs if supplied.
---@param id number|number[]?
---@return EffectParticle
function bfx.getEffectObjects(id) end

function bfx.onInit(fx) end

function bfx.onTickEnd() end

function bfx.onDraw() end

function bfx.onRunEffectInternal(eventObj, id, coords, variant, npcID, drawOnlyMask) end

return bfx