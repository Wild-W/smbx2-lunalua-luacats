---@meta _

---Configuration settings for Background game objects (BGOs).
---@class BGOConfig : LightConfig
--- @field frames number Number of frames of the BGO animation. Default: 1
--- @field framespeed number The amount of ticks it takes for the BGO animation frame to change. Default: 8
--- @field width number The width of the BGO, inferred from sprite and frames.
--- @field height number The height of the BGO, inferred from sprite and frames.
--- @field priority number The priority to render the BGO (Between -100 and 10). Default: -85
--- @field climbable boolean If true, the BGO acts as a fence piece. Default: false
