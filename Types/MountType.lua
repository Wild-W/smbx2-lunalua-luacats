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

MOUNT_NONE = 0
MOUNT_BOOT = 1
MOUNT_CLOWNCAR = 2
MOUNT_YOSHI = 3

BOOTCOLOR_GREEN = 1
BOOTCOLOR_RED = 2
BOOTCOLOR_BLUE = 3

YOSHICOLOR_GREEN = 1
YOSHICOLOR_BLUE = 2
YOSHICOLOR_YELLOW = 3
YOSHICOLOR_RED = 4
YOSHICOLOR_BLACK = 5
YOSHICOLOR_PURPLE = 6
YOSHICOLOR_PINK = 7
YOSHICOLOR_CYAN = 8
