---@meta _

---@class Routines
Routine = {}

---@param ...unknown
---@return ...
function Routine.waitSeconds(...) end

--- Creates a new coroutine and runs it. Additional arguments are passed to the function f. The `status` and `msg` return values store error messages and information about the coroutine, which are not necessary for most use cases.
--- @param f function The function to run in the coroutine.
--- @param ... any Additional arguments passed to the function.
--- @return Routine routine The created coroutine.
--- @return string status The status of the coroutine.
--- @return string msg The message of the coroutine.
function Routine.run(f, ...) end

--- Exits the current coroutine, resuming it after the specified number of seconds. If `whilePaused` is set to `true`, this timer will continue to count down even while the game is paused. By default, `whilePaused` is false.
--- @param seconds number The number of seconds to wait.
--- @param whilePaused boolean? Whether to continue counting down while the game is paused.
--- @return any yield The yield object.
function Routine.wait(seconds, whilePaused) end

--- Exits the current coroutine, resuming it after the specified number of frames. If `whilePaused` is set to `true`, this timer will continue to count down even while the game is paused. By default, `whilePaused` is false.
--- @param frames number The number of frames to wait.
--- @param whilePaused boolean? Whether to continue counting down while the game is paused.
--- @return any yield The yield object.
function Routine.waitFrames(frames, whilePaused) end

--- Exits the current coroutine, resuming it on the next frame. If `whilePaused` is set to `true`, the coroutine will resume even if the game is paused. By default, `whilePaused` is false.
--- @param whilePaused boolean? Whether to resume even if the game is paused.
--- @return any yield The yield object.
function Routine.skip(whilePaused) end

--- Exits the current coroutine, resuming it after the specified number of seconds, adjusted for frame rate. If `whilePaused` is set to `true`, this timer will continue to count down even while the game is paused. By default, `whilePaused` is false. This should not be used for gameplay, as it can cause things to go out of sync, and should be reserved for purely decorative elements.
--- @param seconds number The number of seconds to wait, adjusted for frame rate.
--- @param whilePaused boolean? Whether to continue counting down while the game is paused.
--- @return any yield The yield object.
function Routine.waitRealSeconds(seconds, whilePaused) end

--- Exits the current coroutine, resuming it after the specified key is pressed.
--- @param key KeyCode The key to wait for.
--- @return any yield The yield object.
function Routine.waitInput(key) end

--- Exits the current coroutine, resuming it after the `Routine.signal` is called. If a table is passed as the `signal`, by default it will be considered a list of signals, all of which must be signalled before the coroutine resumes. If `isTable` is set to `true`, the `signal` argument will always be considered a single object, even if it is a table.
--- @param signal any The signal to wait for.
--- @param isTable boolean? Whether to consider the signal as a single object even if it is a table.
--- @return any yield The yield object.
function Routine.waitSignal(signal, isTable) end

--- Exits the current coroutine, resuming it after the specified vanilla SMBX event is triggered.
--- @param name string The name of the event to wait for.
--- @return any yield The yield object.
function Routine.waitEvent(name) end

--- Exits the current coroutine.
--- @return any yield The yield object.
function Routine.yield() end

--- Resumes a coroutine that was yielded via `Routine.yield`.
--- @param routine Routine The coroutine to resume.
--- @return string status The status of the coroutine.
--- @return string msg The message of the coroutine.
function Routine.continue(routine) end

--- Abandons a waiting coroutine, preventing it from resuming.
--- @param routine Routine The coroutine to abort.
function Routine.abort(routine) end

--- Signals all coroutines that are waiting for the given `signal` via `Routine.waitSignal`. Routines that are waiting on only this signal will be resumed immediately.
--- @param signal any The signal to send.
function Routine.signal(signal) end

--- Can only be used from within a coroutine. Waits for the specified number of frames, running the function `f` on each frame. If `whilePaused` is set to `true`, this timer will continue to count down even while the game is paused. By default, `whilePaused` is false.
--- @param frames number The number of frames to wait.
--- @param f function The function to run on each frame.
--- @param whilePaused boolean? Whether to continue counting down while the game is paused.
function Routine.loop(frames, f, whilePaused) end

--- Creates a timer that will run the function `f` after the specified number of seconds. If `repeated` is set to `true`, the timer will repeat indefinitely. If `repeated` is set to a number, the timer will repeat the specified number of times. By default, the timer will not repeat. If `whilePaused` is set to `true`, this timer will continue to count down even while the game is paused. By default, `whilePaused` is false.
--- @param seconds number The number of seconds to wait.
--- @param f function The function to run after the wait.
--- @param repeated boolean|number Whether to repeat the timer, or the number of times to repeat.
--- @param whilePaused boolean? Whether to continue counting down while the game is paused.
--- @return Routine routine The created routine.
function Routine.setTimer(seconds, f, repeated, whilePaused) end

--- Creates a timer that will run the function `f` after the specified number of frames. If `repeated` is set to `true`, the timer will repeat indefinitely. If `repeated` is set to a number, the timer will repeat the specified number of times. By default, the timer will not repeat. If `whilePaused` is set to `true`, this timer will continue to count down even while the game is paused. By default, `whilePaused` is false.
--- @param frames number The number of frames to wait.
--- @param f function The function to run after the wait.
--- @param repeated boolean|number? Whether to repeat the timer, or the number of times to repeat.
--- @param whilePaused boolean? Whether to continue counting down while the game is paused.
--- @return Routine routine The created routine.
function Routine.setFrameTimer(frames, f, repeated, whilePaused) end

--- Creates a timer that will run the function `f` after the specified number of seconds, adjusted for frame rate. If `repeated` is set to `true`, the timer will repeat indefinitely. If `repeated` is set to a number, the timer will repeat the specified number of times. By default, the timer will not repeat. If `whilePaused` is set to `true`, this timer will continue to count down even while the game is paused. By default, `whilePaused` is false. This should not be used for gameplay, as it can cause things to go out of sync, and should be reserved for purely decorative elements.
--- @param seconds number The number of seconds to wait, adjusted for frame rate.
--- @param f function The function to run after the wait.
--- @param repeated boolean|number Whether to repeat the timer, or the number of times to repeat.
--- @param whilePaused boolean? Whether to continue counting down while the game is paused.
--- @return Routine routine The created routine.
function Routine.setRealTimer(seconds, f, repeated, whilePaused) end

--- Creates an event that will run the function `f` when the specified key is pressed. If `consume` is set to true, the event will be destroyed after being run once, otherwise it will run every time the key is pressed. By default, `consume` is false.
--- @param key KeyCode The key to wait for.
--- @param f function The function to run when the key is pressed.
--- @param consume boolean? Whether to consume the event after running once.
--- @return Routine routine The created routine.
function Routine.registerKeyEvent(key, f, consume) end

--- Creates an event that will run the function `f` when the specified vanilla SMBX event is triggered. If `consume` is set to true, the event will be destroyed after being run once, otherwise it will run every time the event is triggered. By default, `consume` is false.
--- @param name string The name of the event to wait for.
--- @param f function The function to run when the event is triggered.
--- @param consume boolean? Whether to consume the event after running once.
--- @return Routine routine The created routine.
function Routine.registerVanillaEvent(name, f, consume) end

--- Creates an event that will run the function `f` when the specified vanilla SMBX event is triggered. If `consume` is set to true, the event will be destroyed after being run once, otherwise it will run every time the event is triggered. By default, `consume` is false.
--- @param name string The name of the event to wait for.
--- @param f function The function to run when the event is triggered.
--- @param consume boolean? Whether to consume the event after running once.
--- @return Routine routine The created routine.
function Routine.registerSMBXEvent(name, f, consume) end

--- Pauses the waiting timer for a coroutine that is currently waiting via `Routine.wait`, `Routine.waitFrames`, `Routine.waitRealSeconds`, or `Routine.waitSeconds`. This also applies to coroutines created using `Routine.setTimer`, `Routine.setFrameTimer`, and `Routine.setRealTimer`.
--- @param routine Routine The coroutine to pause.
function Routine.pause(routine) end

--- Resumes a coroutine timer that was paused using `Routine.pause`.
--- @param routine Routine The coroutine to resume.
function Routine.resume(routine) end

--- Gets the number of frames remaining until a coroutine resumes if it was made to wait via `Routine.wait`, `Routine.waitFrames`, or `Routine.waitSeconds`. Gets the number of seconds remaining if it was made to wait via `Routine.waitRealSeconds`.
--- @param routine Routine The coroutine to get the time for.
--- @return number time The remaining time until the coroutine resumes.
function Routine.getTime(routine) end

--- Can only be used from within a coroutine. Breaks out of a timer created via `Routine.setTimer`, `Routine.setFrameTimer`, or `Routine.setRealTimer`, or an event created via `Routine.registerKeyEvent` or `Routine.registerVanillaEvent`. This prevents them from repeating even if their initial conditions specify that they should.
function Routine.breakTimer() end

--- Gets the unique ID of a specific coroutine, for debugging purposes.
--- @param routine Routine The coroutine to get the ID for.
--- @return number id The unique ID of the coroutine.
function Routine.getDebugID(routine) end

---@class Routine
local RoutineInstance = {}

--- Gets the number of frames remaining until the coroutine resumes if it was made to wait via `Routine.wait`, `Routine.waitFrames`, or `Routine.waitSeconds`. Gets the number of seconds remaining if it was made to wait via `Routine.waitRealSeconds`.
--- @return number time The remaining time until the coroutine resumes.
function RoutineInstance:getTime() end

--- Gets the number of frames remaining until the coroutine resumes if it was made to wait via `Routine.wait`, `Routine.waitFrames`, or `Routine.waitSeconds`. Gets the number of seconds remaining if it was made to wait via `Routine.waitRealSeconds`.
--- @return number time The remaining time until the coroutine resumes.
function RoutineInstance:getTimer() end

--- Resumes the coroutine that was yielded via `Routine.yield`.
--- @return string status The status of the coroutine.
--- @return string msg The message of the coroutine.
function RoutineInstance:continue() end

--- Abandons the waiting coroutine, preventing it from resuming.
function RoutineInstance:abort() end

--- Pauses the waiting timer for the coroutine that is currently waiting via `Routine.wait`, `Routine.waitFrames`, `Routine.waitRealSeconds`, or `Routine.waitSeconds`. This also applies to coroutines created using `Routine.setTimer`, `Routine.setFrameTimer`, and `Routine.setRealTimer`.
function RoutineInstance:pause() end

--- Resumes the coroutine timer that was paused using `pause`.
function RoutineInstance:resume() end

---@type boolean `true` if the coroutine is waiting.
RoutineInstance.waiting = false

---@type boolean `true` if the coroutine was yielded using `Routine.yield`.
RoutineInstance.yielded = false

---@type boolean `true` if the coroutine was paused using `Routine.pause` or `myRoutine:pause()`.
RoutineInstance.paused = false

---@type boolean `false` if the coroutine has finished or has been abandoned.
RoutineInstance.isValid = false
