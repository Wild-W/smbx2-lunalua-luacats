---@meta


---Contains definitions of "transforms", which allow physical characteristics to be formulated into an [object hierarchy](https://en.wikipedia.org/wiki/Object_hierarchy).
---## Usage
---```lua
---local t = Transform.new2d()
---t.position = vector(1,2)
---t:rotate(5)
---```
---@class Transforms
Transform = {}

--- Creates a new 2D or 3D transform object, automatically creating the one that matches the provided arguments.
--- @param position Vector2|Vector3 The position of the transform.
--- @param rotation number|Quaternion The rotation of the transform.
--- @param scale Vector2|Vector3 The scale of the transform.
--- @return Transform|Transform3D transform The created transform object.
function Transform(position, rotation, scale) end

--- Creates a new 2D or 3D transform object, automatically creating the one that matches the provided arguments.
--- @param position Vector2|Vector3 The position of the transform.
--- @param rotation number|Quaternion The rotation of the transform.
--- @param scale Vector2|Vector3 The scale of the transform.
--- @return Transform|Transform3D transform The created transform object.
function Transform.new(position, rotation, scale) end

--- Creates a new 2D transform object.
--- @param position Vector2 The position of the transform.
--- @param rotation number The rotation of the transform.
--- @param scale Vector2 The scale of the transform.
--- @return Transform transform The created 2D transform object.
function Transform.new2d(position, rotation, scale) end

--- Creates a new 3D transform object.
--- @param position Vector3 The position of the transform.
--- @param rotation Quaternion The rotation of the transform.
--- @param scale Vector3 The scale of the transform.
--- @return Transform3D transform The created 3D transform object.
function Transform.new3d(position, rotation, scale) end

---@class Transform
local Transform = {}

--- Gets the global transformation matrix for this transform.
--- @return Mat3 matrix The global transformation matrix.
function Transform:getMat() end

--- Gets the local transformation matrix for this transform.
--- @return Mat3 matrix The local transformation matrix.
function Transform:getMatLocal() end

--- Gets the inverse global transformation matrix for this transform.
--- @return Mat3 matrix The inverse global transformation matrix.
function Transform:getInvMat() end

--- Gets the inverse local transformation matrix for this transform.
--- @return Mat3 matrix The inverse local transformation matrix.
function Transform:getInvMatLocal() end

--- Sets the transform as "dirty", forcing a recomputation of its transformation matrix.
--- @param noLocal boolean If `true`, only the global transformation matrix will be invalidated.
function Transform:setDirty(noLocal) end

--- Rotates the transform so that its `up` direction points towards the target.
--- @param target Vector2 The target to look at.
function Transform:lookAt(target) end

--- Rotates the transform by the specified number of degrees.
--- @param angle number The angle to rotate by.
--- @param worldspace boolean If `true`, the rotation will occur in world space. Defaults to `false`.
function Transform:rotate(angle, worldspace) end

--- Moves the transform by the specified motion vector.
--- @param vector Vector2 The motion vector.
--- @param worldspace boolean If `true`, the translation will occur in world space. Defaults to `false`.
function Transform:translate(vector, worldspace) end

--- Applies the transform to the specified position vector.
--- @param vector Vector2 The position vector.
--- @return Vector2 vector The transformed position vector.
function Transform:apply(vector) end

--- Transform the specified position vector.
--- @param vector Vector2 The position vector.
--- @return Vector2 vector The transformed position vector.
function Transform:transformPoint(vector) end

--- Transform the specified speed vector.
--- @param vector Vector2 The speed vector.
--- @return Vector2 vector The transformed speed vector.
function Transform:transformVector(vector) end

--- Transform the specified direction vector.
--- @param vector Vector2 The direction vector.
--- @return Vector2 vector The transformed direction vector.
function Transform:transformDirection(vector) end

--- Inverse transform the specified position vector.
--- @param vector Vector2 The position vector.
--- @return Vector2 vector The inverse transformed position vector.
function Transform:invTransformPoint(vector) end

--- Inverse transform the specified speed vector.
--- @param vector Vector2 The speed vector.
--- @return Vector2 vector The inverse transformed speed vector.
function Transform:invTransformVector(vector) end

--- Inverse transform the specified direction vector.
--- @param vector Vector2 The direction vector.
--- @return Vector2 vector The inverse transformed direction vector.
function Transform:invTransformDirection(vector) end

--- Attaches the provided transform as a child.
--- @param child Transform The child transform.
--- @param keepWorld boolean If `true`, the child will keep its world space coordinates. Defaults to `true`.
function Transform:addChild(child, keepWorld) end

--- Attaches the transform as a child of the provided transform.
--- @param parent Transform The parent transform.
--- @param keepWorld boolean If `true`, the transform will keep its world space coordinates. Defaults to `true`.
function Transform:setParent(parent, keepWorld) end

--- Removes all children from the transform.
function Transform:detachChildren() end

--- Gets the index of this transform in its parent's child list.
--- @return number index The index in the parent's child list.
function Transform:getSiblingIndex() end

--- Sets the index of this transform in its parent's child list.
--- @param index number The new index.
function Transform:setSiblingIndex(index) end

--- Pushes this transform to be first in its parent's child list.
function Transform:setFirstSibling() end

--- Pushes this transform to be last in its parent's child list.
function Transform:setLastSibling() end

---@type Vector2 The transform local position.
Transform.position = nil

---@type number The transform local rotation.
Transform.rotation = nil

---@type Vector2 The transform local scale.
Transform.scale = nil

---@type Vector2 The transform global position.
Transform.wposition = nil

---@type number The transform global rotation.
Transform.wrotation = nil

---@type Vector2 The transform global scale.
Transform.wscale = nil

---@type Transform The transform's parent. Assigning to this is equivalent to calling `setParent`.
Transform.parent = nil

---@type Vector2 The transform local "up" (+y) vector.
Transform.up = nil

---@type Vector2 The transform local "right" (+x) vector.
Transform.right = nil

---@type Vector2 The transform global "up" (+y) vector.
Transform.wup = nil

---@type Vector2 The transform global "right" (+x) vector.
Transform.wright = nil

---@type Mat3 The "object to world" space transformation matrix.
Transform.obj2world = nil

---@type Mat3 The "world to object" space transformation matrix.
Transform.world2obj = nil

---@type Transform[] A list of the transform's children.
Transform.children = nil

---@type number The current sibling index. Assigning to this is equivalent to calling `setSiblingIndex`.
Transform.siblingIdx = nil

---@type Transform The uppermost parent of this transform in the object hierarchy.
Transform.root = nil

--- Transform3D Class

---@class Transform3D
local Transform3D = {}

--- Gets the global transformation matrix for this transform.
--- @return Mat4 matrix The global transformation matrix.
function Transform3D:getMat() end

--- Gets the local transformation matrix for this transform.
--- @return Mat4 matrix The local transformation matrix.
function Transform3D:getMatLocal() end

--- Gets the inverse global transformation matrix for this transform.
--- @return Mat4 matrix The inverse global transformation matrix.
function Transform3D:getInvMat() end

--- Gets the inverse local transformation matrix for this transform.
--- @return Mat4 matrix The inverse local transformation matrix.
function Transform3D:getInvMatLocal() end

--- Sets the transform as "dirty", forcing a recomputation of its transformation matrix.
--- @param noLocal boolean If `true`, only the global transformation matrix will be invalidated.
function Transform3D:setDirty(noLocal) end

--- Rotates the transform so that its `forward` direction points towards the target.
--- @param target Vector3 The target to look at.
function Transform3D:lookAt(target) end

--- Rotates the transform by the specified quaternion rotation.
--- @param rotation Quaternion The quaternion rotation.
--- @param worldspace boolean If `true`, the rotation will occur in world space. Defaults to `false`.
function Transform3D:rotate(rotation, worldspace) end

--- Rotates the transform by the specified angle around the specified axis.
--- @param axis Vector3 The axis to rotate around.
--- @param angle number The angle to rotate by.
--- @param worldspace boolean If `true`, the rotation will occur in world space. Defaults to `false`.
function Transform3D:rotate(axis, angle, worldspace) end

--- Rotates the transform by the rotation defined by the specified start and end vectors.
--- @param start Vector3 The start vector.
--- @param _end Vector3 The end vector.
--- @param worldspace boolean If `true`, the rotation will occur in world space. Defaults to `false`.
function Transform3D:rotate(start, _end, worldspace) end

--- Rotates the transform by the specified rotation matrix.
--- @param matrix Mat3 The rotation matrix.
--- @param worldspace boolean If `true`, the rotation will occur in world space. Defaults to `false`.
function Transform3D:rotate(matrix, worldspace) end

--- Rotates the transform by the specified Euler angles.
--- @param roll number The roll angle.
--- @param pitch number The pitch angle.
--- @param yaw number The yaw angle.
--- @param worldspace boolean If `true`, the rotation will occur in world space. Defaults to `false`.
function Transform3D:rotate(roll, pitch, yaw, worldspace) end

--- Moves the transform by the specified motion vector.
--- @param vector Vector3 The motion vector.
--- @param worldspace boolean If `true`, the translation will occur in world space. Defaults to `false`.
function Transform3D:translate(vector, worldspace) end

--- Applies the transform to the specified position vector.
--- @param vector Vector3 The position vector.
--- @return Vector3 vector The transformed position vector.
function Transform3D:apply(vector) end

--- Transform the specified position vector.
--- @param vector Vector3 The position vector.
--- @return Vector3 vector The transformed position vector.
function Transform3D:transformPoint(vector) end

--- Transform the specified speed vector.
--- @param vector Vector3 The speed vector.
--- @return Vector3 vector The transformed speed vector.
function Transform3D:transformVector(vector) end

--- Transform the specified direction vector.
--- @param vector Vector3 The direction vector.
--- @return Vector3 vector The transformed direction vector.
function Transform3D:transformDirection(vector) end

--- Inverse transform the specified position vector.
--- @param vector Vector3 The position vector.
--- @return Vector3 vector The inverse transformed position vector.
function Transform3D:invTransformPoint(vector) end

--- Inverse transform the specified speed vector.
--- @param vector Vector3 The speed vector.
--- @return Vector3 vector The inverse transformed speed vector.
function Transform3D:invTransformVector(vector) end

--- Inverse transform the specified direction vector.
--- @param vector Vector3 The direction vector.
--- @return Vector3 vector The inverse transformed direction vector.
function Transform3D:invTransformDirection(vector) end

--- Attaches the provided transform as a child.
--- @param child Transform3D The child transform.
--- @param keepWorld boolean If `true`, the child will keep its world space coordinates. Defaults to `true`.
function Transform3D:addChild(child, keepWorld) end

--- Attaches the transform as a child of the provided transform.
--- @param parent Transform3D The parent transform.
--- @param keepWorld boolean If `true`, the transform will keep its world space coordinates. Defaults to `true`.
function Transform3D:setParent(parent, keepWorld) end

--- Removes all children from the transform.
function Transform3D:detachChildren() end

--- Gets the index of this transform in its parent's child list.
--- @return number index The index in the parent's child list.
function Transform3D:getSiblingIndex() end

--- Sets the index of this transform in its parent's child list.
--- @param index number The new index.
function Transform3D:setSiblingIndex(index) end

--- Pushes this transform to be first in its parent's child list.
function Transform3D:setFirstSibling() end

--- Pushes this transform to be last in its parent's child list.
function Transform3D:setLastSibling() end

---@type Vector3 The transform local position.
Transform3D.position = nil

---@type Quaternion The transform local rotation.
Transform3D.rotation = nil

---@type Vector3 The transform local scale.
Transform3D.scale = nil

---@type Vector3 The transform global position.
Transform3D.wposition = nil

---@type Quaternion The transform global rotation.
Transform3D.wrotation = nil

---@type Vector3 The transform global scale.
Transform3D.wscale = nil

---@type Transform3D The transform's parent. Assigning to this is equivalent to calling `setParent`.
Transform3D.parent = nil

---@type Vector3 The transform local "forward" (+z) vector.
Transform3D.forward = nil

---@type Vector3 The transform local "up" (+y) vector.
Transform3D.up = nil

---@type Vector3 The transform local "right" (+x) vector.
Transform3D.right = nil

---@type Vector3 The transform global "forward" (+z) vector.
Transform3D.wforward = nil

---@type Vector3 The transform global "up" (+y) vector.
Transform3D.wup = nil

---@type Vector3 The transform global "right" (+x) vector.
Transform3D.wright = nil

---@type Mat4 The "object to world" space transformation matrix.
Transform3D.obj2world = nil

---@type Mat4 The "world to object" space transformation matrix.
Transform3D.world2obj = nil

---@type Transform3D[] A list of the transform's children.
Transform3D.children = nil

---@type number The current sibling index. Assigning to this is equivalent to calling `setSiblingIndex`.
Transform3D.siblingIdx = nil

---@type Transform3D The uppermost parent of this transform in the object hierarchy.
Transform3D.root = nil