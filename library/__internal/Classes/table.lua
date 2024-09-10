---@meta _

---Searches for an object in an ordered table and returns the index of the last instance found.
---@param t table The table to search.
---@param value any The value to search for.
---@return number index The index of the last instance found.
function table.ifindlast(t, value) end

---Searches for an object in any table and returns the index of the last instance found.
---@param t table The table to search.
---@param value any The value to search for.
---@return number index The index of the last instance found.
function table.findlast(t, value) end

---Searches for an object in an ordered table and returns the index of the first instance found.
---@param t table The table to search.
---@param value any The value to search for.
---@return number index The index of the first instance found.
function table.ifind(t, value) end

---Searches for an object in any table and returns the index of the first instance found.
---@param t table The table to search.
---@param value any The value to search for.
---@return number index The index of the first instance found.
function table.find(t, value) end

---Searches for an object in an ordered table and returns a list of indices at which the value was found.
---@param t table The table to search.
---@param value any The value to search for.
---@return table<number> indices A list of indices at which the value was found.
function table.ifindall(t, value) end

---Searches for an object in any table and returns a list of indices at which the value was found.
---@param t table The table to search.
---@param value any The value to search for.
---@return table<number> indices A list of indices at which the value was found.
function table.findall(t, value) end

---Searches for an object in an ordered table and returns true if it was found.
---@param t table The table to search.
---@param value any The value to search for.
---@return boolean found True if the value was found.
function table.icontains(t, value) end

---Searches for an object in any table and returns true if it was found.
---@param t table The table to search.
---@param value any The value to search for.
---@return boolean found True if the value was found.
function table.contains(t, value) end

---Clones the top layer of the input table. References to objects within the table are preserved.
---@param t table The table to clone.
---@return table clone A shallow clone of the table.
function table.iclone(t) end

---Clones the top layer of the input table. References to objects within the table are preserved.
---@param t table The table to clone.
---@return table clone A shallow clone of the table.
function table.clone(t) end

---Clones all layers of the input table. This essentially duplicates all objects within the table.
---@param t table The table to deep clone.
---@return table clone A deep clone of the table.
---**Note**: This function can be very taxing on performance. Use with caution!
function table.ideepclone(t) end

---Clones all layers of the input table. This essentially duplicates all objects within the table.
---@param t table The table to deep clone.
---@return table clone A deep clone of the table.
---**Note**: This function can be very taxing on performance. Use with caution!
function table.deepclone(t) end

---Shuffles the entries in an ordered table.
---@param t table The table to shuffle.
---@return table t The shuffled table.
function table.ishuffle(t) end

---Takes an ordered table and returns the respective lookup table, where the values of the input table become the keys of the output table. The values of the output table of those indices will be set to true.
---@param t table The ordered table to map.
---@return table lookupTable The lookup table.
function table.map(t) end

---Takes a table and returns the respective ordered table, discarding all values and turning the input table's keys into the new values of the returned table.
---@param t table The table to unmap.
---@return table listTable The ordered table.
function table.unmap(t) end

---Iterates a list of input tables and joins arguments together into one table containing all unique arguments from all tables. In case of a duplicate key/index, the first table takes priority, with the last table having the lowest priority.
---@param ... table The tables to join.
---@return table joinedTable The joined table.
function table.join(...) end

---Iterates a list of ordered tables and constructs a new table containing all values of all input tables. The first argument is inserted first, the last inserted last.
---@param ... table The tables to append.
---@return table joinedTable The joined table.
function table.append(...) end

---Reverses the order of entries in an ordered table and returns the result.
---@param t table The table to reverse.
---@return table reversedTable The reversed table.
function table.reverse(t) end

---Joins the arguments from a table and all table entries within that table and inserts the results into the returned table. Table entries are only searched for and flattened on the top level, behaving similarly to clone, rather than deepclone.
---@param t table The table to flatten.
---@return table flattenedTable The flattened table.
function table.flatten(t) end
