---@meta _

---Constants for enemy harm types.
---@alias EnemyHarmType
---| `HARM_TYPE_JUMP` # Damaging an NPC by jumping on it.
---| `HARM_TYPE_FROMBELOW` # Damaging an NPC by bumping a block the NPC is standing on.
---| `HARM_TYPE_NPC` # Damaging an NPC by various means, such as when crushed, exploded, harmed by a thrown NPC or slid into. Slight misnomer.
---| `HARM_TYPE_PROJECTILE_USED` # Damage dealt to a projectile NPC when it hits something.
---| `HARM_TYPE_HELD` # Damage dealt by an NPC held by the player.
---| `HARM_TYPE_LAVA` # Damage dealt by contact with lava.
---| `HARM_TYPE_TAIL` # Damaging an NPC with a player's tanooki tail spin attack.
---| `HARM_TYPE_SPINJUMP` # Damaging an NPC by spinjumping on it.
---| `HARM_TYPE_VANISH` # Damage dealt to an NPC when it vanishes (being collected or eaten).
---| `HARM_TYPE_OFFSCREEN` # Damage dealt to an NPC when it vanishes (going offscreen).
---| `HARM_TYPE_SWORD` # Damaging an NPC via one of Link's attack methods.

---Extended harm types may be passed to `NPC:harm()` as a method of harming an NPC. They are not used in other contexts.
---@alias ExtendedEnemyHarmType
---| EnemyHarmType
---| `HARM_TYPE_EXT_FIRE` # Damaging an NPC with player-thrown fire balls.
---| `HARM_TYPE_EXT_ICE` # Damaging an NPC with player-thrown ice balls.
---| `HARM_TYPE_EXT_HAMMER` # Damaging an NPC with player-thrown hammers.

HARM_TYPE_JUMP = 1
HARM_TYPE_FROMBELOW = 2
HARM_TYPE_NPC = 3
HARM_TYPE_PROJECTILE_USED = 4
HARM_TYPE_HELD = 5
HARM_TYPE_LAVA = 6
HARM_TYPE_TAIL = 7
HARM_TYPE_SPINJUMP = 8
HARM_TYPE_VANISH = 9
HARM_TYPE_OFFSCREEN = 9
HARM_TYPE_SWORD = 10

HARM_TYPE_EXT_FIRE = -1
HARM_TYPE_EXT_ICE = -2
HARM_TYPE_EXT_HAMMER = -3
