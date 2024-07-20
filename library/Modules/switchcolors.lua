---@meta


---Switchcolors manages configurations and signals for different colours of switches, including custom ones!
local switchcolors = {}

switchcolors.colors = {
    yellow = 1,
    blue = 2,
    green = 3,
    red = 4,
}

---@param name string
function switchcolors.registerColor(name) end

---@param color Color
function switchcolors.onColorSwitch(color) end
---You can use the switchcolors.onSwitch event to catch switch toggles
---@param color Color
function switchcolors.onSwitch(color) end
---@param color Color
function switchcolors.onPalaceSwitch(color) end

---@param id1 number block ID
---@param id2 number block ID
function switchcolors.switch(id1, id2)end

--palaces

switchcolors.palaceColors = {
    yellow = 1,
    blue = 2,
    green = 3,
    red = 4
}

function switchcolors.registerPalace(name) end

function switchcolors.onInitAPI()end


return switchcolors