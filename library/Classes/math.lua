---@meta


--- Calculates linear interpolation between `a` and `b` using `time`
--- @param a number The start value.
--- @param b number The end value.
--- @param time number The interpolation factor (0-1).
--- @return number interpolated The interpolated result.
function math.lerp(a, b, time) end

--- Calculates angle interpolation between `a` and `b` considering wrap-around from 360 to 0 degrees.
--- @param a number The start angle.
--- @param b number The end angle.
--- @param time number The interpolation factor (0-1).
--- @return number interpolated The interpolated angle.
function math.anglelerp(a, b, time) end

--- Calculates the interpolation factor required to reach a specific interpolated value between `a` and `b`.
--- @param a number The start value.
--- @param b number The end value.
--- @param interpolated number The interpolated result to inverse calculate.
--- @return number fraction The interpolation factor.
function math.invlerp(a, b, interpolated) end

--- Returns the fractional part of a number.
--- @param num number The input number.
--- @return number fraction The fractional part of the number.
function math.fract(num) end

--- Wraps the number `input` within the range [0, max].
--- @param input number The input number.
--- @param max number The upper limit to wrap around.
--- @return number wrappedNumber The wrapped number.
function math.wrap(input, max) end

--- Wraps the number `input` within the range [min, max].
--- @param input number The input number.
--- @param min number The lower limit of the range.
--- @param max number The upper limit of the range.
--- @return number wrappedNumber The wrapped number.
function math.wrap(input, min, max) end

--- Causes the number `input` to ping pong between 0 and `max`.
--- @param input number The input number.
--- @param max number The maximum value to ping pong between.
--- @return number pingPongedNumber The ping ponged number.
function math.pingpong(input, max) end

--- Causes the number `input` to ping pong between `min` and `max`.
--- @param input number The input number.
--- @param min number The minimum value to ping pong between.
--- @param max number The maximum value to ping pong between.
--- @return number pingPongedNumber The ping ponged number.
function math.pingpong(input, min, max) end

--- Clamps a value within the inclusive range specified by `min` and `max`.
--- @param value number The value to clamp.
--- @param min number The minimum boundary.
--- @param max number The maximum boundary.
--- @return number clampedValue The clamped value.
function math.clamp(value, min, max) end

--- Returns the sign of a number, indicating whether it is positive, negative, or zero.
--- @param a number The number to check.
--- @return number sign The sign of the number (-1, 0, 1).
function math.sign(a) end
