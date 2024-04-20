---@meta


--- # Per-tick events

---Runs every tick. Executes just after input has updated, making it useful for pause menu navigation.
---@type fun()
onInputUpdate = nil

---Runs every tick the game isn't paused. Executes directly before SMBX internal code, making it useful for handling (for example) player input during gameplay.
---@type fun()
onTick = nil

---Runs every tick the game isn't paused. Executes directly after SMBX internal code, making it useful for reacting to what happened in the internal loop before the scene is drawn.
---@type fun()
onTickEnd = nil

---Runs every tick, even when the game is paused. Executes once for each camera, just after the camera's position was internally updated. Good for making modifications to camera position. Passes the index of the current camera.
---@type fun(camIdx: number)
onCameraUpdate = nil

---Runs every tick, even when the game is paused. Executes at the start of the tick's draw cycle. Useful as it's the only draw function that only executes once per tick.
---@type fun()
onDraw = nil

---Runs every tick, even when the game is paused. Executes once for each camera, just before the scene is rendered for it. Gets the respective camera's index passed.
---@type fun(camIdx: number)
onCameraDraw = nil

---Runs every tick, even when the game is paused, just before the HUD is drawn. Runs once per camera.
---@type fun(camIdx: number)
onHUDDraw = nil

---Executes every tick after drawing has finished. As the last event of the tick, this event is useful for any cleanup necessary for this frame.
---@type fun()
onDrawEnd = nil

---Runs in a library just as the library has finished loading. Useful for initializing library events (more info below).
---@type fun()
onInitAPI = nil

---Runs at the start of the game, after all libraries have been loaded. This is the first point in time when entities like players, NPCs and blocks are loaded in.
---@type fun()
onStart = nil

---Runs when the game is saved.
---@type fun()
onSaveGame = nil

--- # Triggered events

---Runs when a player moves to a different section. Prefer this over onLoadSection.
---@type fun(sectionIdx: number, playerIdx: number)
onSectionChange = nil

---Runs when any section is loaded. Just like onLoopSection, this function will be called once per player. Prefer onSectionChange.
---@type fun(playerIdx: number)
onLoadSection = nil

---Executes just after next frame's onLoop when a vanilla SMBX event is called. Passes the name of the called event.
---@type fun(eventName: string)
onEvent = nil

---Executes <b>immediately</b> when a vanilla SMBX event is called. Passes the name of the called event and a token that can be used to cancel the execution of the event. <Note type="warning">Be careful not to call more events from here, as it might cause crashes.</Note>
---@type fun(eventToken: EventToken, eventName: string)
onEventDirect = nil

---Executes <b>immediately</b> when a vanilla SMBX event is called, just after onEventDirect successfully goes through. Passes the name of the called event. Since this event runs only when onEventDirect was not cancelled, it is useful for running code that should happen only when the event actually executed.
---@type fun(eventName: string)
onPostEventDirect = nil

---Executes <b>immediately</b> when a vanilla SMBX message box is scheduled to appear. Passes the content of the message box and a token that can be used to cancel the box from appearing. If a player is talking to an NPC, the respective objects are passed as the third and fourth argument.
---@type fun(eventToken: EventToken, content: string, player: Player, npcTalkedTo: NPC)
onMessageBox = nil

---Executes <b>immediately</b> when a block is hit. Passes the block, whether or not it was hit from above, the player if it was the culprit, and a token that can be used to cancel the hit event. 
---@type fun(eventToken: EventToken, hitBlock: Block, fromUpper: bool, playerOrNil: Player)
onBlockHit = nil

---Executes <b>immediately</b> when a block is hit, just after onBlockHit goes through. Passes the block, whether or not it was hit from above and the player if it was the culprit. Since this event runs only when onBlockHit was not cancelled, it is useful for running code that should happen only when blocks were actually hit.
---@type fun(hitBlock: Block, fromUpper: bool, playerOrNil: Player|nil)
onPostBlockHit = nil

---Executes <b>immediately</b> when a block is removed. Passes the block and a token that can be used to cancel the hit event. 
---@type fun(eventToken: EventToken, hitBlock: Block)
onBlockRemove = nil

---Executes <b>immediately</b> when a block is hit, just after onBlockRemove goes through. Passes the block that is being removed. Since this event runs only when onBlockRemove was not cancelled, it is useful for running code that should happen only when blocks were actually removed.
---@type fun(hitBlock: Block)
onPostBlockRemove = nil

---Executes when a switch block's color is switched. Passes the switch's color as an integer. <Badge type="tip">You can use switchcolors.lua for extended switch color integration instead.</Badge>
---@type fun(color: number)
onColorSwitch = nil

---Executes when synced switch state changes and passes the new state as a bool.
---@type fun(active: bool)
onSyncSwitch = nil

---Executes when a warp completes (the moment of teleportation).
---@type fun(warp: Warp, player: Player)
onWarp = nil

---Executes when a warp is initiated.
---@type fun(eventToken: EventToken, warp: Warp, player: Player)
onWarpEnter = nil

---Executes when a warp is initiated, if the onWarpEnter event was not cancelled.
---@type fun(warp: Warp, player: Player)
onPostWarpEnter = nil

---Executes when a state change warning beat occurs and passes the remaining number of warning beeps after this one (last one is 0).
---@type fun(beepsLeft: number)
onBeatWarn = nil

---Executes when beat state changes and passes the new state as a bool.
---@type fun(active: bool)
onBeatStateChange = nil

---Executes <b>immediately</b> when any NPC takes damage. Passes the NPC, the harm type causing the damage, and any culprit if it exists. Additionally, a token that can be used to cancel the hit event is passed.
---@type fun(eventToken: EventToken, killedNPC: NPC, harmType: EnemyHarmType, culpritOrNil: NPC|Player|nil)
onNPCHarm = nil

---Executes <b>immediately</b> when any NPC takes damage. Passes the NPC, the harm type causing the damage, and any culprit if it exists. Since this event runs only when onNPCHarm was not cancelled, it is useful for running code that should happen only when NPCs were actually hit.
---@type fun(killedNPC: NPC, harmType: EnemyHarmType, culpritOrNil: NPC|Player|nil)
onPostNPCHarm = nil

---Executes when any NPC changes its ID. Passes the NPC, the old ID it changed from and the harm type causing the transformation.
---@type fun(killedNPC: NPC, oldId: number, reason: EnemyHarmType)
onNPCTransform = nil

---Executes <b>immediately</b> when any NPC is killed. Passes the NPC, the harm type causing the kill, and a token that can be used to cancel the death.
---@type fun(eventToken: EventToken, killedNPC: NPC, harmType: EnemyHarmType)
onNPCKill = nil

---Executes <b>immediately</b> when any NPC is killed. Passes the NPC and the harm type causing the kill. Since this event runs only when onNPCHarm was not cancelled, it is useful for running code that should happen only when NPCs were actually hit.
---@type fun(killedNPC: NPC, harmType: EnemyHarmType)
onPostNPCKill = nil

---Executes <b>immediately</b> when any NPC is collected. Passes the NPC, the player that collected it, and a token that can be used to cancel the death.
---@type fun(eventToken: EventToken, collectedNPC: NPC, player: Player)
onNPCCollect = nil

---Executes <b>immediately</b> when any NPC is collected. Passes the NPC and the player that collected it. Since this event runs only when onNPCCollect was not cancelled, it is useful for running code that should happen only when NPCs were actually collected.
---@type fun(collectedNPC: NPC, player: Player)
onPostNPCCollect = nil

---Executes <b>immediately</b> when a player takes damage. Passes the Player and a token for cancelling the damage event.
---@type fun(eventToken: EventToken, harmedPlayer: Player)
onPlayerHarm = nil

---Executes <b>immediately</b> when a player takes damage. Passes the Player that takes damage. Since this event runs only when onPlayerHarm was not cancelled, it is useful for running code that should happen only when players were actually hit.
---@type fun(harmedPlayer: Player)
onPostPlayerHarm = nil

---Executes <b>immediately</b> when a player dies. Passes the Player and a token for cancelling the kill event.
---@type fun(eventToken: EventToken, harmedPlayer: Player)
onPlayerKill = nil

---Executes <b>immediately</b> when a player dies. Passes the Player that died. Since this event runs only when onPlayerKill was not cancelled, it is useful for running code that should happen only when players were actually killed.
---@type fun(harmedPlayer: Player)
onPostPlayerKill = nil

---Executes <b>immediately</b> when a POW effect happens.
---@type fun(eventToken: EventToken)
onPOW = nil

---Executes <b>immediately</b> when a POW effect happens. Since this event runs only when onPOW was not cancelled, it is useful for running code that should happen only when POW effects actually happen.
---@type fun()
onPostPOW = nil

---Executes <b>immediately</b> when a NPC gets hit by a POW effect. Passes an event token for cancellation, the NPC getting hit, and the type of POW effect that happens.
---@type fun(eventToken: EventToken, hitNPC: NPC, powtype: string)
onNPCPOWHit = nil

---Executes <b>immediately</b> when a NPC gets hit by a POW effect. Passes the NPC getting hit, and the type of POW effect that happens. Since this event only occurs if onNPCPOWHit was not cancelled, it is useful for cases when the POW effect actually gets applied to the NPC.
---@type fun(hitNPC: NPC, powtype: string)
onPostNPCPOWHit = nil

---Executes <b>immediately</b> when a Block gets hit by a POW effect. Passes an event token for cancellation, the Block getting hit, and the type of POW effect that happens.
---@type fun(eventToken: EventToken, hitBlock: Block, powtype: string)
onBlockPOWHit = nil

---Executes <b>immediately</b> when a Block gets hit by a POW effect. Passes the Block getting hit, and the type of POW effect that happens. Since this event only occurs if onBlockPOWHit was not cancelled, it is useful for cases when the POW effect actually gets applied to the Block.
---@type fun(hitBlock: Block, powtype: string)
onPostBlockPOWHit = nil

---Executes when a mouse button is pressed. Passes the button index, the state of the button and its relative X and Y to the SMBX window.
---@type fun(mouseButton: number, state: number, x: number, y: number)
onMouseButtonEvent = nil

---Executes when a key on a keyboard is pressed, passing the virtual keycode and the string representing the alphanumeric key, if applicable.
---@type fun(vkey: VirtualKeyCode, keyname: string)
onKeyboardKeyPress = nil

---Executes when a key on a keyboard is released, passing the virtual keycode and the string representing the alphanumeric key, if applicable.
---@type fun(vkey: VirtualKeyCode, keyname: string)
onKeyboardKeyRelease = nil

---Executes when a key on the keyboard is pressed. Since there is no onKeyboardUp event, the way to check for key releases is to use Misc.GetKeyState.
---@type fun(vkey: VirtualKeyCode)
onKeyboardPress = nil

---Executes when a key on the keyboard is pressed. This event is called when a key on the keyboard is pressed.
---Unlike onKeyboardPress, this event will work while the game is frozen with Misc.pause().
---Since there is no onKeyboardUp event, the way to check for key releases is to use Misc.GetKeyState.
---The third argument represents the string typed by the keystroke.
---May be nil if the pressed key does not result in typed characters, and may be more than
---one character for some input methods in some languages.
---@type fun(vkey: VirtualKeyCode, isARepetitionDueToHolding: boolean, char: string)
onKeyboardPressDirect = nil

---Executes when text is pasted into the game using CTRL + V.
---@type fun(pastedText: string)
onPasteText = nil

---Executes when a key on a controller is pressed, passing a number for a button, the player index the controller is registered to (0 if none), and the name describing the type of controller it is.
---@type fun(button: number, playerIdx: number, controllerName: string)
onControllerButtonPress = nil

---Executes when a key on a controller is released, passing a number for a button, the player index the controller is registered to (0 if none), and the name describing the type of controller it is.
---@type fun(button: number, playerIdx: number, controllerName: string)
onControllerButtonRelease = nil

---Executes when the given player switches controllers.
---@type fun(controllerName: string, playerIdx: number)
onChangeController = nil

---Executes when a player touches a checkpoint. Passes the checkpoint object (not the NPC) and the player that touched the checkpoint.
---@type fun(checkpoint: CheckPoint, player: Player)
onCheckpoint = nil

---Executes just before the level or world map unloads.
---@type fun()
onExit = nil

---Executes just before the level unloads. The levelWinType is according to the [LEVEL_WIN_TYPE_*](/constants/level-victory#level-win-type) constants.
---@type fun(levelWinType: LevelWinType)
onExitLevel = nil

---Executes <b>immediately</b> when a player pauses the game. Passes the Player and a token for cancelling the pausing event.
---@type fun(eventToken: EventToken, pausingPlayer: Player)
onPause = nil

---Executes <b>immediately</b> when an explosion happens. Passes an event token for cancelling the explosion, as well as the explosion object itself and the player causing it (if any).
---@type fun(eventToken: EventToken, explosion: Explosion, playerSource: Player)
onExplosion = nil

---Executes <b>immediately</b> when an explosion happens, just after onExplosion.
---Passes the explosion object itself and the player causing it (if any).
---Since this only runs when the explosion actually happens, this event is useful for executing code once the explosion is guaranteed.
---@type fun(explosion: Explosion, playerSource: Player)
onPostExplosion = nil

---Executes when a generator generates an NPC. Passes the generator and the newly generated NPC.
---@type fun(generatorNPC: NPC, generatedNPC: NPC)
onNPCGenerated = nil

---Executes when something changes NPC config. Passes the ID of NPC whose config was changed, as well as the name of the config.
---The new value can be retrieved through `NPC.config[id][configName]`.
---@type fun(id: number, configName: string)
onNPCConfigChange = nil

---Executes when something changes Block config. Passes the ID of Block whose config was changed, as well as the name of the config. The new value can be retrieved through Block.config[id][configName].
---@type fun(id: number, configName: string)
onBlockConfigChange = nil

---Executes when something changes BGO config. Passes the ID of BGO whose config was changed, as well as the name of the config. The new value can be retrieved through BGO.config[id][configName].
---@type fun(id: number, configName: string)
onBGOConfigChange = nil

---Executes once when the game enters an unfocused state. Elements drawn in this event remain visible until the game gains focus again.
---@type fun()
onDrawUnfocusOverlay = nil

--- # Deprecated

---Legacy version of onTick. Runs at the very start of a tick, even before input updated. **Use onTick.**
---@deprecated
---@type fun()
onLoop = nil

---Legacy version of onStart. Runs even earlier and is incredibly unsafe. **Use onStart.**
---@deprecated
---@type fun()
onLoad = nil

---Legacy function executing when a jump begins. Not recommended to be used as it isn't reliable.
---**Poll for player state in onTick or onTickEnd.**
---@deprecated
---@type fun(playerIdx: number)
onJump = nil

---Legacy function executing when a jump ends. Not recommended to be used as it isn't reliable.
---**Poll for player state in onTick or onTickEnd.**
---@deprecated
---@type fun(playerIdx: number)
onJumpEnd = nil

---Legacy function for determining key presses. Executes when a key is pressed.
---**Poll for player.keys in onTick or onInputUpdate.**
---@deprecated
---@type fun(keyCode: KeyCode, playerIdx: number)
onKeyDown = nil

---Legacy function for determining key presses. Executes when a key stops being pressed.
---**Poll for player.keys in onTick or onInputUpdate.**
---@deprecated
---@type fun(keyCode: KeyCode, playerIdx: number)
onKeyUp = nil

