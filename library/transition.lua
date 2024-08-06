---@meta

local transition = {}

---Aborts all transitions on an object and depending on the value of preserveWaiting may also destroy queued transitions.
---@param obj unknown?
---@param preserveWaiting unknown?
---@return ...
function transition.clear(obj, preserveWaiting) end

---Returns an eased value.
---@param iteration unknown?
---@param start unknown?
---@param target unknown?
---@param easingFunc unknown?
---@param transitionTime unknown?
---@param relative unknown?
---@return number
function transition.easeValue(iteration, start, target, easingFunc, transitionTime, relative) end

---Transitions one or more properties of an object over time, according to an easing function.
---@param obj unknown?
---@param transitionTime unknown?
---@param easingFunc unknown?
---@param targets unknown?
---@param iterationEasingFunc unknown?
---@param relative unknown?
---@param override unknown?
---@return unknown
function transition.to(obj, transitionTime, easingFunc, targets, iterationEasingFunc, relative, override) end

---Yields the current coroutine until the transition is completed, then resumes it.
---@param obj unknown?
---@return ...
function transition.wait(obj) end

return transition
