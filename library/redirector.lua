---@meta

local redirector = {
	UP = 191,
	DOWN = 192,
	LEFT = 193,
	RIGHT = 194,
	UP_LEFT = 195,
	UP_RIGHT = 196,
	DOWN_RIGHT = 197,
	DOWN_LEFT = 198,
	TERMINUS = 199,
	TOGGLER = 221, TOGGLE = 221,
	SOLIDTOGGLER = 222, SOLIDTOGGLE = 222,
}

---ID map
---@type table
redirector.MAP = nil

---Vector map
---@type table
redirector.VECTORS = nil

return redirector