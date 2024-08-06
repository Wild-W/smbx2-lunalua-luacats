---@meta

---Allows you to play and manipulate sound effects.
---@class SFX
SFX = {}

---An audio source type that originates from a single point.
SFX.SOURCE_POINT = 0
---An audio source type that originates from a circle.
SFX.SOURCE_CIRCLE = 1
---An audio source type that originates from an axis-aligned box.
SFX.SOURCE_BOX = 2
---An audio source type that originates from a line.
SFX.SOURCE_LINE = 3
---A listening position centered on the player.
SFX.LISTEN_PLAYER = 0
---A listening position centered on the middle of the camera.
SFX.LISTEN_CAMERA = 1
---Audio distance falloff mode that does not fade the audio with distance.
SFX.FALLOFF_NONE = function() end
---Audio distance falloff mode that fades the audio linearly with distance.
SFX.FALLOFF_LINEAR = function() end
---Audio distance falloff mode that fades the audio with the inverse square of the distance (closest to physically accurate).
SFX.FALLOFF_SQUARE = function() end

---@class AudioSourceArgs
--- @field x number The X position of the audio source.
--- @field y number The Y position of the audio source.
--- @field falloffRadius number The distance from the source that the listener needs to be before the sound is silent.
--- @field sound number|string|MixChunk|SFXList The sound ID/file path/object to play.
--- @field falloffType function A falloff function to use. Defaults to `SFX.FALLOFF_SQUARE`.
--- @field type number The shape of the audio source. Defaults to `SFX.SOURCE_POINT`.
--- @field play boolean Whether the sound should play immediately. Defaults to `true`.
--- @field loops number The number of loops for this sound to play for. Defaults to `0`.
--- @field volume number The volume of this audio source. Defaults to `1`.
--- @field parent any The parent object this audio source is attached to.
--- @field tags string[] A list of string tags to apply to this audio object.
--- @field tag string A single string tag to apply to this audio object.
--- @field sourceRadius number The radius of the audio source circle. Only if type is `CIRCLE`.
--- @field sourceWidth number The width of the audio source box. Only if type is `BOX`.
--- @field sourceHeight number The height of the audio source box. Only if type is `BOX`.
--- @field sourceVector Vector2 The vector describing the source line. Only if type is `LINE`.

---@class SFXArgs
--- @field sound number|string|MixChunk|SFXList The sound ID/file path/object to play.
--- @field loops number The number of loops for this sound to play for. Defaults to `1`.
--- @field volume number The volume of this audio source. Defaults to `1`.
--- @field pan number The left/right panning of this audio clip. Defaults to `0`.
--- @field tags string[] A list of string tags to apply to this audio object.
--- @field tag string A single string tag to apply to this audio object.
--- @field delay number The number of frames before the same sound effect can be played again. Defaults to `4`.

--- Creates a new physical audio source in the world.
--- @param args AudioSourceArgs A table containing the arguments for the audio source.
--- @return AudioSource source The created audio source.
function SFX.create(args) end

--- Plays a sound effect once.
--- @param sound number|string|MixChunk|SFXList The sound ID/file path/object to play.
--- @return SoundEffect sound The sound effect being played.
function SFX.play(sound) end

--- Plays a sound effect once with the given volume.
--- @param sound number|string|MixChunk|SFXList The sound ID/file path/object to play.
--- @param volume number The volume of the sound effect.
--- @return SoundEffect sound The sound effect being played.
function SFX.play(sound, volume) end

--- Plays a sound effect with the given volume and number of loops.
--- @param sound number|string|MixChunk|SFXList The sound ID/file path/object to play.
--- @param volume number The volume of the sound effect.
--- @param loops number The number of loops for this sound to play for.
--- @return SoundEffect sound The sound effect being played.
function SFX.play(sound, volume, loops) end

--- Plays a sound effect with the given volume, number of loops, and a specified buffer delay.
--- @param sound number|string|MixChunk|SFXList The sound ID/file path/object to play.
--- @param volume number The volume of the sound effect.
--- @param loops number The number of loops for this sound to play for.
--- @param delay number The buffer delay before the same sound effect can be played again.
--- @return SoundEffect sound The sound effect being played.
function SFX.play(sound, volume, loops, delay) end

--- Plays a sound effect with the given arguments.
--- @param args SFXArgs A table containing the arguments for the sound effect.
--- @return SoundEffect sound The sound effect being played.
function SFX.play(args) end

--- Loads a sound file into a MixChunk.
--- @param path string The path to the sound file.
--- @return MixChunk soundObject The loaded sound object.
function SFX.open(path) end

---@class SFX
SFX = {}

--- Should the audio from AudioSource objects be listened to from the player (`SFX.LISTEN_PLAYER`) or the camera (`SFX.LISTEN_CAMERA`)?
---@type number
SFX.listener = 0

--- A special table that automatically populates with any tag provided to a sound effect. This can be used to adjust the volume of many different sounds simultaneously.
---@type table<string, number>
SFX.volume = {}

---@class AudioSource
local AudioSource = {}

--- Resumes this audio source, if it was paused.
function AudioSource:play() end

--- Pauses the audio source, if it is playing.
function AudioSource:stop() end

--- Destroys the audio source, stopping it playing and preventing it from being referenced again.
function AudioSource:destroy() end

---@type number The X coordinate of the audio source.
AudioSource.x = 0

---@type number The Y coordinate of the audio source.
AudioSource.y = 0

---@type number The shape of the audio source, from the `SFX.SOURCE_` constants.
AudioSource.type = 0

---@type number The distance from the source that the listener needs to be before the sound is silent.
AudioSource.falloffRadius = 0

---@type function The current falloff function.
AudioSource.falloffType = function() end

---@type MixChunk The current sound effect.
AudioSource.sound = nil

---@type boolean Whether the sound is currently playing or not.
AudioSource.playing = false

---@type number The number of loops the sound is playing.
AudioSource.loops = 0

---@type boolean Whether or not the sound effect can currently be heard.
AudioSource.audible = false

---@type number The volume of the audio source.
AudioSource.volume = 1

---@type any The parent object this audio source is attached to.
AudioSource.parent = nil

---@type number The radius of the audio source circle.
AudioSource.sourceRadius = 0

---@type number The width of the audio source box.
AudioSource.sourceWidth = 0

---@type number The height of the audio source box.
AudioSource.sourceHeight = 0

---@type Vector2 The vector describing the source line.
AudioSource.sourceVector = nil

---@type boolean Returns `false` if the audio source has been destroyed.
AudioSource.isValid = false

---@class SoundEffect
local SoundEffect = {}

--- Pauses the sound effect.
function SoundEffect:pause() end

--- Resumes the paused sound effect.
function SoundEffect:resume() end

--- Stops the sound effect completely, effectively ending it early.
function SoundEffect:stop() end

--- Stops the sound effect after the specified number of frames.
--- @param frames number The number of frames after which the sound effect will stop.
function SoundEffect:expire(frames) end

--- Fades out the sound effect over the specified number of milliseconds (seconds * 1000).
--- @param milliseconds number The number of milliseconds over which to fade out the sound.
function SoundEffect:fadeout(milliseconds) end

--- Returns `true` if the sound is currently playing.
--- @return boolean playing Whether the sound is currently playing.
function SoundEffect:isplaying() end

--- Returns `true` if the sound is currently paused.
--- @return boolean paused Whether the sound is currently paused.
function SoundEffect:ispaused() end

--- Returns `true` if the sound is currently fading out.
--- @return boolean fading Whether the sound is currently fading out.
function SoundEffect:isfading() end

---@type number The volume of the sound effect.
SoundEffect.volume = 1

---@type number The panning of the sound effect.
SoundEffect.pan = 0

---@type string[] A list of the tags associated with this sound effect.
SoundEffect.tags = {}

---@type boolean Returns `false` if the sound effect has finished or was stopped.
SoundEffect.isValid = false
