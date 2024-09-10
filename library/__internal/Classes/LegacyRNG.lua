---@meta _

---@class LegacyRNG
LegacyRNG = {}

---Generates a random decimal number between 0 (inclusive) and 1 (exclusive) with the SMBX 1.3 RNG.
---@return number randomValue
function LegacyRNG.generateNumber() end

---Returns the last number generated with the SMBX 1.3 RNG.
---@return number lastValue
function LegacyRNG.getLastGeneratedNumber() end

---@type integer The seed of the SMBX 1.3 RNG represented as a 24bit integer.
LegacyRNG.seed = nil
