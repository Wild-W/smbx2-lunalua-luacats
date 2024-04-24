---@meta


---Constants for the state of player input. Values are set up as a 4-way boolean, causing press/hold events to evaluate to true,
---and release/up events to evaluate to false.
---These checks can be used on all player keys inputs: up, down, left, right, jump, altJump, run, altRun, pause, dropItem
---@alias PlayerKeyState
---| `KEYS_PRESSED` # The frame the key is pressed.
---| `KEYS_DOWN` # Every frame the key is held.
---| `KEYS_UNPRESSED` # The frame the key is released.
---| `KEYS_UP` # Every frame the key is not pressed.

---The frame the key is pressed.
KEYS_PRESSED = 1
---Every frame the key is held.
KEYS_DOWN = true
---The frame the key is released.
---@type nil
KEYS_UNPRESSED = nil
---Every frame the key is not pressed.
KEYS_UP = false
