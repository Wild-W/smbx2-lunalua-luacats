---@meta _

Audio = {}

---@class (exact) MixChunk
--- @field allocated integer|0|1 A boolean indicating whether to free abuf when the chunk is freed.
--- @field abuf integer Pointer to the sample data, which is in the output format and sample rate.
--- @field alen integer Length of abuf in bytes. Carefully modify this value, if you changed it, you should return initial value back on exiting from level or from world to avoid memory leak!
--- @field volume integer 0 = silent, 128 = max volume. This takes effect when mixing.

--- Changes a section's music to the ID of basegame music specified.
--- @param section number The section where the music change occurs.
--- @param musicID number The ID of the basegame music.
--- @param fadeDurationMS number? The fade duration in milliseconds.
function Audio.MusicChange(section, musicID, fadeDurationMS) end

--- Changes a section's music to a custom music track of the given name.
--- @param section number The section where the music change occurs.
--- @param musicName string The name of the custom music track.
--- @param fadeDurationMS number? The fade duration in milliseconds.
function Audio.MusicChange(section, musicName, fadeDurationMS) end

--- Stops the music of the current section with a fade-out effect.
--- @param section number The section where the music fade out occurs.
--- @param fadeDurationMS number The fade duration in milliseconds.
function Audio.MusicFadeOut(section, fadeDurationMS) end

--- Returns if any music is currently playing.
--- @return boolean isPlaying True if any music is currently playing.
function Audio.MusicIsPlaying() end

--- Returns if any music is currently paused.
--- @return boolean isPaused True if any music is currently paused.
function Audio.MusicIsPaused() end

--- Returns if any music is currently fading in or out.
--- @return boolean isFading True if any music is currently fading in or out.
function Audio.MusicIsFading() end

--- Returns the background music's volume.
--- @return number volume The background music's volume (default is 64, max is 128).
function Audio.MusicVolume() end

--- Returns the background music's volume.
--- @return number volume The background music's volume (default is 64, max is 128).
function Audio._GetMusicVolume() end

--- Sets the background music's volume.
--- @param volume number The background music's volume (default is 64, max is 128).
function Audio.MusicVolume(volume) end

--- Rewinds the current music back to the start.
function Audio.MusicRewind() end

--- Gets the number of instrument channels in the current track.
--- @return number count The number of instrument channels.
function Audio.MusicGetInstChannelCount() end

--- Mutes the instrument channel of the given index.
--- @param id number The index of the instrument channel to mute.
function Audio.MusicInstChannelMute(id) end

--- Unmutes the instrument channel of the given index.
--- @param id number The index of the instrument channel to unmute.
function Audio.MusicInstChannelUnmute(id) end

--- Gets the tempo of the current track.
--- @return number tempo The tempo of the current track (-1 if unsupported).
function Audio.MusicGetTempo() end

--- Sets the tempo of the current track.
--- @param tempo number The tempo to set.
function Audio.MusicSetTempo(tempo) end

--- Gets the pitch of the current track.
--- @return number pitch The pitch of the current track (-1 if unsupported).
function Audio.MusicGetPitch() end

--- Sets the pitch of the current track.
--- @param pitch number The pitch to set.
function Audio.MusicSetPitch(pitch) end

--- Gets the speed of the current track.
--- @return number speed The speed of the current track (-1 if unsupported).
function Audio.MusicGetSpeed() end

--- Sets the speed of the current track.
--- @param speed number The speed to set.
function Audio.MusicSetSpeed(speed) end

--- Returns the music title from metadata.
--- @return string title The music title (or filename if empty).
function Audio.MusicTitle() end

--- Returns the title tag from metadata.
--- @return string titleTag The title tag (or empty string if empty).
function Audio.MusicTitleTag() end

--- Returns the artist tag from metadata.
--- @return string artistTag The artist tag (or empty string if empty).
function Audio.MusicArtistTag() end

--- Returns the album tag from metadata.
--- @return string albumTag The album tag (or empty string if empty).
function Audio.MusicAlbumTag() end

--- Returns the copyright tag from metadata.
--- @return string copyrightTag The copyright tag (or empty string if empty).
function Audio.MusicCopyrightTag() end

--- Returns the current position of the playing music in seconds.
--- @return number positionSeconds The current position in seconds.
function Audio.MusicGetPos() end

--- Sets the current position of the playing music in seconds.
--- @param seconds number The position in seconds.
function Audio.MusicSetPos(seconds) end

--- Returns the start of the music's loop.
--- @return number loopStart The start of the loop (-1 if none is set).
function Audio.MusicGetLoopStart() end

--- Returns the length of the music's loop.
--- @return number loopLength The length of the loop (-1 if none is set).
function Audio.MusicGetLoopLength() end

--- Returns the end of the music's loop.
--- @return number loopEnd The end of the loop (-1 if none is set).
function Audio.MusicGetLoopEnd() end

--- Returns the current volume of sound effects.
--- @return number currentVolume The current volume (default and max is 128).
function Audio.MixedSfxVolume() end

--- Sets the current volume of sound effects.
--- @param newVolume number The volume to set (default and max is 128).
function Audio.MixedSfxVolume(newVolume) end

--- Seizes the audio stream for a certain section.
--- @param section number The section to seize the stream for (-1 for all sections or the world map).
function Audio.SeizeStream(section) end

--- Releases the audio stream for a certain section.
--- @param section number The section to release the stream for (-1 for all sections or the world map).
function Audio.ReleaseStream(section) end

--- Releases the audio stream for all seized sections.
function Audio.resetMciSections() end

--- Opens a specified music file.
--- @param filename string The name of the music file.
function Audio.MusicOpen(filename) end

--- Plays the currently loaded music.
function Audio.MusicPlay() end

--- Plays the currently loaded music, fading it in over the specified time.
--- @param fadeMilliseconds number The fade-in duration in milliseconds.
function Audio.MusicPlayFadeIn(fadeMilliseconds) end

--- Stops the currently loaded music.
function Audio.MusicStop() end

--- Stops the currently loaded music, fading it out over the specified time.
--- @param fadeMilliseconds number The fade-out duration in milliseconds.
function Audio.MusicStopFadeOut(fadeMilliseconds) end

--- Pauses the currently loaded music.
function Audio.MusicPause() end

--- Resumes the currently loaded music.
function Audio.MusicResume() end

--- Returns the time since the start of the current music track playback in seconds.
--- @return number currentTime The current playback time in seconds.
function Audio.MusicClock() end

-- moondust wiki

--- Returns the total time of played music since SMBX game launch in seconds.
--- @return number totalTime The total time in seconds.
function Audio.AudioClock() end

--- Seizes control of the music stream from SMBX Engine for a specific section.
--- @param sectionID number The section ID to seize control for (0 to 20). Use -1 for all sections in a level or World Map.
function Audio.SeizeStream(sectionID) end

--- Returns control of the music stream back to SMBX Engine for a specific section.
--- @param sectionID number The section ID to release control for (0 to 20). Use -1 for all sections in a level or World Map.
function Audio.ReleaseStream(sectionID) end

--- Releases the music stream for all seized sections.
function Audio.resetMciSections() end

--- Removes all custom sound effects from buffer and stops all currently playing sounds and loops.
function Audio.clearSFXBuffer() end

--- Plays a sound by either the SMBX Sound ID or a specific file.
--- @param indexOrFileName number|string The index of the SMBX sound or the filename of the custom sound.
function Audio.playSFX(indexOrFileName) end

--- Accesses an overrideable sound. With this, you can override SMBX sounds at runtime.
--- @type table<number, SoundOverride>
Audio.sounds = {}

--- Plays a sound file by chunk pointer with a defined number of loops.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxPlayObj(sfxFile, loops) end

--- Plays a sound file by chunk pointer with a defined number of loops and initial volume value.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param volume number The initial volume value.
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxPlayObjVol(sfxFile, loops, volume) end

--- Plays a sound file by chunk pointer with a defined number of loops and time limit.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxPlayObjTimed(sfxFile, loops, ticks) end

--- Plays a sound file by chunk pointer with a defined number of loops, time limit, and initial volume value.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @param volume number The initial volume value.
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxPlayObjTimedVol(sfxFile, loops, ticks, volume) end

--- Constructs a null Mix_Chunk pointer.
--- @return MixChunk chunk A null Mix_Chunk pointer.
function Audio.newMix_Chunk() end

--- Loads a sound effect file into the buffer and returns a pointer to it.
--- @param fileName string The name of the sound effect file.
--- @return MixChunk chunk The pointer to the sound effect file.
function Audio.SfxOpen(fileName) end

--- Plays a sound file by chunk pointer with a fade-in effect.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxFadeInObj(sfxFile, loops, fade_ms) end

--- Plays a sound file by chunk pointer with a fade-in effect and initial volume value.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @param volume number The initial volume value.
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxFadeInObjVol(sfxFile, loops, fade_ms, volume) end

--- Plays a sound file by chunk pointer with a fade-in effect and time limit.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxFadeInObjTimed(sfxFile, loops, fade_ms, ticks) end

--- Plays a sound file by chunk pointer with a fade-in effect, time limit, and initial volume value.
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @param volume number The initial volume value.
--- @return PlayingSfxInstance instance An object to control the sound clip as it plays/loops.
function Audio.SfxFadeInObjTimedVol(sfxFile, loops, fade_ms, ticks, volume) end

--- Plays a sound file by chunk pointer in a specific channel with a defined number of loops.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @return number channel The channel the sample is played on.
function Audio.SfxPlayCh(Channel, sfxFile, loops) end

--- Plays a sound file by chunk pointer in a specific channel with a defined number of loops and initial volume value.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param volume number The initial volume value.
--- @return number channel The channel the sample is played on.
function Audio.SfxPlayChVol(Channel, sfxFile, loops, volume) end

--- Plays a sound file by chunk pointer in a specific channel with a defined number of loops and time limit.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @return number channel The channel the sample is played on.
function Audio.SfxPlayChTimed(Channel, sfxFile, loops, ticks) end

--- Plays a sound file by chunk pointer in a specific channel with a defined number of loops, time limit, and initial volume value.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @param volume number The initial volume value.
--- @return number channel The channel the sample is played on.
function Audio.SfxPlayChTimedVol(Channel, sfxFile, loops, ticks, volume) end

--- Plays a sound file by chunk pointer in a specific channel with a fade-in effect.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @return number channel The channel the sample is played on.
function Audio.SfxFadeInCh(Channel, sfxFile, loops, fade_ms) end

--- Plays a sound file by chunk pointer in a specific channel with a fade-in effect and initial volume value.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @param volume number The initial volume value.
--- @return number channel The channel the sample is played on.
function Audio.SfxFadeInChVol(Channel, sfxFile, loops, fade_ms, volume) end

--- Plays a sound file by chunk pointer in a specific channel with a fade-in effect and time limit.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @return number channel The channel the sample is played on.
function Audio.SfxFadeInChTimed(Channel, sfxFile, loops, fade_ms, ticks) end

--- Plays a sound file by chunk pointer in a specific channel with a fade-in effect, time limit, and initial volume value.
--- @param Channel number The channel to play the sound in (-1 for any free channel).
--- @param sfxFile MixChunk The sound file chunk pointer.
--- @param loops number The number of loops (0 for once, -1 for forever).
--- @param fade_ms number The fade-in duration in milliseconds.
--- @param ticks number The time limit in milliseconds (-1 for forever).
--- @param volume number The initial volume value.
--- @return number channel The channel the sample is played on.
function Audio.SfxFadeInChTimedVol(Channel, sfxFile, loops, fade_ms, ticks, volume) end

--- Pauses sound or sound loop in a specific channel.
--- @param Channel number The channel to pause the sound in. If -1, pauses sounds in all channels.
function Audio.SfxPause(Channel) end

--- Resumes paused sound or sound loop in a specific channel.
--- @param Channel number The channel to resume the sound in. If -1, resumes sounds in all channels.
function Audio.SfxResume(Channel) end

--- Stops sound or sound loop in a specific channel.
--- @param Channel number The channel to stop the sound in. If -1, stops sounds in all channels.
--- @return number status Always returns 0.
function Audio.SfxStop(Channel) end

--- Changes the timed stoppage of a channel.
--- @param Channel number The channel to change the timed stoppage for.
--- @param ticks number The new time limit in milliseconds.
--- @return number status The status of the operation.
function Audio.SfxExpire(Channel, ticks) end

--- Fades out and stops playing sound or sound loop in a specific channel.
--- @param Channel number The channel to fade out the sound in.
--- @param fade_ms number The fade-out duration in milliseconds.
--- @return number channels The number of channels set to fade out.
function Audio.SfxFadeOut(Channel, fade_ms) end

--- Tells you if a channel is playing or not.
--- @param Channel number The channel to check.
--- @return number status 0 if the channel is not playing. Otherwise, if -1 is passed, returns the number of channels playing. If a specific channel is passed, returns 1 if it is playing.
function Audio.SfxIsPlaying(Channel) end

--- Tells you if a channel is paused or not.
--- @param Channel number The channel to check.
--- @return number status 0 if the channel is not paused. Otherwise, if -1 is passed, returns the number of paused channels. If a specific channel is passed, returns 1 if it is paused.
function Audio.SfxIsPaused(Channel) end

--- Tells you if a channel is fading in, out, or not.
--- @param Channel number The channel to check.
--- @return number status The fading status. Never returns an error.
function Audio.SfxIsFading(Channel) end

--- Sets the volume for a specific channel.
--- @param Channel number The channel to set the volume for.
--- @param volume number The volume level (from 0 to 128).
--- @return number currentVolume The current volume of the channel. If -1 is passed, returns the average volume.
function Audio.SfxVolume(Channel, volume) end

--- Panning stereo effects. This effect will only work on stereo audio.
--- @param Channel number The channel to set the panning for.
--- @param left number The left channel volume.
--- @param right number The right channel volume.
--- @return number status 0 on errors, such as a bad channel, or if Mix_RegisterEffect failed.
function Audio.SfxSetPanning(Channel, left, right) end

--- Sets the distance effect on a channel, simulating attenuation due to distance.
--- @param Channel number The channel to set the distance for.
--- @param distance number The distance value.
--- @return number status 0 on errors, such as an invalid channel, or if Mix_RegisterEffect failed.
function Audio.SfxSetDistance(Channel, distance) end

--- Sets the 3D position effect on a channel.
--- @param Channel number The channel to set the 3D position for.
--- @param angle number The angle from the camera's point of view.
--- @param distance number The distance from the camera.
--- @return number status 0 on errors, such as an invalid channel, or if Mix_RegisterEffect failed.
function Audio.SfxSet3DPosition(Channel, angle, distance) end

--- Reverses the stereo effect, swapping left and right channel sound.
--- @param Channel number The channel to reverse the stereo for.
--- @param flip number The flip value (0 to unregister the effect).
--- @return number status 0 on errors, such as an invalid channel, or if Mix_RegisterEffect failed.
function Audio.SfxReverseStereo(Channel, flip) end

--- Plays a sound by either the SMBX Sound ID.
--- @param index number The index of the SMBX sound.
function playSFX(index) end

--- Plays a WAVE format Sound File.
--- @param fileName string The filename of the custom sound.
function playSFX(fileName) end

--- Plays a Soundfile via SDL2_mixer.
--- @param filename string The filename of the sound file.
function playSFXSDL(filename) end

--- Clears the SFX buffer and stops all custom sounds playing via SDL2_mixer.
function clearSFXBuffer() end

--- Plays the music set by the given section ID.
--- @param section number The section ID to play the music for.
function playMusic(section) end

--- Loads a custom music file into the stream of SDL2_mixer.
--- @param filename string The filename of the custom music file.
function MusicOpen(filename) end

--- Plays the current file in the music stream of SDL2_mixer.
function MusicPlay() end

--- Plays the current file in the music stream with a fade-IN effect via SDL2_mixer.
--- @param milliseconds number The fade-IN duration in milliseconds.
function MusicPlayFadeIn(milliseconds) end

--- Stops playback of the current music stream of SDL2_mixer.
function MusicStop() end

--- Stops playback of the current music stream of SDL2_mixer with a fade-out effect.
--- @param milliseconds number The fade-out duration in milliseconds.
function MusicStopFadeOut(milliseconds) end

--- Sets the current volume level for the music stream of SDL2_mixer.
--- @param volume number The volume level (from 0 to 128).
function MusicVolume(volume) end

---@class PlayingSfxInstance
local PlayingSfxInstance = {}

--- Pauses the object's sound or loop.
function PlayingSfxInstance:Pause() end

--- Resumes the object's paused sound or loop.
function PlayingSfxInstance:Resume() end

--- Stops the object's sound or loop. Always returns 0.
function PlayingSfxInstance:Stop() end

--- Changes the timed stoppage of the object's sound.
--- @param ticks number The new time limit in milliseconds.
function PlayingSfxInstance:Expire(ticks) end

--- Fades out and stops the object's sound or loop with a fade-out effect.
--- @param fade_ms number The fade-out duration in milliseconds.
function PlayingSfxInstance:FadeOut(fade_ms) end

--- Returns true if the object's sound is currently playing.
--- @return boolean isPlaying True if the sound is playing.
function PlayingSfxInstance:IsPlaying() end

--- Returns true if the object's sound is currently paused.
--- @return boolean isPaused True if the sound is paused.
function PlayingSfxInstance:IsPaused() end

--- Returns true if the object's sound is currently fading in or out.
--- @return boolean isFading True if the sound is fading.
function PlayingSfxInstance:IsFading() end

--- Sets the volume of the object's sound.
--- @param volume number The volume level (from 0 to 128).
function PlayingSfxInstance:Volume(volume) end

--- Panning stereo effects. This effect will only work on stereo audio.
--- The easiest way to do true panning is to call SetPanning(left, 254 - left).
--- @param left number The left channel volume.
--- @param right number The right channel volume.
--- @note Setting both left and right to 255 will undo the effect from the object.
function PlayingSfxInstance:SetPanning(left, right) end

--- This effect simulates a simple attenuation of volume due to distance.
--- The volume never quite reaches silence, even at max distance.
--- @param distance number The distance value.
--- @note Using a distance of 0 will undo the effect.
function PlayingSfxInstance:SetDistance(distance) end

--- This effect emulates a simple 3D audio effect.
--- By giving it the angle and distance from the camera's point of view, the effect pans and attenuates volumes.
--- @param angle number The angle from the camera's point of view.
--- @param distance number The distance from the camera.
--- @note Using angle and distance of 0 will undo the effect.
function PlayingSfxInstance:Set3DPosition(angle, distance) end

--- Simple reverse stereo, swaps left and right channel sound.
--- @param flip number The flip value (0 to undo the effect).
function PlayingSfxInstance:SetReverseStereo(flip) end

---@param alias string
---@param muted boolean
function PlayingSfxInstance:__setMuteForAlias(alias, muted) end

---@param alias string
---@param chunk MixChunk
function PlayingSfxInstance:__setOverrideForAlias(alias, chunk) end

---@param alias string
---@return boolean isMuted
function PlayingSfxInstance:__getMuteForAlias(alias) end

---@param alias string
---@return MixChunk chunk
function PlayingSfxInstance:__getChunkForAlias(alias) end

---@class SoundOverride
--- @field sfx MixChunk The currrent sound effect audio
--- @field muted boolean Whether the sound effect is muted
