---@meta _

---@alias EventName
---| "onStart"
---| "onLoad"
---| "onTick"
---| "onTickEnd"
---| "onDraw"
---| "onDrawUnfocusOverlay"
---| "onDrawEnd"
---| "onLoop"
---| "onLoopSection0"
---| "onLoopSection1"
---| "onLoopSection2"
---| "onLoopSection3"
---| "onLoopSection4"
---| "onLoopSection5"
---| "onLoopSection6"
---| "onLoopSection7"
---| "onLoopSection8"
---| "onLoopSection9"
---| "onLoopSection10"
---| "onLoopSection11"
---| "onLoopSection12"
---| "onLoopSection13"
---| "onLoopSection14"
---| "onLoopSection15"
---| "onLoopSection16"
---| "onLoopSection17"
---| "onLoopSection18"
---| "onLoopSection19"
---| "onLoopSection20"
---| "onLoadSection"
---| "onLoadSection0"
---| "onLoadSection1"
---| "onLoadSection2"
---| "onLoadSection3"
---| "onLoadSection4"
---| "onLoadSection5"
---| "onLoadSection6"
---| "onLoadSection7"
---| "onLoadSection8"
---| "onLoadSection9"
---| "onLoadSection10"
---| "onLoadSection11"
---| "onLoadSection12"
---| "onLoadSection13"
---| "onLoadSection14"
---| "onLoadSection15"
---| "onLoadSection16"
---| "onLoadSection17"
---| "onLoadSection18"
---| "onLoadSection19"
---| "onLoadSection20"
---| "onSectionChange"
---| "onJump"
---| "onJumpEnd"
---| "onKeyDown"
---| "onKeyUp"
---| "onFramebufferResize"
---| "onEvent"
---| "onEventDirect"
---| "onExitLevel"
---| "onInputUpdate"
---| "onMessageBox"
---| "onColorSwitch"
---| "onSyncSwitch"
---| "onBeatWarn"
---| "onBeatStateChange"
---| "onBlockHit"
---| "onBlockRemove"
---| "onHUDDraw"
---| "onNPCKill"
---| "onCameraUpdate"
---| "onCameraDraw"
---| "onKeyboardPress"
---| "onKeyboardPressDirect"
---| "onKeyboardKeyPress"
---| "onKeyboardKeyRelease"
---| "onPause"
---| "onExit"
---| "onNPCHarm"
---| "onNPCCollect"
---| "onCheckpoint"
---| "onExplosion"
---| "onRunEffectInternal"
---| "onExplosionInternal"
---| "onPostNPCRearrangeInternal"
---| "onBlockInvalidateForReuseInternal"
---| "onWarpEnter"
---| "onWarp"
---| "onGroupDeallocationInternal"
---| "onPasteText"
---| "onChangeController"
---| "onControllerButtonPress"
---| "onControllerButtonRelease"
---| "onPostNPCKill"
---| "onPostNPCHarm"
---| "onPostNPCCollect"
---| "onPostExplosion"
---| "onPostEventDirect"
---| "onPostWarpEnter"
---| "onPostBlockHit"
---| "onPostBlockRemove"
---| "onNPCGenerated"
---| "onNPCTransform"
---| "onNPCConfigChange"
---| "onBlockConfigChange"
---| "onBGOConfigChange"
---| "onPlayerKill"
---| "onPlayerHarm"
---| "onPostPlayerKill"
---| "onPostPlayerHarm"
---| "onPOW"
---| "onPostPOW"
---| "onMouseButtonEvent"
---| "onMouseWheelEvent"
---| "onCollide"
---| "onIntersect"

---@alias NPCEventName
---| "onStartNPC"
---| "onLoadNPC"
---| "onTickNPC"
---| "onTickEndNPC"
---| "onDrawNPC"
---| "onDrawUnfocusOverlayNPC"
---| "onDrawEndNPC"
---| "onLoopNPC"
---| "onLoopSection0NPC"
---| "onLoopSection1NPC"
---| "onLoopSection2NPC"
---| "onLoopSection3NPC"
---| "onLoopSection4NPC"
---| "onLoopSection5NPC"
---| "onLoopSection6NPC"
---| "onLoopSection7NPC"
---| "onLoopSection8NPC"
---| "onLoopSection9NPC"
---| "onLoopSection10NPC"
---| "onLoopSection11NPC"
---| "onLoopSection12NPC"
---| "onLoopSection13NPC"
---| "onLoopSection14NPC"
---| "onLoopSection15NPC"
---| "onLoopSection16NPC"
---| "onLoopSection17NPC"
---| "onLoopSection18NPC"
---| "onLoopSection19NPC"
---| "onLoopSection20NPC"
---| "onLoadSectionNPC"
---| "onLoadSection0NPC"
---| "onLoadSection1NPC"
---| "onLoadSection2NPC"
---| "onLoadSection3NPC"
---| "onLoadSection4NPC"
---| "onLoadSection5NPC"
---| "onLoadSection6NPC"
---| "onLoadSection7NPC"
---| "onLoadSection8NPC"
---| "onLoadSection9NPC"
---| "onLoadSection10NPC"
---| "onLoadSection11NPC"
---| "onLoadSection12NPC"
---| "onLoadSection13NPC"
---| "onLoadSection14NPC"
---| "onLoadSection15NPC"
---| "onLoadSection16NPC"
---| "onLoadSection17NPC"
---| "onLoadSection18NPC"
---| "onLoadSection19NPC"
---| "onLoadSection20NPC"
---| "onSectionChangeNPC"
---| "onJumpNPC"
---| "onJumpEndNPC"
---| "onKeyDownNPC"
---| "onKeyUpNPC"
---| "onFramebufferResizeNPC"
---| "onEventNPC"
---| "onEventDirectNPC"
---| "onExitLevelNPC"
---| "onInputUpdateNPC"
---| "onMessageBoxNPC"
---| "onColorSwitchNPC"
---| "onSyncSwitchNPC"
---| "onBeatWarnNPC"
---| "onBeatStateChangeNPC"
---| "onBlockHitNPC"
---| "onBlockRemoveNPC"
---| "onHUDDrawNPC"
---| "onNPCKillNPC"
---| "onCameraUpdateNPC"
---| "onCameraDrawNPC"
---| "onKeyboardPressNPC"
---| "onKeyboardPressDirectNPC"
---| "onKeyboardKeyPressNPC"
---| "onKeyboardKeyReleaseNPC"
---| "onPauseNPC"
---| "onExitNPC"
---| "onNPCHarmNPC"
---| "onNPCCollectNPC"
---| "onCheckpointNPC"
---| "onExplosionNPC"
---| "onRunEffectInternalNPC"
---| "onExplosionInternalNPC"
---| "onPostNPCRearrangeInternalNPC"
---| "onBlockInvalidateForReuseInternalNPC"
---| "onWarpEnterNPC"
---| "onWarpNPC"
---| "onGroupDeallocationInternalNPC"
---| "onPasteTextNPC"
---| "onChangeControllerNPC"
---| "onControllerButtonPressNPC"
---| "onControllerButtonReleaseNPC"
---| "onPostNPCKillNPC"
---| "onPostNPCHarmNPC"
---| "onPostNPCCollectNPC"
---| "onPostExplosionNPC"
---| "onPostEventDirectNPC"
---| "onPostWarpEnterNPC"
---| "onPostBlockHitNPC"
---| "onPostBlockRemoveNPC"
---| "onNPCGeneratedNPC"
---| "onNPCTransformNPC"
---| "onNPCConfigChangeNPC"
---| "onBlockConfigChangeNPC"
---| "onBGOConfigChangeNPC"
---| "onPlayerKillNPC"
---| "onPlayerHarmNPC"
---| "onPostPlayerKillNPC"
---| "onPostPlayerHarmNPC"
---| "onPOWNPC"
---| "onPostPOWNPC"
---| "onMouseButtonEventNPC"
---| "onMouseWheelEventNPC"
---| "onCollideNPC"
---| "onIntersectNPC"

--- # Per-tick events

---Runs every tick. Executes just after input has updated, making it useful for pause menu navigation.
---@alias onInputUpdate fun()

---@type onInputUpdate
onInputUpdate = nil

---Runs every tick the game isn't paused. Executes directly before SMBX internal code, making it useful for handling (for example) player input during gameplay.
---@alias onTick fun()

---@type onTick
onTick = nil

---Runs every tick the game isn't paused. Executes directly after SMBX internal code, making it useful for reacting to what happened in the internal loop before the scene is drawn.
---@alias onTickEnd fun()

---@type onTickEnd
onTickEnd = nil

---Runs every tick, even when the game is paused. Executes once for each camera, just after the camera's position was internally updated. Good for making modifications to camera position. Passes the index of the current camera.
---@alias onCameraUpdate fun(camIdx: number)

---@type onCameraUpdate
onCameraUpdate = nil

---Runs every tick, even when the game is paused. Executes at the start of the tick's draw cycle. Useful as it's the only draw function that only executes once per tick.
---@alias onDraw fun()

---@type onDraw
onDraw = nil

---Runs every tick, even when the game is paused. Executes once for each camera, just before the scene is rendered for it. Gets the respective camera's index passed.
---@alias onCameraDraw fun(camIdx: number)

---@type onCameraDraw
onCameraDraw = nil

---Runs every tick, even when the game is paused, just before the HUD is drawn. Runs once per camera.
---@alias onHUDDraw fun(camIdx: number)

---@type onHUDDraw
onHUDDraw = nil

---Executes every tick after drawing has finished. As the last event of the tick, this event is useful for any cleanup necessary for this frame.
---@alias onDrawEnd fun()

---@type onDrawEnd
onDrawEnd = nil

---Runs in a library just as the library has finished loading. Useful for initializing library events (more info below).
---@alias onInitAPI fun()

---@type onInitAPI
onInitAPI = nil

---Runs at the start of the game, after all libraries have been loaded. This is the first point in time when entities like players, NPCs and blocks are loaded in.
---@alias onStart fun()

---@type onStart
onStart = nil

---Runs when the game is saved.
---@alias onSaveGame fun()

---@type onSaveGame
onSaveGame = nil

--- # Triggered events

---Runs when a player moves to a different section. Prefer this over onLoadSection.
---@alias onSectionChange fun(sectionIdx: number, playerIdx: number)

---@type onSectionChange
onSectionChange = nil

---Runs when any section is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection fun(playerIdx: number)

---@type onLoadSection
onLoadSection = nil

---Runs when section 0 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection0 fun(playerIdx: number)

---@type onLoadSection0
onLoadSection0 = nil

---Runs when section 1 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection1 fun(playerIdx: number)

---@type onLoadSection1
onLoadSection1 = nil

---Runs when section 2 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection2 fun(playerIdx: number)

---@type onLoadSection2
onLoadSection2 = nil

---Runs when section 3 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection3 fun(playerIdx: number)

---@type onLoadSection3
onLoadSection3 = nil

---Runs when section 4 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection4 fun(playerIdx: number)

---@type onLoadSection4
onLoadSection4 = nil

---Runs when section 5 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection5 fun(playerIdx: number)

---@type onLoadSection5
onLoadSection5 = nil

---Runs when section 6 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection6 fun(playerIdx: number)

---@type onLoadSection6
onLoadSection6 = nil

---Runs when section 7 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection7 fun(playerIdx: number)

---@type onLoadSection7
onLoadSection7 = nil

---Runs when section 8 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection8 fun(playerIdx: number)

---@type onLoadSection8
onLoadSection8 = nil

---Runs when section 9 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection9 fun(playerIdx: number)

---@type onLoadSection9
onLoadSection9 = nil

---Runs when section 10 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection10 fun(playerIdx: number)

---@type onLoadSection10
onLoadSection10 = nil

---Runs when section 11 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection11 fun(playerIdx: number)

---@type onLoadSection11
onLoadSection11 = nil

---Runs when section 12 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection12 fun(playerIdx: number)

---@type onLoadSection12
onLoadSection12 = nil

---Runs when section 13 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection13 fun(playerIdx: number)

---@type onLoadSection13
onLoadSection13 = nil

---Runs when section 14 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection14 fun(playerIdx: number)

---@type onLoadSection14
onLoadSection14 = nil

---Runs when section 15 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection15 fun(playerIdx: number)

---@type onLoadSection15
onLoadSection15 = nil

---Runs when section 16 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection16 fun(playerIdx: number)

---@type onLoadSection16
onLoadSection16 = nil

---Runs when section 17 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection17 fun(playerIdx: number)

---@type onLoadSection17
onLoadSection17 = nil

---Runs when section 18 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection18 fun(playerIdx: number)

---@type onLoadSection18
onLoadSection18 = nil

---Runs when section 19 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection19 fun(playerIdx: number)

---@type onLoadSection19
onLoadSection19 = nil

---Runs when section 20 is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@alias onLoadSection20 fun(playerIdx: number)

---@type onLoadSection20
onLoadSection20 = nil

---Executes just after next frame's onLoop when a vanilla SMBX event is called. Passes the name of the called event.
---@alias onEvent fun(eventName: string)

---@type onEvent
onEvent = nil

---Executes <b>immediately</b> when a vanilla SMBX event is called. Passes the name of the called event and a token that can be used to cancel the execution of the event. <Note type="warning">Be careful not to call more events from here, as it might cause crashes.</Note>
---@alias onEventDirect fun(eventToken: EventToken, eventName: string)

---@type onEventDirect
onEventDirect = nil

---Executes <b>immediately</b> when a vanilla SMBX event is called, just after onEventDirect successfully goes through. Passes the name of the called event. Since this event runs only when onEventDirect was not cancelled, it is useful for running code that should happen only when the event actually executed.
---@alias onPostEventDirect fun(eventName: string)

---@type onPostEventDirect
onPostEventDirect = nil

---Executes <b>immediately</b> when a vanilla SMBX message box is scheduled to appear. Passes the content of the message box and a token that can be used to cancel the box from appearing. If a player is talking to an NPC, the respective objects are passed as the third and fourth argument.
---@alias onMessageBox fun(eventToken: EventToken, content: string, player: Player, npcTalkedTo: NPC)

---@type onMessageBox
onMessageBox = nil

---Executes <b>immediately</b> when a block is hit. Passes the block, whether or not it was hit from above, the player if it was the culprit, and a token that can be used to cancel the hit event.
---@alias onBlockHit fun(eventToken: EventToken, hitBlock: Block, fromUpper: boolean, playerOrNil: Player)

---@type onBlockHit
onBlockHit = nil

---Executes <b>immediately</b> when a block is hit, just after onBlockHit goes through. Passes the block, whether or not it was hit from above and the player if it was the culprit. Since this event runs only when onBlockHit was not cancelled, it is useful for running code that should happen only when blocks were actually hit.
---@alias onPostBlockHit fun(hitBlock: Block, fromUpper: boolean, playerOrNil: Player|nil)

---@type onPostBlockHit
onPostBlockHit = nil

---Executes <b>immediately</b> when a block is removed. Passes the block and a token that can be used to cancel the hit event.
---@alias onBlockRemove fun(eventToken: EventToken, hitBlock: Block)

---@type onBlockRemove
onBlockRemove = nil

---Executes <b>immediately</b> when a block is hit, just after onBlockRemove goes through. Passes the block that is being removed. Since this event runs only when onBlockRemove was not cancelled, it is useful for running code that should happen only when blocks were actually removed.
---@alias onPostBlockRemove fun(hitBlock: Block)

---@type onPostBlockRemove
onPostBlockRemove = nil

---Executes when a switch block's color is switched. Passes the switch's color as an integer. <Badge type="tip">You can use switchcolors.lua for extended switch color integration instead.</Badge>
---@alias onColorSwitch fun(color: number)

---@type onColorSwitch
onColorSwitch = nil

---Executes when synced switch state changes and passes the new state as a boolean.
---@alias onSyncSwitch fun(active: boolean)

---@type onSyncSwitch
onSyncSwitch = nil

---Executes when a warp completes (the moment of teleportation).
---@alias onWarp fun(warp: Warp, player: Player)

---@type onWarp
onWarp = nil

---Executes when a warp is initiated.
---@alias onWarpEnter fun(eventToken: EventToken, warp: Warp, player: Player)

---@type onWarpEnter
onWarpEnter = nil

---Executes when a warp is initiated, if the onWarpEnter event was not cancelled.
---@alias onPostWarpEnter fun(warp: Warp, player: Player)

---@type onPostWarpEnter
onPostWarpEnter = nil

---Executes when a state change warning beat occurs and passes the remaining number of warning beeps after this one (last one is 0).
---@alias onBeatWarn fun(beepsLeft: number)

---@type onBeatWarn
onBeatWarn = nil

---Executes when beat state changes and passes the new state as a boolean.
---@alias onBeatStateChange fun(active: boolean)

---@type onBeatStateChange
onBeatStateChange = nil

---Executes <b>immediately</b> when any NPC takes damage. Passes the NPC, the harm type causing the damage, and any culprit if it exists. Additionally, a token that can be used to cancel the hit event is passed.
---@alias onNPCHarm fun(eventToken: EventToken, killedNPC: NPC, harmType: EnemyHarmType, culpritOrNil: NPC|Player|nil)

---@type onNPCHarm
onNPCHarm = nil

---Executes <b>immediately</b> when any NPC takes damage. Passes the NPC, the harm type causing the damage, and any culprit if it exists. Since this event runs only when onNPCHarm was not cancelled, it is useful for running code that should happen only when NPCs were actually hit.
---@alias onPostNPCHarm fun(killedNPC: NPC, harmType: EnemyHarmType, culpritOrNil: NPC|Player|nil)

---@type onPostNPCHarm
onPostNPCHarm = nil

---Executes when any NPC changes its ID. Passes the NPC, the old ID it changed from and the harm type causing the transformation.
---@alias onNPCTransform fun(killedNPC: NPC, oldId: number, reason: EnemyHarmType)

---@type onNPCTransform
onNPCTransform = nil

---Executes <b>immediately</b> when any NPC is killed. Passes the NPC, the harm type causing the kill, and a token that can be used to cancel the death.
---@alias onNPCKill fun(eventToken: EventToken, killedNPC: NPC, harmType: EnemyHarmType)

---@type onNPCKill
onNPCKill = nil

---Executes <b>immediately</b> when any NPC is killed. Passes the NPC and the harm type causing the kill. Since this event runs only when onNPCHarm was not cancelled, it is useful for running code that should happen only when NPCs were actually hit.
---@alias onPostNPCKill fun(killedNPC: NPC, harmType: EnemyHarmType)

---@type onPostNPCKill
onPostNPCKill = nil

---Executes <b>immediately</b> when any NPC is collected. Passes the NPC, the player that collected it, and a token that can be used to cancel the death.
---@alias onNPCCollect fun(eventToken: EventToken, collectedNPC: NPC, player: Player)

---@type onNPCCollect
onNPCCollect = nil

---Executes <b>immediately</b> when any NPC is collected. Passes the NPC and the player that collected it. Since this event runs only when onNPCCollect was not cancelled, it is useful for running code that should happen only when NPCs were actually collected.
---@alias onPostNPCCollect fun(collectedNPC: NPC, player: Player)

---@type onPostNPCCollect
onPostNPCCollect = nil

---Executes <b>immediately</b> when a player takes damage. Passes the Player and a token for cancelling the damage event.
---@alias onPlayerHarm fun(eventToken: EventToken, harmedPlayer: Player)

---@type onPlayerHarm
onPlayerHarm = nil

---Executes <b>immediately</b> when a player takes damage. Passes the Player that takes damage. Since this event runs only when onPlayerHarm was not cancelled, it is useful for running code that should happen only when players were actually hit.
---@alias onPostPlayerHarm fun(harmedPlayer: Player)

---@type onPostPlayerHarm
onPostPlayerHarm = nil

---Executes <b>immediately</b> when a player dies. Passes the Player and a token for cancelling the kill event.
---@alias onPlayerKill fun(eventToken: EventToken, harmedPlayer: Player)

---@type onPlayerKill
onPlayerKill = nil

---Executes <b>immediately</b> when a player dies. Passes the Player that died. Since this event runs only when onPlayerKill was not cancelled, it is useful for running code that should happen only when players were actually killed.
---@alias onPostPlayerKill fun(harmedPlayer: Player)

---@type onPostPlayerKill
onPostPlayerKill = nil

---Executes <b>immediately</b> when a POW effect happens.
---@alias onPOW fun(eventToken: EventToken)

---@type onPOW
onPOW = nil

---Executes <b>immediately</b> when a POW effect happens. Since this event runs only when onPOW was not cancelled, it is useful for running code that should happen only when POW effects actually happen.
---@alias onPostPOW fun()

---@type onPostPOW
onPostPOW = nil

---Executes <b>immediately</b> when a NPC gets hit by a POW effect. Passes an event token for cancellation, the NPC getting hit, and the type of POW effect that happens.
---@alias onNPCPOWHit fun(eventToken: EventToken, hitNPC: NPC, powtype: string)

---@type onNPCPOWHit
onNPCPOWHit = nil

---Executes <b>immediately</b> when a NPC gets hit by a POW effect. Passes the NPC getting hit, and the type of POW effect that happens. Since this event only occurs if onNPCPOWHit was not cancelled, it is useful for cases when the POW effect actually gets applied to the NPC.
---@alias onPostNPCPOWHit fun(hitNPC: NPC, powtype: string)

---@type onPostNPCPOWHit
onPostNPCPOWHit = nil

---Executes <b>immediately</b> when a Block gets hit by a POW effect. Passes an event token for cancellation, the Block getting hit, and the type of POW effect that happens.
---@alias onBlockPOWHit fun(eventToken: EventToken, hitBlock: Block, powtype: string)

---@type onBlockPOWHit
onBlockPOWHit = nil

---Executes <b>immediately</b> when a Block gets hit by a POW effect. Passes the Block getting hit, and the type of POW effect that happens. Since this event only occurs if onBlockPOWHit was not cancelled, it is useful for cases when the POW effect actually gets applied to the Block.
---@alias onPostBlockPOWHit fun(hitBlock: Block, powtype: string)

---@type onPostBlockPOWHit
onPostBlockPOWHit = nil

---Executes when a mouse button is pressed. Passes the button index, the state of the button and its relative X and Y to the SMBX window.
---@alias onMouseButtonEvent fun(mouseButton: number, state: number, x: number, y: number)

---@type onMouseButtonEvent
onMouseButtonEvent = nil

---Executes when a key on a keyboard is pressed, passing the virtual keycode and the string representing the alphanumeric key, if applicable.
---@alias onKeyboardKeyPress fun(vkey: VirtualKeyCode, keyname: string)

---@type onKeyboardKeyPress
onKeyboardKeyPress = nil

---Executes when a key on a keyboard is released, passing the virtual keycode and the string representing the alphanumeric key, if applicable.
---@alias onKeyboardKeyRelease fun(vkey: VirtualKeyCode, keyname: string)

---@type onKeyboardKeyRelease
onKeyboardKeyRelease = nil

---Executes when a key on the keyboard is pressed. Since there is no onKeyboardUp event, the way to check for key releases is to use Misc.GetKeyState.
---@alias onKeyboardPress fun(vkey: VirtualKeyCode)

---@type onKeyboardPress
onKeyboardPress = nil

---Executes when a key on the keyboard is pressed. This event is called when a key on the keyboard is pressed.
---Unlike onKeyboardPress, this event will work while the game is frozen with Misc.pause().
---Since there is no onKeyboardUp event, the way to check for key releases is to use Misc.GetKeyState.
---The third argument represents the string typed by the keystroke.
---May be nil if the pressed key does not result in typed characters, and may be more than
---one character for some input methods in some languages.
---@alias onKeyboardPressDirect fun(vkey: VirtualKeyCode, isARepetitionDueToHolding: boolean, char: string)

---@type onKeyboardPressDirect
onKeyboardPressDirect = nil

---Executes when text is pasted into the game using CTRL + V.
---@alias onPasteText fun(pastedText: string)

---@type onPasteText
onPasteText = nil

---Executes when a key on a controller is pressed, passing a number for a button, the player index the controller is registered to (0 if none), and the name describing the type of controller it is.
---@alias onControllerButtonPress fun(button: number, playerIdx: number, controllerName: string)

---@type onControllerButtonPress
onControllerButtonPress = nil

---Executes when a key on a controller is released, passing a number for a button, the player index the controller is registered to (0 if none), and the name describing the type of controller it is.
---@alias onControllerButtonRelease fun(button: number, playerIdx: number, controllerName: string)

---@type onControllerButtonRelease
onControllerButtonRelease = nil

---Executes when the given player switches controllers.
---@alias onChangeController fun(controllerName: string, playerIdx: number)

---@type onChangeController
onChangeController = nil

---Executes when a player touches a checkpoint. Passes the checkpoint object (not the NPC) and the player that touched the checkpoint.
---@alias onCheckpoint fun(checkpoint: Checkpoint, player: Player)

---@type onCheckpoint
onCheckpoint = nil

---Executes just before the level or world map unloads.
---@alias onExit fun()

---@type onExit
onExit = nil

---Executes just before the level unloads. The levelWinType is according to the [LEVEL_WIN_TYPE_*](/constants/level-victory#level-win-type) constants.
---@alias onExitLevel fun(levelWinType: LevelWinType)

---@type onExitLevel
onExitLevel = nil

---Executes <b>immediately</b> when a player pauses the game. Passes the Player and a token for cancelling the pausing event.
---@alias onPause fun(eventToken: EventToken, pausingPlayer: Player)

---@type onPause
onPause = nil

---Executes <b>immediately</b> when an explosion happens. Passes an event token for cancelling the explosion, as well as the explosion object itself and the player causing it (if any).
---@alias onExplosion fun(eventToken: EventToken, explosion: Explosion, playerSource: Player)

---@type onExplosion
onExplosion = nil

---Executes <b>immediately</b> when an explosion happens, just after onExplosion.
---Passes the explosion object itself and the player causing it (if any).
---Since this only runs when the explosion actually happens, this event is useful for executing code once the explosion is guaranteed.
---@alias onPostExplosion fun(explosion: Explosion, playerSource: Player)

---@type onPostExplosion
onPostExplosion = nil

---Executes when a generator generates an NPC. Passes the generator and the newly generated NPC.
---@alias onNPCGenerated fun(generatorNPC: NPC, generatedNPC: NPC)

---@type onNPCGenerated
onNPCGenerated = nil

---Executes when something changes NPC config. Passes the ID of NPC whose config was changed, as well as the name of the config.
---The new value can be retrieved through `NPC.config[id][configName]`.
---@alias onNPCConfigChange fun(id: number, configName: string)

---@type onNPCConfigChange
onNPCConfigChange = nil

---Executes when something changes Block config. Passes the ID of Block whose config was changed, as well as the name of the config. The new value can be retrieved through Block.config[id][configName].
---@alias onBlockConfigChange fun(id: number, configName: string)

---@type onBlockConfigChange
onBlockConfigChange = nil

---Executes when something changes BGO config. Passes the ID of BGO whose config was changed, as well as the name of the config. The new value can be retrieved through BGO.config[id][configName].
---@alias onBGOConfigChange fun(id: number, configName: string)

---@type onBGOConfigChange
onBGOConfigChange = nil

---Executes once when the game enters an unfocused state. Elements drawn in this event remain visible until the game gains focus again.
---@alias onDrawUnfocusOverlay fun()

---@type onDrawUnfocusOverlay
onDrawUnfocusOverlay = nil

--- # Deprecated

---Legacy version of onTick. Runs at the very start of a tick, even before input updated. **Use onTick.**
---@deprecated
---@alias onLoop fun()

---@type onLoop
onLoop = nil

---Legacy version of onStart. Runs even earlier and is incredibly unsafe. **Use onStart.**
---@deprecated
---@alias onLoad fun()

---@type onLoad
onLoad = nil

---Legacy function executing when a jump begins. Not recommended to be used as it isn't reliable.
---**Poll for player state in onTick or onTickEnd.**
---@deprecated
---@alias onJump fun(playerIdx: number)

---@type onJump
onJump = nil

---Legacy function executing when a jump ends. Not recommended to be used as it isn't reliable.
---**Poll for player state in onTick or onTickEnd.**
---@deprecated
---@alias onJumpEnd fun(playerIdx: number)

---@type onJumpEnd
onJumpEnd = nil

---Legacy function for determining key presses. Executes when a key is pressed.
---**Poll for player.keys in onTick or onInputUpdate.**
---@deprecated
---@alias onKeyDown fun(keyCode: KeyCode, playerIdx: number)

---@type onKeyDown
onKeyDown = nil

---Legacy function for determining key presses. Executes when a key stops being pressed.
---**Poll for player.keys in onTick or onInputUpdate.**
---@deprecated
---@alias onKeyUp fun(keyCode: KeyCode, playerIdx: number)

---@type onKeyUp
onKeyUp = nil
