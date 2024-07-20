---@meta


--- Clear pipes.
local clearpipe = {}

---@param id integer NPC id
function clearpipe.registerNPC(id) end

---@param id integer NPC id
function clearpipe.unregisterNPC(id) end

---Is player in pipe?
---@param player Player
function clearpipe.isInPipe(player) end

Player._inClearPipe = clearpipe.isInPipe;

--Enums for basic directions
local UP, DOWN, LEFT, RIGHT = 1, 2, 3, 4

clearpipe.speed = 6
clearpipe.exitBoost = 1
clearpipe.cannonBoost = 3
clearpipe.sfx = 17
clearpipe.cannonSFX = 22
clearpipe.priority = -22.5

clearpipe.JUNC	 = {}
clearpipe.JUNC.CROSS = 5
clearpipe.JUNC.DOWN = 2
clearpipe.JUNC.UP_FULL = 6
clearpipe.JUNC.DOWN_FULL = 7
clearpipe.JUNC.RIGHT_FULL = 9
clearpipe.JUNC.UP = 1
clearpipe.JUNC.RIGHT = 4
clearpipe.JUNC.LEFT_FULL = 8
clearpipe.JUNC.LEFT = 3
clearpipe.END	 = {}
clearpipe.END.HORZ = 1
clearpipe.END.VERT = 2
clearpipe.STRAIGHT	 = {}
clearpipe.STRAIGHT.HORZ = 1
clearpipe.STRAIGHT.VERT = 2
clearpipe.ELB	 = {}
clearpipe.ELB.MINUS = -1
clearpipe.ELB.PLUS = 1

--ID tables\
--ELBs are notated by the two directions they are open to\
--JUNCs are notated by the direction in which they branch off\
--STRAIGHTs are notated by the axis along which they allow travel\
--Half-straight STRAIGHTs are notated by the direction in which they allow entry but not passage\
--ENDs are notated like STRAIGHTS\
--GATEs are notated by the direction in which you CAN pass through them\
--CANNONs are notated like ENDS\
--Main ID table
clearpipe.PIPES = {
    --The values here are whether the player should be allowed to enter the pipe while traveling {up,down,left,right}
    --[[
    [ID.ELB.DL] = {true,  false, false, true},
    [ID.ELB.DR] = {true,  false, true,  false},
    [ID.ELB.UL] = {false, true,  false, true},
    [ID.ELB.UR] = {false, true,  true,  false},
    [ID.END.V] = VERT,
    [ID.END.H] = HORZ,
    [ID.STRAIGHT.V] = VERT,
    [ID.STRAIGHT.H] = HORZ,
    [ID.GATE.R] = {false, false, false, true},
    [ID.GATE.L] = {false, false, true,  false},
    [ID.GATE.D] = {false, true,  false, false},
    [ID.GATE.U] = {true,  false, false, false},
    [ID.STRAIGHT.U] = {true,  false, true,  true},
    [ID.STRAIGHT.R] = {true,  true,  false, true},
    [ID.STRAIGHT.D] = {false, true,  true,  true},
    [ID.STRAIGHT.L] = {true,  true,  true,  false},
    [ID.JUNC.D] = JUNC,
    [ID.JUNC.U] = JUNC,
    [ID.JUNC.L] = JUNC,
    [ID.JUNC.R] = JUNC,
    [ID.JUNC.X] = JUNC,
    [ID.CANNON.V] = VERT,
    [ID.CANNON.H] = HORZ,
    [ID.JUNC.UF] = {false, true,  true,  true},
    [ID.JUNC.DF] = {true,  false, true,  true},
    [ID.JUNC.LF] = {true,  true,  false, true},
    [ID.JUNC.RF] = {true,  true,  true,  false}
    ]]
}
--Other ID tables
--a MINUS elbow opens down/right or up/left. a PLUS elbow opens up/right or down/left.
--Surprisingly, the code doesn't need to distinguish any more than that, at least not for sane pipe placements.
clearpipe.ELBS = {
    --[[[ID.ELB.DR] = clearpipe.ELB.MINUS,
    [ID.ELB.DL] = clearpipe.ELB.PLUS,
    [ID.ELB.UL] = clearpipe.ELB.MINUS,
    [ID.ELB.UR] = clearpipe.ELB.PLUS]]
}
clearpipe.ENDS = {
    --[[[ID.END.V] = clearpipe.END.VERT,
    [ID.END.H] = clearpipe.END.HORZ]]
}
clearpipe.JUNCS = {
    --[[[ID.JUNC.U] = clearpipe.JUNC.UP,
    [ID.JUNC.D] = clearpipe.JUNC.DOWN,
    [ID.JUNC.L] = clearpipe.JUNC.LEFT,
    [ID.JUNC.R] = clearpipe.JUNC.RIGHT,
    [ID.JUNC.X] = clearpipe.JUNC.CROSS,
    [ID.JUNC.UF] = clearpipe.JUNC.UP_FULL,
    [ID.JUNC.DF] = clearpipe.JUNC.DOWN_FULL,
    [ID.JUNC.LF] = clearpipe.JUNC.LEFT_FULL,
    [ID.JUNC.RF] = clearpipe.JUNC.RIGHT_FULL,]]
}
--Not actually used at the time of writing, just here for consistency and registerPipe
clearpipe.STRAIGHTS = {
    --[[[ID.STRAIGHT.V] = clearpipe.STRAIGHT.VERT,
    [ID.STRAIGHT.H] = clearpipe.STRAIGHT.HORZ,
    [ID.STRAIGHT.U] = clearpipe.STRAIGHT.HORZ,
    [ID.STRAIGHT.R] = clearpipe.STRAIGHT.VERT,
    [ID.STRAIGHT.D] = clearpipe.STRAIGHT.HORZ,
    [ID.STRAIGHT.L] = clearpipe.STRAIGHT.VERT,
    [ID.GATE.R] = clearpipe.STRAIGHT.HORZ,
    [ID.GATE.L] = clearpipe.STRAIGHT.HORZ,
    [ID.GATE.D] = clearpipe.STRAIGHT.VERT,
    [ID.GATE.U] = clearpipe.STRAIGHT.VERT,
    [ID.CANNON.H] = clearpipe.STRAIGHT.HORZ,
    [ID.CANNON.V] = clearpipe.STRAIGHT.VERT]]
}
clearpipe.CANNONS = {
    --[[[ID.CANNON.H] = true,
    [ID.CANNON.V] = true]]
}
-- Redirector BGOs
clearpipe.REDIRECTS = {
}

local CENTER = {x = .5, y = .5}
--Other tables
--Cross junctions should have their center, along both axes, lined up with the pipe's center.
--Other junctions should only be half a pipe along the axis they're branching off of, so a junction shaped like a ⊥ should be 64 wide and 32 tall.
clearpipe.JUNC_OFFSETS = {
    [clearpipe.JUNC.UP]         = {x = 0.5, y = 1.0},
    [clearpipe.JUNC.DOWN]       = {x = 0.5, y = 0.0},
    [clearpipe.JUNC.LEFT]       = {x = 1.0, y = 0.5},
    [clearpipe.JUNC.RIGHT]      = {x = 0.0, y = 0.5},
    [clearpipe.JUNC.CROSS]      = CENTER,
    [clearpipe.JUNC.UP_FULL]    = CENTER,
    [clearpipe.JUNC.DOWN_FULL]  = CENTER,
    [clearpipe.JUNC.LEFT_FULL]  = CENTER,
    [clearpipe.JUNC.RIGHT_FULL] = CENTER
}
--Map of junction types to allowed exit directions
clearpipe.JUNC_FORKS = {
    [clearpipe.JUNC.UP]         = {true,  false, true,  true},
    [clearpipe.JUNC.DOWN]       = {false, true,  true,  true},
    [clearpipe.JUNC.LEFT]       = {true,  true,  true,  false},
    [clearpipe.JUNC.RIGHT]      = {true,  true,  false, true},
    [clearpipe.JUNC.CROSS]      = {true,  true,  true,  true},
    [clearpipe.JUNC.UP_FULL]    = {true,  false, true,  true},
    [clearpipe.JUNC.DOWN_FULL]  = {false, true,  true,  true},
    [clearpipe.JUNC.LEFT_FULL]  = {true,  true,  true,  false},
    [clearpipe.JUNC.RIGHT_FULL] = {true,  true,  false, true}
}
--Map of direction enums to xy-based vectors
clearpipe.DIR_VECTORS = {
    [UP]    = {x =  0, y = -1},
    [DOWN]  = {x =  0, y =  1},
    [LEFT]  = {x = -1, y =  0},
    [RIGHT] = {x =  1, y =  0}
}
clearpipe.PIPES_LIST = table.unmap(clearpipe.PIPES)
clearpipe.ENDS_LIST = table.unmap(clearpipe.ENDS)

--Returns an estimate of a player's previous hitbox, based on their current velocity.
---@param i integer
---@param player Player
function projectLastPos(i, player) end

--Returns an estimate of a player's next hitbox, based on their current velocity.
---@param i integer
---@param player Player
function projectNextPos(i, player) end

--Does whatever visual effect a clear pipe cannon should do.
function clearpipe.cannonEffect(obj) end

function clearpipe.onInputUpdate() end

---Forces a key on a player in a clear pipe.
---@param player Player
---@param inputDirection string
---@param value boolean
function clearpipe.overrideInput(player, inputDirection, value) end

function clearpipe.onTick() end

function clearpipe.onTickEnd() end

function clearpipe.onDraw() end

function clearpipe.onInitAPI() end

---@param block Block
function clearpipe.onDrawBlock(block) end

--- clearpipe.registerPipe registers a block ID as a clear pipe.
---## Usage
---```lua
---clearpipe.registerPipe(1, "STRAIGHT", "VERT", {true, true, false, false})
---```
---@param id integer the block ID being registered as a clear pipe
---@param group string the category of pipes this block will fall under
---@param shape string the shape the block will have within the category
---@param allowedEntrances boolean[] the directions along which entry into the pipe is allowed, {up, down, left, right}
function clearpipe.registerPipe(id, group, shape, allowedEntrances) end

return clearpipe