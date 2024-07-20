---@meta


local cfg = {}
--onInit function presets for when npcs spawn
cfg.onInit = {}
--onTick function presets for various over-time behaviour
cfg.onTick = {}
--onDeath function presets for managing conditional death
cfg.onDeath = {}
--add default behaviours here for easy importing with the import argument
cfg.defaults = {}

function cfg.onInit.INIT_BABYYOSHI(v) end

function cfg.onInit.INIT_GLASSSHARDS(v) end

--simulates 1-indexing for variants
function cfg.onInit.INIT_1INDEXED(v) end

function cfg.onInit.INIT_RADIALTIMER(v) end

function cfg.onInitAPI() end

function cfg.baseTick() end

--drops lol
cfg.defaults.AI_DROP = {
	lifetime = 500,
	gravity = 0.5,
	maxSpeedY=10
}

--pow block pulse
cfg.defaults.AI_PULSE = {
	onTick = "TICK_PULSE",
	lifetime = 46,
	xAlign = 0.5,
	yAlign = 0.5,
	gravity = 0
}

--stomped
cfg.defaults.AI_STOMPED = {
	lifetime = 20,
	--sound=2
}
--for effects that only play once
cfg.defaults.AI_SINGLE = {
	onTick = "TICK_SINGLE",
	xAlign=0,
	yAlign=0,
	lifetime = 100
}
--for effects that only play once but for some reason don't follow speedY rules
cfg.defaults.AI_SLIDEPUFF = {
	onTick = "TICK_SLIDEPUFF",
	xAlign=0,
	yAlign=0,
	lifetime = 20
}
--for effects that only play once but have twice the speed
cfg.defaults.AI_SINGLE_DOUBLESPEED = {
	onTick = "TICK_SINGLE_DOUBLESPEED",
	xAlign=0,
	yAlign=0,
	lifetime = 65
}

--door
cfg.defaults.AI_DOOR = {
	lifetime = 120,
	onTick = "TICK_PINGPONG",
	frames=5,
	sound=46
}

--player death
cfg.defaults.AI_PLAYER = {
	lifetime = 180,
	speedY = -11,
	gravity=0.25,
	sound=8
}

--performs an arc similar to most items when knocked
cfg.defaults.AI_ARC = {
	onTick = "TICK_ARC",
	lifetime = 500,
	speedX = {-3, 3},
	speedY = -10,
	gravity = 0.5,
	maxSpeedY=10
}

--executes the yoshi egg ai as closely as possible (wip)
cfg.defaults.AI_EGG = {
	lifetime = 31,
	framespeed = 10,
	onTick = "TICK_EGG",
	onDeath = "DEATH_EGG",
	img = 56
}

--spinjump does some weird stuff
cfg.defaults.AI_SPINJUMP = {
	lifetime = 16,
	xAlign=0,
	yAlign=0,
	onTick = "TICK_DOUBLESPEED",
}

--wiggler piece ai
cfg.defaults.AI_WIGGLE = {
	lifetime = 500,
	onTick = "TICK_WIGGLE",
	speedY = -8,
	gravity=0.25
}

--twister cloud ai
cfg.defaults.AI_TWISTER = {
	lifetime = 500,
	onTick = "TICK_TWISTER",
	gravity=0
}

--starcoin bounce
cfg.defaults.AI_STARCOIN = {
	frames = 4,
	lifetime = 70,
	framespeed = 3,
	framestyle = 0,
	onTick = "TICK_STARCOIN"
}

--coin effect
cfg.defaults.AI_COIN = {
	frames = 7,
	lifetime = 45,
	framespeed = 3,
	onTick = "TICK_COIN",
	onDeath= "DEATH_COIN",
	speedY=-8
}

--rip van fish ZZZs
cfg.defaults.AI_SLEEP = {
	lifetime = 150,
	framespeed = 0,
	onTick = "TICK_SLEEP",
	speedX = {-.25, .25},
	speedY = -.4
}

--fireballs
cfg.defaults.AI_FIREBALL = {
	framespeed = 4,
	onTick = "TICK_FIREBALL",
	onInit = "INIT_1INDEXED",
	frames=3,
	variants=5
}

--iceballs
cfg.defaults.AI_ICEBALL = {
	framespeed = 4,
	onTick = "TICK_FIREBALL",
	frames=3
}

--baby binch
cfg.defaults.AI_BABYYOSHI = {
	framespeed = 10,
	onInit = "INIT_BABYYOSHI",
	onDeath = "DEATH_SPAWNNPCID",
	frames=2,
	variants=8
}

--turb block
cfg.defaults.AI_TURNBLOCK = {
	onTick = "TICK_TURNBLOCK",
	onDeath = "DEATH_TURNBLOCK",
	frames=4,
	lifetime=300,
	onInit = "INIT_EMPTY"
}

--yknow
cfg.defaults.AI_PEACHBOMB = {
	onTick = "TICK_PEACHBOMB",
	frames=4,
	framespeed=3
}

--yknow
cfg.defaults.AI_LARRY = {
	onTick = "TICK_LARRY",
	frames=8,
	framespeed=4,
	lifetime=200
}

--yknow
cfg.defaults.AI_MOTHER = {
	onTick = "TICK_MOTHER",
	framestyle=1,
	lifetime=300
}

--yknow
cfg.defaults.AI_BOMB_SMB3 = {
	onTick="TICK_BOMB_SMB3",
	lifetime=42
}

--yknow
cfg.defaults.AI_WATERBUBBLE = {
	onTick="TICK_WATERBUBBLE",
	lifetime=100,
	frames=2,
	framespeed=3
}

--yknow
cfg.defaults.AI_WATERSPLASH = {
	onTick="TICK_WATERSPLASH",
	lifetime=1000,
	frames=5,
	framespeed=8
}

--yknow
cfg.defaults.AI_RESERVESPARK = {
	onTick="TICK_RESERVESPARK",
	lifetime=100,
	frames=10,
	framespeed=4,
	xAlign=0,
	yAlign=0,
}

--yknow
cfg.defaults.AI_CRASHSWITCH = {
	onTick = "TICK_CRASHSWITCH",
	lifetime=100
}

cfg.defaults.AI_RADIALTIMER = {
    onTick = "TICK_RADIALTIMER",
    onInit = "INIT_RADIALTIMER"
}

return cfg