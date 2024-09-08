---@meta _

---Sections are arbitrary subdivisions within the level's scene space coordinate system. They can be configured in the editor through the Section Settings window, and manipulated in code through this class.
---@class SectionManager
Section = {}

--- Returns the number of sections (21).
--- @return number count The number of sections.
function Section.count() end

--- Returns a table of references to all sections.
--- @return Section[] sections A table of all sections.
function Section.get() end

--- Returns the section of the given index. Warning: Compared to the editor or internal section counts, these are off by one and go from 1 to 21, rather than 0 to 20.
--- @param index number The index of the section (1-based).
--- @return Section section The section at the given index.
function Section.get(index) end

--- Constructor for a Section object, using a 0-based index.
--- @param index number The index of the section (0-based).
--- @return Section section The section at the given index.
function Section(index) end

--- Returns a table of indices of sections with players in them.
--- @return number[] indices A table of indices of active sections.
function Section.getActiveIndices() end

--- Returns a table of sections with players in them.
--- @return Section[] sections A table of active sections.
function Section.getActive() end

--- Returns a table of sections that overlap with the rectangle defined by the given coordinates.
--- @param x number The x-coordinate of the rectangle.
--- @param y number The y-coordinate of the rectangle.
--- @param width number The width of the rectangle.
--- @param height number The height of the rectangle.
--- @return Section[] sections A table of overlapping sections.
function Section.getFromCoords(x, y, width, height) end

--- Returns a table of sections that overlap with the rectangle defined by the given coordinates. The coordinates table should either have 4 sequential entries corresponding to x, y, width, and height, or 4 named arguments named as such.
--- @param coordinates table A table of coordinates.
--- @return Section[] sections A table of overlapping sections.
function Section.getFromCoords(coordinates) end

--- Returns a table of indices of sections that overlap with the rectangle defined by the given coordinates.
--- @param x number The x-coordinate of the rectangle.
--- @param y number The y-coordinate of the rectangle.
--- @param width number The width of the rectangle.
--- @param height number The height of the rectangle.
--- @return number[] indices A table of indices of overlapping sections.
function Section.getIdxFromCoords(x, y, width, height) end

--- Returns a table of indices of sections that overlap with the rectangle defined by the given coordinates. The coordinates table should either have 4 sequential entries corresponding to x, y, width, and height, or 4 named arguments named as such.
--- @param coordinates table A table of coordinates.
--- @return number[] indices A table of indices of overlapping sections.
function Section.getIdxFromCoords(coordinates) end

--- Returns the table for the requested weather effect.
--- @param type WeatherEffect The type of weather effect to retrieve.
--- @return table weatherEffect The requested weather effect's settings.
function Section.getWeatherEffect(type) end

---@param ... unknown
---@return ...
function Section.makeDefaultSettings(...) end

---@class Section
--- Validates that the section object exists. (Read-only)
--- @field isValid boolean
--- The section's index in the internal list of sections. (Read-only)
--- @field idx number
--- Returns a RECT containing the section's boundary.
--- @field boundary RECT
--- Returns a RECT containing the section's original boundary from the start of gameplay.
--- @field origBoundary RECT
--- The ID of the music used by the section.
--- @field musicID number
--- The path to the custom music used by the section. Unused if the custom ID isn't used.
--- @field musicPath string
--- The ID or name of the currently used music.
--- @field music string|number
--- Whether horizontal wrapping is enabled.
--- @field wrapH boolean
--- Whether vertical wrapping is enabled.
--- @field wrapV boolean
--- Whether walking offscreen in this section exits the level.
--- @field hasOffscreenExit boolean
--- Whether the screen may never scroll left in this section.
--- @field noTurnBack boolean
--- Whether this section is underwater.
--- @field isUnderwater boolean
--- The ID used for the background in this section.
--- @field backgroundID number
--- The parallaxing background object used by this section.
--- @field background Background
--- The background ID initially used by this section.
--- @field origBackgroundID number
--- The extended editor settings used by this section.
--- @field settings SectionSettings
--- The darkness configuration used by this section. (Read-only)
--- @field darkness SectionDarkness
--- The section effects used by this section. (Read-only)
--- @field effects SectionEffects
--- The beat timer options used by this section. (Read-only)
--- @field beatTimer SectionBeatOptions
local Section = {}

---Draws the specified screen effect.
---@param screenEffect ScreenEffect
---@param camera Camera
function Section.drawScreenEffect(screenEffect, camera) end

---The SectionSettings table contains information about options chosen in the section settings editor window. The following fields are available:
--- @class SectionSettings
--- @field darkness SectionDarkness The darkness configuration used by the section.
--- @field effects SectionEffects The weather and screen effects used by the section.
--- @field beat SectionBeatOptions The beat timer configuration used by the section.

---The SectionDarkness table contains information about the darkness effect used by the section.
--- @class SectionDarkness
--- @field effect DarknessField The darkness effect itself.
--- @field playerLightEffects Light[] A table of lights used for the players, if player light is enabled.
--- @field enabled boolean Whether or not the darkness effect is enabled.
--- @field playerLightEnabled boolean Whether or not the darkness effect's player lights are enabled.

---The SectionEffects table contains information about weather and screen effects used in the section.
--- @class SectionEffects
--- @field weather WeatherEffect The used weather effect.
--- @field screenEffect ScreenEffect The used screen effect.

---The SectionBeatOptions table contains information about the beat timer used in the section.
--- @class SectionBeatOptions
--- @field enabled boolean Whether the beat timer is enabled.
--- @field useMusicClock boolean Whether the music clock should be used for the timer.
--- @field bpm number The current BPM.
--- @field timeSignature number The current time signature.
