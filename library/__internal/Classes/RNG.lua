---@meta _

---The RNG namespace provides functions for generating randomness. Unlike lua's standard randomness, RNG defaults to a random, unpredictable seed.
---## Usage
---```lua
---function onStart()
---    local randomValue = RNG.random()
---    Misc.dialog(randomValue)
---end
---```
RNG = {}

---The seed of global RNG.
---@type number
RNG.seed = nil

---Random perlin noise generator a random seed and default values
---@type Perlin
RNG.Perlin = nil

--- Generates a random decimal number between 0 and 1 (inclusive).
---@return number randomValue The generated random value.
function RNG.random() end

--- Generates a random decimal number between 0 and the specified limit (inclusive).
---@param limit number The upper limit for the random number.
---@return number randomValue The generated random value.
function RNG.random(limit) end

--- Generates a random decimal number between two limits (inclusive).
---@param lowerLimit number The lower limit for the random number.
---@param upperLimit number The upper limit for the random number.
---@return number randomValue The generated random value between the specified limits.
function RNG.random(lowerLimit, upperLimit) end

--- Generates a random integer number between 0 and 1 (inclusive).
---@return number randomValue The generated random integer value.
function RNG.randomInt() end

--- Generates a random integer number between 0 and the specified limit (inclusive).
---@param limit number The upper limit for the random integer number.
---@return number randomValue The generated random integer value.
function RNG.randomInt(limit) end

--- Generates a random integer number between two limits (inclusive).
---@param lowerLimit number The lower limit for the random integer number.
---@param upperLimit number The upper limit for the random integer number.
---@return number randomValue The generated random integer value between the specified limits.
function RNG.randomInt(lowerLimit, upperLimit) end

--- Picks a random element in the given table.
---@generic T
---@param table table<any, `T`> The table from which a random element is picked.
---@return T randomEntry The random element picked from the table.
function RNG.randomEntry(table) end

--- Picks a random element in the given table, assuming the table is an array with no named fields and no gaps.
---@generic T
---@param table `T`[] The table from which a random element is picked.
---@return T randomEntry The random element picked from the table.
function RNG.irandomEntry(table) end

--- Generates a random letter, A-Z, either upper case or lower case.
---@return string char The generated random letter.
function RNG.randomChar() end

--- Generates a random letter, A-Z, with case depending on the passed argument.
---@param uppercase boolean If true, generates an upper case letter; otherwise, a lower case letter.
---@return string char The generated random letter.
function RNG.randomChar(uppercase) end

--- Generates a random letter between A and the specified letter. The range is based on ASCII codes.
---@param limit string The upper limit letter for the random letter generation.
---@return string char The generated random letter between A and the specified limit.
function RNG.randomChar(limit) end

--- Generates a random letter between two specified letters. The range is based on ASCII codes.
---@param lowerLimit string The lower limit letter for the random letter generation.
---@param upperLimit string The upper limit letter for the random letter generation.
---@return string char The generated random letter between the specified limits.
function RNG.randomChar(lowerLimit, upperLimit) end

--- Creates a new instanced RNG object based on the current system time.
---@return RNG rng The new RNG instance.
function RNG.new(seed) end

--- Creates a new instanced RNG object with a specific seed.
---@param seed number The seed value to initialize the RNG.
---@return RNG rng The new RNG instance with the specified seed.
function RNG.new(seed) end

--- The RNG class in Lua, providing various methods for generating random numbers and elements.
---@class RNG
local RNG = {
	---@type integer
	[1] = nil,
	---@type integer
	[2] = nil,
}

--- Generates a random decimal number between 0 and 1 (inclusive).
---@return number randomValue The generated random value.
function RNG:random() end

--- Generates a random decimal number between 0 and the specified limit (inclusive).
---@param limit number The upper limit for the random number.
---@return number randomValue The generated random value.
function RNG:random(limit) end

--- Generates a random decimal number between two limits (inclusive).
---@param lowerLimit number The lower limit for the random number.
---@param upperLimit number The upper limit for the random number.
---@return number randomValue The generated random value between the specified limits.
function RNG:random(lowerLimit, upperLimit) end

--- Generates a random integer number between 0 and 1 (inclusive).
---@return number randomValue The generated random integer value.
function RNG:randomInt() end

--- Generates a random integer number between 0 and the specified limit (inclusive).
---@param limit number The upper limit for the random integer number.
---@return number randomValue The generated random integer value.
function RNG:randomInt(limit) end

--- Generates a random integer number between two limits (inclusive).
---@param lowerLimit number The lower limit for the random integer number.
---@param upperLimit number The upper limit for the random integer number.
---@return number randomValue The generated random integer value between the specified limits.
function RNG:randomInt(lowerLimit, upperLimit) end

--- Picks a random element in the given table.
---@param table table The table from which a random element is picked.
---@return any randomEntry The random element picked from the table.
function RNG:randomEntry(table) end

--- Picks a random element in the given table, assuming the table is an array with no named fields and no gaps.
---@param table table The table from which a random element is picked.
---@return any randomEntry The random element picked from the table.
function RNG:irandomEntry(table) end

--- Generates a random letter, A-Z, either upper case or lower case.
---@return string char The generated random letter.
function RNG:randomChar() end

--- Generates a random letter, A-Z, with case depending on the passed argument.
---@param uppercase boolean If true, generates an upper case letter; otherwise, a lower case letter.
---@return string char The generated random letter.
function RNG:randomChar(uppercase) end

--- Generates a random letter between A and the specified letter. The range is based on ASCII codes.
---@param limit string The upper limit letter for the random letter generation.
---@return string char The generated random letter between A and the specified limit.
function RNG:randomChar(limit) end

--- Generates a random letter between two specified letters. The range is based on ASCII codes.
---@param lowerLimit string The lower limit letter for the random letter generation.
---@param upperLimit string The upper limit letter for the random letter generation.
---@return string char The generated random letter between the specified limits.
function RNG:randomChar(lowerLimit, upperLimit) end

--- Generates a random perlin noise generator with the specified parameters.
---@param args table Configuration parameters for generating perlin noise.
---@return Perlin perlin The Perlin noise generator object.
function RNG.perlin(args) end

--- Generates a random Perlin noise generator using a random seed and default values.
---@class Perlin
local Perlin = {}

--- Returns the value of the generated 1D perlin noise at the given coordinate.
---@param x number The x-coordinate for the noise sample.
---@return number value The noise value at the specified x-coordinate.
function Perlin:get(x) end

--- Returns the value of the generated 2D perlin noise at the given coordinates.
---@param x number The x-coordinate for the noise sample.
---@param y number The y-coordinate for the noise sample.
---@return number value The noise value at the specified coordinates.
function Perlin:get2d(x, y) end

---@type number
Perlin.amp = nil

---@type number
Perlin.mod = nil

---@type number
Perlin.oct = nil

---@type number
Perlin.oct = nil

---@type number
Perlin.per = nil

---@type number
Perlin.seed = nil

---@type number
Perlin.wl = nil

---@type RNG | number[]
Perlin.rng = nil
