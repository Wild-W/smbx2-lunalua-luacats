---@meta


---Constants for mounts and mount types.
---@alias MountType
---| `MOUNT_NONE` # No mount.
---| `MOUNT_BOOT` # Any boot.
---| `MOUNT_CLOWNCAR` # Clown car.
---| `MOUNT_YOSHI` # Any Yoshi.

---Values for the player.mountColor field while in a boot.
---@alias BootColor
---| `BOOTCOLOR_GREEN` # Kuribo's (regular) Shoe.
---| `BOOTCOLOR_RED` # Podoboo's (lavaproof) Shoe.
---| `BOOTCOLOR_BLUE` # Lakitu's (flying) Shoe.

---Values for the player.mountColor field while riding Yoshi.
---@alias YoshiColor
---| `YOSHICOLOR_GREEN` # Green (regular) Yoshi.
---| `YOSHICOLOR_BLUE` # Blue (flying) Yoshi.
---| `YOSHICOLOR_YELLOW` # Yellow (stomping) Yoshi.
---| `YOSHICOLOR_RED` # Red (fire-breathing) Yoshi.
---| `YOSHICOLOR_BLACK` # Black (flying, stomping, fire-breathing) Yoshi.
---| `YOSHICOLOR_PURPLE` # Purple (ground-pounding) Yoshi.
---| `YOSHICOLOR_PINK` # Pink (vegetable-breathing) Yoshi.
---| `YOSHICOLOR_CYAN` # Cyan (ice) Yoshi.

---No mount.
MOUNT_NONE = 0
---Any boot.
MOUNT_BOOT = 1
---Clown car.
MOUNT_CLOWNCAR = 2
---Any Yoshi.
MOUNT_YOSHI = 3

---Kuribo's (regular) Shoe.
BOOTCOLOR_GREEN = 1
---Podoboo's (lavaproof) Shoe.
BOOTCOLOR_RED = 2
---Lakitu's (flying) Shoe.
BOOTCOLOR_BLUE = 3

---Green (regular) Yoshi.
YOSHICOLOR_GREEN = 1
---Blue (flying) Yoshi.
YOSHICOLOR_BLUE = 2
---Yellow (stomping) Yoshi.
YOSHICOLOR_YELLOW = 3
---Red (fire-breathing) Yoshi.
YOSHICOLOR_RED = 4
---Black (flying, stomping, fire-breathing) Yoshi.
YOSHICOLOR_BLACK = 5
---Purple (ground-pounding) Yoshi.
YOSHICOLOR_PURPLE = 6
---Pink (vegetable-breathing) Yoshi.
YOSHICOLOR_PINK = 7
---Cyan (ice) Yoshi.
YOSHICOLOR_CYAN = 8
