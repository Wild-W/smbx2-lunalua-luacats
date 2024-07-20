---@meta


---@class CollisionObject

---The Colliders class provides functionality for checking for collision between objects or custom collision zones.
---## Usage
---```lua
---local boxCollider = Colliders.Box(-200000, -200600, 300, 600) -- x, y, width, height
---
---function onTick()
---    if Colliders.collide(boxCollider, player) then
---       Text.print("Colliding!", 0, 0)
---    end
---end
---```
---@class Colliders
Colliders = {}

---@type integer
Colliders.COLLIDER = -1
---@type integer
Colliders.NPC = -2
---@type integer
Colliders.BLOCK = -3

--- Creates a new point collider.
--- @param x number The x coordinate of the point collider.
--- @param y number The y coordinate of the point collider.
--- @return PointCollider pointCollider The created point collider.
function Colliders.Point(x, y) end

--- Creates a new axis-aligned box collider.
--- @param x number The x coordinate of the top-left corner of the box collider.
--- @param y number The y coordinate of the top-left corner of the box collider.
--- @param width number The width of the box collider.
--- @param height number The height of the box collider.
--- @return BoxCollider boxCollider The created box collider.
function Colliders.Box(x, y, width, height) end

--- Creates a new rect collider.
--- @param x number The x coordinate of the center of the rect collider.
--- @param y number The y coordinate of the center of the rect collider.
--- @param width number The width of the rect collider.
--- @param height number The height of the rect collider.
--- @param rotation number The rotation of the rect collider in degrees.
--- @return RectCollider rectCollider The created rect collider.
function Colliders.Rect(x, y, width, height, rotation) end

--- Creates a new circle collider.
--- @param x number The x coordinate of the center of the circle collider.
--- @param y number The y coordinate of the center of the circle collider.
--- @param radius number The radius of the circle collider.
--- @return CircleCollider circleCollider The created circle collider.
function Colliders.Circle(x, y, radius) end

--- Creates a new triangle collider.
--- @param x number The x coordinate of the anchor point.
--- @param y number The y coordinate of the anchor point.
--- @param point1 Vector2 The first vertex of the triangle.
--- @param point2 Vector2 The second vertex of the triangle.
--- @param point3 Vector2 The third vertex of the triangle.
--- @return TriCollider triCollider The created triangle collider.
function Colliders.Tri(x, y, point1, point2, point3) end

--- Creates a new polygon collider.
--- @param x number The x coordinate of the anchor point.
--- @param y number The y coordinate of the anchor point.
--- @param points Vector2[] The vertices of the polygon.
--- @return PolyCollider polyCollider The created polygon collider.
function Colliders.Poly(x, y, ...) end

--- Gets the box collider axis-aligned bounding box for the given object.
--- @param object CollisionObject The object to get the bounding box for.
--- @return BoxCollider boxCollider The box collider axis-aligned bounding box.
function Colliders.getAABB(object) end

---@param block1 Block
---@param block2 Block
---@return boolean
function Colliders.FILTER_BLOCK_BLOCK_DEF(block1, block2) end

---@param collider Collider
---@param block Block
---@return boolean
function Colliders.FILTER_COL_BLOCK_DEF(collider, block) end

---@param collider Collider
---@param npc NPC
---@return boolean
function Colliders.FILTER_COL_NPC_DEF(collider, npc) end

---@param npc NPC
---@param block Block
---@return boolean
function Colliders.FILTER_NPC_BLOCK_DEF(npc, block) end

---@param npc1 NPC
---@param npc2 NPC
---@return boolean
function Colliders.FILTER_NPC_NPC_DEF(npc1, npc2) end

function Colliders.onInitAPI() end
function Colliders.onDraw() end

--- Gets the collider associated with the collision object.
--- @param object CollisionObject The object to get the collider for.
--- @return Collider collider The associated collider.
function Colliders.getHitbox(object) end

--- Gets the collider associated with the collision object, taking into account its speed.
--- @param object CollisionObject The object to get the speed hitbox for.
--- @return Collider collider The associated collider with speed considered.
function Colliders.getSpeedHitbox(object) end

--- Causes the object to "bounce" upwards as if they had just stomped on an enemy.
--- @param firstObject CollisionObject The object to apply the bounce effect to.
--- @param strength number The strength of the bounce.
function Colliders.bounceResponse(firstObject, strength) end

--- Checks for collision between two objects.
--- @param firstObject CollisionObject The first object to check.
--- @param secondObject CollisionObject The second object to check.
--- @return boolean areColliding Whether the objects are colliding.
function Colliders.collide(firstObject, secondObject) end

--- Checks for collision between two objects while taking their movement speed into account.
--- @param firstObject CollisionObject The first object to check.
--- @param secondObject CollisionObject The second object to check.
--- @return boolean areColliding Whether the objects are colliding.
function Colliders.speedCollide(firstObject, secondObject) end

--- Checks for collisions between a and b, where a and b can be collision objects or lists of collision objects.
--- @param args table The arguments for the collision check.
--- @return table collidingObjects The colliding objects or pairs of colliding objects.
function Colliders.getColliding(args) end

--- Performs a linecast starting at start and going in the specified direction.
--- @param start Vector2 The starting point of the raycast.
--- @param direction Vector2 The direction of the raycast.
--- @param candidates CollisionObject[] The objects to check for collisions against.
--- @return boolean isColliding Whether any object was hit by the ray.
--- @return Vector2 intersectionPoint The point of intersection.
--- @return Vector2 intersectionNormal The normal vector at the point of intersection.
--- @return CollisionObject hitObject The collider that was first intersected.
function Colliders.raycast(start, direction, candidates) end

--- Performs a linecast starting at start and stopping at end.
--- @param start Vector2 The starting point of the linecast.
--- @param _end Vector2 The ending point of the linecast.
--- @param candidates CollisionObject[] The objects to check for collisions against.
--- @return boolean isColliding Whether any object was hit by the linecast.
--- @return Vector2 intersectionPoint The point of intersection.
--- @return Vector2 intersectionNormal The normal vector at the point of intersection.
--- @return CollisionObject hitObject The collider that was first intersected.
function Colliders.linecast(start, _end, candidates) end

--- Determines if the first object has just bounced on the second object.
--- @param firstObject CollisionObject The first object to check.
--- @param secondObject CollisionObject The second object to check.
--- @return boolean areColliding Whether the objects are colliding.
--- @return boolean isSpinjumpingPlayer Whether the first object is a spinjumping player.
function Colliders.bounce(firstObject, secondObject) end

--- Determines if the player has performed a sword slash and hit the object.
--- @param player Player The player to check.
--- @param object CollisionObject The object to check.
--- @return boolean isSlashing Whether the player has performed a sword slash and hit the object.
function Colliders.slash(player, object) end

--- Determines if the player has performed a downwards sword slash and hit the object.
--- @param player Player The player to check.
--- @param object CollisionObject The object to check.
--- @return boolean isSlashing Whether the player has performed a downwards sword slash and hit the object.
function Colliders.downSlash(player, object) end

--- Determines if the player has performed a tanooki tail spin and hit the object.
--- @param player Player The player to check.
--- @param object CollisionObject The object to check.
--- @return boolean isSwiping Whether the player has performed a tanooki tail spin and hit the object.
function Colliders.tail(player, object) end

--- Determines if the player has performed a Yoshi tongue attack and hit the object.
--- @param player Player The player to check.
--- @param object CollisionObject The object to check.
--- @return boolean isSwiping Whether the player has performed a Yoshi tongue attack and hit the object.
function Colliders.tongue(player, object) end

---@type table
Colliders.BLOCK_HURT = nil
---@type table
Colliders.BLOCK_HURT_MAP = nil
---@type table
Colliders.BLOCK_LAVA = nil
---@type table
Colliders.BLOCK_LAVA_MAP = nil
---@type table
Colliders.BLOCK_NONSOLID = nil
---@type table
Colliders.BLOCK_NONSOLID_MAP = nil
---@type table
Colliders.BLOCK_PLAYER = nil
---@type table
Colliders.BLOCK_PLAYER_MAP = nil
---@type table
Colliders.BLOCK_SEMISOLID = nil
---@type table
Colliders.BLOCK_SEMISOLID_MAP = nil
---@type table
Colliders.BLOCK_SOLID = nil
---@type table
Colliders.BLOCK_SOLID_MAP = nil

---@class Collider : CollisionObject
local Collider = {}

--- Draws the collider to the screen with the specified color.
--- @param color Color The color to draw the collider with. If no color is supplied, the default will be used.
function Collider:Draw(color) end

--- Enables/disables debug drawing of the collider.
--- @param enable boolean Whether to enable or disable debug drawing.
function Collider:Debug(enable) end


---@class PointCollider : Collider
local PointCollider = {}
---@type number
PointCollider.x = 0
---@type number
PointCollider.y = 0

---@class BoxCollider : Collider
local BoxCollider = {}
---@type number
BoxCollider.x = 0
---@type number
BoxCollider.y = 0
---@type number
BoxCollider.width = 0
---@type number
BoxCollider.height = 0

---@class RectCollider : Collider
local RectCollider = {}
---@type number
RectCollider.x = 0
---@type number
RectCollider.y = 0
---@type number
RectCollider.width = 0
---@type number
RectCollider.height = 0
---@type number
RectCollider.rotation = 0

---@class CircleCollider : Collider
local CircleCollider = {}
---@type number
CircleCollider.x = 0
---@type number
CircleCollider.y = 0
---@type number
CircleCollider.radius = 0

---@class TriCollider : Collider
local TriCollider = {}
---@type number
TriCollider.x = 0
---@type number
TriCollider.y = 0
---The vertex list of the triangle collider. When manually editing this list, the minX, minY, maxX and maxY fields need to be updated manually as well. If winding order is anticlockwise, triangulation will fail. Make sure to keep the vertex list winding order clockwise when editing.
---@type {x: number, y: number}[]
TriCollider.tris = {}
---@type number
TriCollider.minX = 0
---@type number
TriCollider.maxX = 0
---@type number
TriCollider.minY = 0
---@type number
TriCollider.maxY = 0
---@type number

---@class PolyCollider : Collider
local PolyCollider = {}
---@type number
PolyCollider.x = 0
---@type number
PolyCollider.y = 0
---The vertex list of the triangle collider. When manually editing this list, the minX, minY, maxX and maxY fields need to be updated manually as well. If winding order is anticlockwise, triangulation will fail. Make sure to keep the vertex list winding order clockwise when editing.
---@type {x: number, y: number}[]
PolyCollider.tris = {}
---@type number
PolyCollider.minX = 0
---@type number
PolyCollider.maxX = 0
---@type number
PolyCollider.minY = 0
---@type number
PolyCollider.maxY = 0

--- Rotates the rect collider by the specified angle in degrees.
--- @param angle number The angle to rotate the rect collider by.
function RectCollider:Rotate(angle) end

--- Returns the x and y coordinate of the vertex of the given index as a table formatted as a number pair {x, y}.
--- @param index number The index of the vertex.
--- @return table vertex The x and y coordinate of the vertex.
function TriCollider:Get(index) end

--- Rotates the tri collider by the specified angle in degrees.
--- @param angle number The angle to rotate the tri collider by.
function TriCollider:Rotate(angle) end

--- Translates (offsets) the collider by the specified amount along the x and y axes.
--- @param x number The amount to offset along the x axis.
--- @param y number The amount to offset along the y axis.
function TriCollider:Translate(x, y) end

--- Scales (resizes) the collider by the specified scale factor.
--- @param scaleFactor number The scale factor to resize the collider by.
function TriCollider:Scale(scaleFactor) end

--- Rotates the poly collider by the specified angle in degrees.
--- @param angle number The angle to rotate the poly collider by.
function PolyCollider:Rotate(angle) end

--- Translates (offsets) the collider by the specified amount along the x and y axes.
--- @param x number The amount to offset along the x axis.
--- @param y number The amount to offset along the y axis.
function PolyCollider:Translate(x, y) end

--- Scales (resizes) the collider by the specified scale factor.
--- @param scaleFactor number The scale factor to resize the collider by.
function PolyCollider:Scale(scaleFactor) end
