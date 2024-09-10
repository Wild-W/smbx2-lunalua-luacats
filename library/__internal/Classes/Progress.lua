---@meta _

---The progress class exposes fields and functions for accessing and manipulating per-episode progression information.
---
---Progress works by using a numeric value between 0 and a maxProgress value, defined in the episode's launcher json.
Progress = {}

---For retrieving the current progress value. (Read only)
---@type number?
Progress.progress = nil

---For setting the progress value.
---@type number
Progress.value = nil

---The maximum progress value for the episode. (Read only)
---@type number?
Progress.maxProgress = nil

---The name of the current save file as displayed on the launcher.
---@type string?
Progress.savename = nil
