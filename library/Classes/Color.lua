---@meta


---The Color class streamlines working with colors.
---@class Color
---@field r number # Red component [0,1]
---@field g number # Green component [0,1]
---@field b number # Blue component [0,1]
---@field a number # Alpha component [0,1]
---@operator concat(number): Color
---@overload fun(r: number, g: number, b: number, alpha?: number): Color
Color = {}


--- Instance methods

---Converts the Color object to a 3 byte hexadecimal representation, ignoring the alpha channel.
---@return number hexValue
function Color:toHexRGB() end

---Converts the Color object to a 4 byte hexadecimal representation.
---@return number hexValue
function Color:toHexRGBA() end

---Converts the Color object to a 4 byte hexadecimal representation.
---@return number hexValue
function Color:toHex() end

---Converts the Color object to a HSV encoding.
---@return number hue # [0,1]
---@return number saturation # [0,1]
---@return number value # [0,1]
function Color:toHSV() end

---Converts the Color object to a HSL encoding.
---@return number hue # [0,1]
---@return number saturation # [0,1]
---@return number lightness # [0,1]
function Color:toHSL() end


--- Static functions

---Creates a new color object with the given values for hue, saturation, and value.
---@param h number # hue [0,1]
---@param s number # saturation [0,1]
---@param v number # value [0,1]
---@param alpha number # [0,1]
---@return Color color
function Color.fromHSV(h, s, v, alpha) end

---Creates a new color object with the given values for hue, saturation, and lightness.
---@param h number # hue [0,1]
---@param s number # saturation [0,1]
---@param l number # lightness [0,1]
---@param alpha number # [0,1]
---@return Color color
function Color.fromHSL(h, s, l, alpha) end

---Creates a new color object from the given 3 byte (#RRGGBB) hexadecimal value.
---@param hex number
---@return Color color
function Color.fromHexRGB(hex) end

---Creates a new color object from the given 4 byte (#RRGGBBAA) hexadecimal value.
---@param hex number
---@return Color color
function Color.fromHexRGBA(hex) end

---Creates a new color object from the given 4 byte (#RRGGBBAA) hexadecimal value.
---@param hex number
---@return Color color
function Color.fromHex(hex) end

---Creates a new color object based on the text string provided.
---Inputs can be any of the [constant field names](https://docs.codehaus.moe/#/reference/Color#constants),
---a string hex value preceeded by either `#` or `0x`, or a Color object.
---@param hex string|Color
---@return Color color
function Color.parse(hex) end

---Interpolates between the Color objects a and b by interpolating the RGBA values separately. Equivalent to math.lerp.
---@param a Color
---@param b Color
---@param value number
---@return Color color
function Color.lerp(a, b, value) end

---Interpolates between the Color objects a and b by interpolating the HSVA values separately. Equivalent to math.lerp.
---@param a Color
---@param b Color
---@param value number
---@return Color color
function Color.lerpHSV(a, b, value) end


--- Constants

Color = {
    ---**Hex:** 0xFFFFFFFF
    ---
    ---**Equivalent to:** Color(1,1,1)
    white = Color(1,1,1),
    ---**Hex:** 0x000000FF
    ---
    ---**Equivalent to:** Color(0,0,0)
    black = Color(0,0,0),
    ---**Hex:** 0xFF0000FF
    ---
    ---**Equivalent to:** Color(1,0,0)
    red = Color(1,0,0),
    ---**Hex:** 0x00FF00FF
    ---
    ---**Equivalent to:** Color(0,1,0)
    green = Color(0,1,0),
    ---**Hex:** 0x0000FFFF
    ---
    ---**Equivalent to:** Color(0,0,1)
    blue = Color(0,0,1),
    ---**Hex:** 0xFFFFFF00
    ---
    ---**Equivalent to:** Color(1,1,1,0)
    alphawhite = Color(1,1,1,0),
    ---**Hex:** 0x00000000
    ---
    ---**Equivalent to:** Color(0,0,0,0)
    alphablack = Color(0,0,0,0),
    ---**Hex:** 0x00000000
    ---
    ---**Equivalent to:** Color(0,0,0,0)
    transparent = Color(0,0,0,0),
    ---**Hex:** 0x808080FF
    ---
    ---**Equivalent to:** Color(0.5,0.5,0.5)
    grey = Color(0.5,0.5,0.5),
    ---**Hex:** 0x00FFFFFF
    ---
    ---**Equivalent to:** Color(0,1,1)
    cyan = Color(0,1,1),
    ---**Hex:** 0xFF00FFFF
    ---
    ---**Equivalent to:** Color(1,0,1)
    magenta = Color(1,0,1),
    ---**Hex:** 0xFFFF00FF
    ---
    ---**Equivalent to:** Color(1,1,0)
    yellow = Color(1,1,0),
    ---**Hex:** 0xFF73ABFF
    ---
    ---**Equivalent to:** Color(1,0.45,0.67)
    pink = Color(1,0.45,0.67),
    ---**Hex:** 0xFFF266FF
    ---
    ---**Equivalent to:** Color(1,0.95,0.4)
    canary = Color(1,0.95,0.4),
    ---**Hex:** 0xAB66ABFF
    ---
    ---**Equivalent to:** Color(0.67,0.4,0.67)
    purple = Color(0.67,0.4,0.67),
    ---**Hex:** 0xFF8C54FF
    ---
    ---**Equivalent to:** Color(1,0.55,0.33)
    orange = Color(1,0.55,0.33),
    ---**Hex:** 0x00AB99FF
    ---
    ---**Equivalent to:** Color(0,0.67,0.6)
    teal = Color(0,0.67,0.6),
    ---**Hex:** 0x730000FF
    ---
    ---**Equivalent to:** Color(0.45,0,0)
    maroon = Color(0.45,0,0),
    ---**Hex:** 0x804D00FF
    ---
    ---**Equivalent to:** Color(0.5,0.3,0)
    brown = Color(0.5,0.3,0),
    ---**Hex:** 0xBFBFBFFF
    ---
    ---**Equivalent to:** Color(0.75,0.75,0.75)
    lightgrey = Color(0.75,0.75,0.75),
    ---**Hex:** 0xBFBFBFFF
    ---
    ---**Equivalent to:** Color(0.75,0.75,0.75)
    lightgray = Color(0.75,0.75,0.75),
    ---**Hex:** 0x33CCFFFF
    ---
    ---**Equivalent to:** Color(0.2,0.8,1)
    lightblue = Color(0.2,0.8,1),
    ---**Hex:** 0x80CC99FF
    ---
    ---**Equivalent to:** Color(0.5,0.8,0.6)
    lightgreen = Color(0.5,0.8,0.6),
    ---**Hex:** 0xBF9966FF
    ---
    ---**Equivalent to:** Color(0.75,0.6,0.4)
    lightbrown = Color(0.75,0.6,0.4),
    ---**Hex:** 0xFF8080FF
    ---
    ---**Equivalent to:** Color(1, 0.5, 0.5)
    lightred = Color(1, 0.5, 0.5),
    ---**Hex:** 0x404040FF
    ---
    ---**Equivalent to:** Color(0.25,0.25,0.25)
    darkgrey = Color(0.25,0.25,0.25),
    ---**Hex:** 0x404040FF
    ---
    ---**Equivalent to:** Color(0.25,0.25,0.25)
    darkgray = Color(0.25,0.25,0.25),
    ---**Hex:** 0x003373FF
    ---
    ---**Equivalent to:** Color(0,0.2,0.45)
    darkblue = Color(0,0.2,0.45),
    ---**Hex:** 0x005926FF
    ---
    ---**Equivalent to:** Color(0,0.35,0.15)
    darkgreen = Color(0,0.35,0.15),
    ---**Hex:** 0x4D4040FF
    ---
    ---**Equivalent to:** Color(0.3,0.25,0.25)
    darkbrown = Color(0.3,0.25,0.25),
    ---**Hex:** 0x800000FF
    ---
    ---**Equivalent to:** Color(0.5, 0, 0)
    darkred = Color(0.5, 0, 0),
}

