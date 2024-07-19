---@meta


---Contains fields that manipulate global game settings, such as gravity.
Defines = {
	---The current earthquake effect intensity. Decreases by 1 every tick while above 0.
	---
	---**Default value**: 0
	---
	---**Limits:** Min: 0
	---@type number
	earthquake = 0,
	---If true, the timer switch effect is active, preventing everything but the player from moving.
	---
	---**Default value**: false
	---@type boolean
	levelFreeze = false,
	---Whether P-Switch music is enabled.
	---
	---**Default value**: true
	---@type boolean
	pswitch_music = true,
	---The duration of the P-Switch.
	---
	---**Default value**: 777
	---
	---**Limits:** Min: 0
	---@type number
	pswitch_duration = 777,
	---The despawn timer for most NPCs.
	---
	---**Default value**: 180
	---
	---**Limits:** Min: -1
	---@type number
	npc_despawntimer = 180,
	---The duration during which thrown NPCs are friendly to the player that threw them.
	---
	---**Default value**: 30
	---
	---**Limits:** Min: 0
	---@type number
	npc_throwfriendlytimer = 30,
	---The speed multiplier of NPCs with iswalker set.
	---
	---**Default value**: 1.2
	---
	---**Limits:** Min: 0
	---@type number
	npc_walkerspeed = 1.2,
	---The speed multiplier of Mushroom NPCs.
	---
	---**Default value**: 1.8
	---
	---**Limits:** Min: 0
	---@type number
	npc_mushroomspeed = 1.8,
	---If set to true, Lava will harm players instead of killing them. Changing this will also make lava solid, and loses 6 pixels of leeway on top collisions that regular lava has.
	---
	---**Default value**: false
	---@type boolean
	weak_lava = false,
	---The terminal velocity of the player. Slight misnomer.
	---
	---**Default value**: 12
	---
	---**Limits:** Min: 0
	---@type number
	gravity = 12,
	---The falling acceleration of players.
	---
	---**Default value**: 0.4
	---
	---**Limits:** Min: 0
	---@type number
	player_grav = 0.4,
	---The falling acceleration of NPCs.
	---
	---**Default value**: 0.26
	---
	---**Limits:** Min: 0
	---@type number
	npc_grav = 0.26,
	---The player's default jump height.
	---
	---**Default value**: 20
	---
	---**Limits:** Min: 0
	---@type number
	jumpheight = 20,
	---The player's speedY during the upwards jump motion.
	---
	---**Default value**: -5.7
	---
	---**Limits:** Max: 0
	---@type number
	jumpspeed = -5.7,
	---The player's jump height when bouncing off an NPC.
	---
	---**Default value**: 20
	---
	---**Limits:** Min: 0
	---@type number
	jumpheight_bounce = 20,
	---The player's bounce response when bouncing off another player's head.
	---
	---**Default value**: 22
	---
	---**Limits:** Min: 0
	---@type number
	jumpheight_player = 22,
	---The player's bounce response when bouncing off a note block.
	---
	---**Default value**: 25
	---
	---**Limits:** Min: 0
	---@type number
	jumpheight_noteblock = 25,
	---The player's bounce response when bouncing off a green spring.
	---
	---**Default value**: 55
	---
	---**Limits:** Min: 0
	---@type number
	jumpheight_greenspring = 55,
	---The player's maximum walking speed.
	---
	---**Default value**: 3
	---
	---**Limits:** Min: 0
	---@type number
	player_walkspeed = 3,
	---The player's maximum running speed.
	---
	---**Default value**: 6
	---
	---**Limits:** Min: 0
	---@type number
	player_runspeed = 6,
	---The speed at which shot NPCs and kicked shells move.
	---
	---**Default value**: 7.1
	---
	---**Limits:** Min: 0
	---@type number
	projectilespeedx = 7.1,
	---If grabbing things from the side is enabled.
	---
	---**Default value**: true
	---@type boolean
	player_grabSideEnabled = true,
	---If grabbing things from the top is enabled.
	---
	---**Default value**: true
	---@type boolean
	player_grabTopEnabled = true,
	---If grabbing shells is enabled.
	---
	---**Default value**: true
	---@type boolean
	player_grabShellEnabled = true,
	---If Link's shield is enabled.
	---
	---**Default value**: true
	---@type boolean
	player_link_shieldEnabled = true,
	---If Link's should turn into a fairy when climbing.
	---
	---**Default value**: true
	---@type boolean
	player_link_fairyVineEnabled = true,
	---ID of the effect used by the NPC-to-coin transformation effect (enabled when collecting a goal).
	---
	---**Default value**: 11
	---
	---**Limits:** Min: 0
	---@type number
	effect_NpcToCoin = 11,
	---If the explosion effect is enabled for the zoomer NPC.
	---
	---**Default value**: true
	---@type boolean
	effect_Zoomer_killEffectEnabled = true,
	---Worth of a regular coin NPC (does not affect the NPC-to-coins function)
	---
	---**Default value**: 1
	---
	---**Limits:** Min: 0; Max: 99
	---@type number
	coinValue = 1,
	---Worth of a 5-coin NPC.
	---
	---**Default value**: 5
	---
	---**Limits:** Min: 0; Max: 99
	---@type number
	coin5Value = 5,
	---Worth of a 20-coin NPC.
	---
	---**Default value**: 20
	---
	---**Limits:** Min: 0; Max: 99
	---@type number
	coin20Value = 20,
	---NPC ID for the most common NPC spawned when Link hits a block with coins inside.
	---
	---**Default value**: 251
	---
	---**Limits:** Min: 0; Max: 300
	---@type number
	block_hit_link_rupeeID1 = 251,
	---NPC ID for an NPC spawned when Link hits a block with coins inside (20:3 chance).
	---
	---**Default value**: 252
	---
	---**Limits:** Min: 0; Max: 300
	---@type number
	block_hit_link_rupeeID2 = 252,
	---NPC ID for an NPC spawned when Link hits a block with coins inside (60:3 chance).
	---
	---**Default value**: 253
	---
	---**Limits:** Min: 0; Max: 300
	---@type number
	block_hit_link_rupeeID3 = 253,
	---NPC ID for the most common NPC spawned when Link kills an NPC.
	---
	---**Default value**: 251
	---
	---**Limits:** Min: 0; Max: 300
	---@type number
	kill_drop_link_rupeeID1 = 251,
	---NPC ID for an NPC spawned when Link kills an NPC (15:3 chance).
	---
	---**Default value**: 252
	---
	---**Limits:** Min: 0; Max: 300
	---@type number
	kill_drop_link_rupeeID2 = 252,
	---NPC ID for an NPC spawned when Link kills an NPC (40:3 chance).
	---
	---**Default value**: 253
	---
	---**Limits:** Min: 0; Max: 300
	---@type number
	kill_drop_link_rupeeID3 = 253,
	---ID of the sound effect used by the NPC-to-coin transformation effect (enabled when collecting a goal).
	---
	---**Default value**: 14
	---
	---**Limits:** Min: 0
	---@type number
	sound_NpcToCoin = 14,
	---Number of coins granted per NPC killed by the NPC-to-coin effect.
	---
	---**Default value**: 1
	---
	---**Limits:** Min: 0; Max: 99
	---@type number
	npcToCoinValue = 1,
	---How many coins get subtracted from the coin-value when the coin value hits 100 coins by means of the NPC-to-coin effect.
	---
	---**Default value**: 100
	---
	---**Limits:** Min: 1; Max: 100
	---@type number
	npcToCoinValueReset = 100,
    ---Score value of the SMB3 Roulette Star.
	---
	---**Default value**: [10](https://docs.codehaus.moe/#/constants/score)
	---
	---**Limits:** Min: 1; Max: 12
	---@type number
    smb3RouletteScoreValueStar = 10,
    ---Score value of the SMB3 Roulette Flower.
	---
	---**Default value**: [8](https://docs.codehaus.moe/#/constants/score)
	---
	---**Limits:** Min: 1; Max: 12
	---@type number
    smb3RouletteScoreValueFlower = 8,
    ---Score value of the SMB3 Roulette Mushroom.
	---
	---**Default value**: [6](https://docs.codehaus.moe/#/constants/score)
	---
	---**Limits:** Min: 1; Max: 12
	---@type number
    smb3RouletteScoreValueMushroom = 6,
	---Whether the shadowstar cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_shadowmario = false,
	---Whether the jumpman cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_ahippinandahoppin = false,
	---Whether the sonicstooslow cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_sonictooslow = false,
	---Whether the illparkwhereiwant cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_illparkwhereiwant = false,
	---Whether the wingman cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_wingman = false,
	---Whether the captainn cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_captainn = false,
	---Whether the flamethrower cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_flamethrower = false,
	---Whether the moneytree cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_moneytree = false,
	---Whether the speeddemon cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_speeddemon = false,
	---Whether the donthurtme cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_donthurtme = false,
	---Whether the stickyfingers cheat is active.
	---
	---**Default value**: false
	---@type boolean
	cheat_stickyfingers = false,
	---Whether the player cannot save due to cheating.
	---
	---**Default value**: false
	---@type boolean
	player_hasCheated = false,
}