---@meta

---Global namespace used for creating and managing different types of vector and matrix objects, as well as quaternions, which are used in various mathematical operations, particularly in graphics and physics simulations.
---@class VectorManager
vector = {}

--- `vector(0,0)` | An empty 2D vector.
---@type Vector2
vector.zero2 = nil

--- `vector(0,1)` | A 2D vector pointing along positive y.
---@type Vector2
vector.up2 = nil

--- `vector(0,1)` | A 2D vector pointing along positive y (down in [SMBX coordinates](/concepts/coordinate-spaces.md)).
---@type Vector2
vector.down2 = nil

--- `vector(1,0)` | A 2D vector pointing along positive x.
---@type Vector2
vector.right2 = nil

--- `vector(1,1)` | A 2D vector with all components set to 1.
---@type Vector2
vector.one2 = nil

--- `vector(0,0,0)` | An empty 3D vector.
---@type Vector3
vector.zero3 = nil

--- `vector(0,0,1)` | A 3D vector pointing along positive z.
---@type Vector3
vector.forward3 = nil

--- `vector(0,1,0)` | A 3D vector pointing along positive y.
---@type Vector3
vector.up3 = nil

--- `vector(0,1,0)` | A 3D vector pointing along positive y (down in [SMBX coordinates](/concepts/coordinate-spaces.md)).
---@type Vector3
vector.down3 = nil

--- `vector(1,0,0)` | A 3D vector pointing along positive x.
---@type Vector3
vector.right3 = nil

--- `vector(1,1,1)` | A 3D vector with all components set to 1.
---@type Vector3
vector.one3 = nil

--- `vector(0,0,0,0)` | An empty 4D vector.
---@type Vector4
vector.zero4 = nil

--- `vector(0,0,0,1)` | A 4D vector pointing along positive w.
---@type Vector4
vector.w4 = nil

--- `vector(0,0,1,0)` | A 4D vector pointing along positive z.
---@type Vector4
vector.forward4 = nil

--- `vector(0,1,0,0)` | A 4D vector pointing along positive y.
---@type Vector4
vector.up4 = nil

--- `vector(0,1,0,0)` | A 4D vector pointing along positive y (down in [SMBX coordinates](/concepts/coordinate-spaces.md)).
---@type Vector4
vector.down4 = nil

--- `vector(1,0,0,0)` | A 4D vector pointing along positive x.
---@type Vector4
vector.right4 = nil

--- `vector(1,1,1,1)` | A 4D vector with all components set to 1.
---@type Vector4
vector.one4 = nil

--- `vector.mat2({0,0},{0,0})` | An empty 2x2 matrix.
---@type Mat2
vector.empty2 = nil

--- `vector.mat2({1,0},{0,1})` | The 2x2 [identity matrix](https://en.wikipedia.org/wiki/Identity_matrix).
---@type Mat2
vector.id2 = nil

--- `vector.mat3({0,0,0},{0,0,0},{0,0,0})` | An empty 3x3 matrix.
---@type Mat3
vector.empty3 = nil

--- `vector.mat3({1,0,0},{0,1,0},{0,0,1})` | The 3x3 [identity matrix](https://en.wikipedia.org/wiki/Identity_matrix).
---@type Mat3
vector.id3 = nil

--- `vector.mat4({0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0})` | An empty 4x4 matrix.
---@type Mat4
vector.empty4 = nil

--- `vector.mat4({1,0,0,0},{0,1,0,0},{0,0,1,0},{0,0,0,1})` | The 4x4 [identity matrix](https://en.wikipedia.org/wiki/Identity_matrix).
---@type Mat4
vector.id4 = nil

--- `vector.quat(0,0,0)` | The identity quaternion corresponding to no rotation.
---@type Quaternion
vector.quatid = nil

--- Creates a new Vector2 object.
---@param x number The x component of the vector.
---@param y number The y component of the vector.
---@return Vector2 vector2 The new vector object.
function vector(x, y) end

--- Creates a new Vector2 object.
---@param x number The x component of the vector.
---@param y number The y component of the vector.
---@return Vector2 vector2 The new vector object.
function vector.v2(x, y) end

--- Creates a new Vector3 object.
---@param x number The x component of the vector.
---@param y number The y component of the vector.
---@param z number The z component of the vector.
---@return Vector3 vector3 The new vector object.
function vector(x, y, z) end

--- Creates a new Vector3 object.
---@param x number The x component of the vector.
---@param y number The y component of the vector.
---@param z number The z component of the vector.
---@return Vector3 vector3 The new vector object.
function vector.v3(x, y, z) end

--- Creates a new Vector4 object.
---@param x number The x component of the vector.
---@param y number The y component of the vector.
---@param z number The z component of the vector.
---@param w number The w component of the vector.
---@return Vector4 vector4 The new vector object.
function vector(x, y, z, w) end

--- Creates a new Vector4 object.
---@param x number The x component of the vector.
---@param y number The y component of the vector.
---@param z number The z component of the vector.
---@param w number The w component of the vector.
---@return Vector4 vector4 The new vector object.
function vector.v4(x, y, z, w) end

--- Creates a new 2x2 matrix object with specified elements.
---@param m00 number Element at row 1, column 1.
---@param m01 number Element at row 1, column 2.
---@param m10 number Element at row 2, column 1.
---@param m11 number Element at row 2, column 2.
---@return Mat2 matrix2 The new 2x2 matrix.
function vector.mat2(m00, m01, m10, m11) end

--- Creates a new 2x2 matrix object from rowvectors.
---@param row1 {[1]: number, [2]: number} A table of numbers representing the first row.
---@param row2 {[1]: number, [2]: number} A table of numbers representing the second row.
---@return Mat2 matrix2 The new 2x2 matrix.
function vector.mat2(row1, row2) end

--- Creates a new 3x3 matrix object with specified elements.
---@param m00 number Element at row 1, column 1.
---@param m01 number Element at row 1, column 2.
---@param m02 number Element at row 1, column 3.
---@param m10 number Element at row 2, column 1.
---@param m11 number Element at row 2, column 2.
---@param m12 number Element at row 2, column 3.
---@param m20 number Element at row 3, column 1.
---@param m21 number Element at row 3, column 2.
---@param m22 number Element at row 3, column 3.
---@return Mat3 matrix3 The new 3x3 matrix.
function vector.mat3(m00, m01, m02, m10, m11, m12, m20, m21, m22) end

--- Creates a new 3x3 matrix object from row vectors.
---@param row1 {[1]: number, [2]: number, [3]: number} A table of numbers representing the first row.
---@param row2 {[1]: number, [2]: number, [3]: number} A table of numbers representing the second row.
---@param row3 {[1]: number, [2]: number, [3]: number} A table of numbers representing the third row.
---@return Mat3 matrix3 The new 3x3 matrix.
function vector.mat3(row1, row2, row3) end

--- Creates a new 4x4 matrix object with specified elements.
---@param m00 number Element at row 1, column 1.
---@param m01 number Element at row 1, column 2.
---@param m02 number Element at row 1, column 3.
---@param m03 number Element at row 1, column 4.
---@param m10 number Element at row 2, column 1.
---@param m11 number Element at row 2, column 2.
---@param m12 number Element at row 2, column 3.
---@param m13 number Element at row 2, column 4.
---@param m20 number Element at row 3, column 1.
---@param m21 number Element at row 3, column 2.
---@param m22 number Element at row 3, column 3.
---@param m23 number Element at row 3, column 4.
---@param m30 number Element at row 4, column 1.
---@param m31 number Element at row 4, column 2.
---@param m32 number Element at row 4, column 3.
---@param m33 number Element at row 4, column 4.
---@return Mat4 matrix4 The new 4x4 matrix.
function vector.mat4(m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23, m30, m31, m32, m33) end

--- Creates a new 4x4 matrix object from row vectors.
---@param row1 {[1]: number, [2]: number, [3]: number, [4]: number} A table of numbers representing the first row.
---@param row2 {[1]: number, [2]: number, [3]: number, [4]: number} A table of numbers representing the second row.
---@param row3 {[1]: number, [2]: number, [3]: number, [4]: number} A table of numbers representing the third row.
---@param row4 {[1]: number, [2]: number, [3]: number, [4]: number} A table of numbers representing the fourth row.
---@return Mat4 matrix4 The new 4x4 matrix.
function vector.mat4(row1, row2, row3, row4) end

--- Creates a new quaternion from components.
---@param w number The scalar part of the quaternion.
---@param x number The coefficient of the i (imaginary) component.
---@param y number The coefficient of the j (imaginary) component.
---@param z number The coefficient of the k (imaginary) component.
---@return Quaternion quaternion The new quaternion.
function vector.quat(w, x, y, z) end

--- Creates a new quaternion representing a rotation from Euler angles.
---@param roll number The roll angle in degrees.
---@param pitch number The pitch angle in degrees.
---@param yaw number The yaw angle in degrees.
---@return Quaternion quaternion The new normalized quaternion.
function vector.quat(roll, pitch, yaw) end

--- Creates a quaternion from a rotation matrix.
---@param matrix3 Mat3 The source rotation matrix.
---@return Quaternion The new quaternion representing the rotation.
function vector.quat(matrix3) end

--- Creates a quaternion that represents a rotation around an axis.
---@param axis Vector3 The axis of rotation.
---@param angle number The angle of rotation in degrees.
---@return Quaternion quaternion The quaternion representing the rotation.
function vector.quat(axis, angle) end

--- Creates a quaternion that represents the rotation needed to align one vector to another.
---@param from Vector3 The original direction vector.
---@param to Vector3 The target direction vector.
---@return Quaternion quaternion The quaternion that aligns `from` to `to`.
function vector.quat(from, to) end

--- Linearly interpolates between two Vector2 objects.
---@param vector2a Vector2 The starting vector.
---@param vector2b Vector2 The ending vector.
---@param value number The interpolation factor (0 to 1).
---@return Vector2 result The interpolated result.
function vector.lerp(vector2a, vector2b, value) end

--- Linearly interpolates between two Vector3 objects.
---@param vector3a Vector3 The starting vector.
---@param vector3b Vector3 The ending vector.
---@param value number The interpolation factor (0 to 1).
---@return Vector3 result The interpolated result.
function vector.lerp(vector3a, vector3b, value) end

--- Linearly interpolates between two Vector4 objects.
---@param vector4a Vector4 The starting vector.
---@param vector4b Vector4 The ending vector.
---@param value number The interpolation factor (0 to 1).
---@return Vector4 result The interpolated result.
function vector.lerp(vector4a, vector4b, value) end

--- Linearly interpolates between two Mat2 objects.
---@param matrix2a Mat2 The starting matrix.
---@param matrix2b Mat2 The ending matrix.
---@param value number The interpolation factor (0 to 1).
---@return Mat2 result The interpolated result.
function vector.lerp(matrix2a, matrix2b, value) end

--- Linearly interpolates between two Mat3 objects.
---@param matrix3a Mat3 The starting matrix.
---@param matrix3b Mat3 The ending matrix.
---@param value number The interpolation factor (0 to 1).
---@return Mat3 result The interpolated result.
function vector.lerp(matrix3a, matrix3b, value) end

--- Linearly interpolates between two Mat4 objects.
---@param matrix4a Mat4 The starting matrix.
---@param matrix4b Mat4 The ending matrix.
---@param value number The interpolation factor (0 to 1).
---@return Mat4 result The interpolated result.
function vector.lerp(matrix4a, matrix4b, value) end

--- Linearly interpolates between two Quaternion objects.
---@param quatA Quaternion The starting quaternion.
---@param quatB Quaternion The ending quaternion.
---@param value number The interpolation factor (0 to 1).
---@return Quaternion result The interpolated result.
function vector.lerp(quatA, quatB, value) end

--- Spherically interpolates between two quaternions.
---@param a Quaternion The starting quaternion.
---@param b Quaternion The ending quaternion.
---@param value number The interpolation factor (0 to 1).
---@return Quaternion quaternion The interpolated quaternion.
function vector.slerp(a, b, value) end

--- Generates a random vector on the circumference of a circle.
---@function vector.randomOnCircle
---@param radius number The radius of the circle.
---@return Vector2 vector2 The vector pointing to a random location on the circle.
function vector.randomOnCircle(radius) end

--- Generates a random vector inside a circle.
---@param radius number The radius of the circle.
---@return Vector2 vector2 The vector pointing to a random location inside the circle.
function vector.randomInCircle(radius) end

--- Generates a random unit vector in 2D space.
---@return Vector2 vector2 The random unit vector.
function vector.randomDir2() end

--- Generates a random vector on the surface of a sphere.
---@param radius number The radius of the sphere.
---@return Vector3 vector3 The vector pointing to a random location on the sphere.
function vector.randomOnSphere(radius) end

--- Generates a random vector inside a sphere.
---@param radius number The radius of the sphere.
---@return Vector3 vector3 The vector pointing to a random location inside the sphere.
function vector.randomInSphere(radius) end

--- Generates a random unit vector in 3D space.
---@return Vector3 vector3 The random unit vector.
function vector.randomDir3() end

---@class number
---@operator add(Vector2): number
---@operator add(Vector3): number
---@operator add(Vector4): number
---@operator add(Mat2): number
---@operator add(Mat3): number
---@operator add(Mat4): number
---@operator add(Quaternion): number
---@operator sub(Vector2): number
---@operator sub(Vector3): number
---@operator sub(Vector4): number
---@operator sub(Mat2): number
---@operator sub(Mat3): number
---@operator sub(Mat4): number
---@operator sub(Quaternion): number
---@operator mul(Vector2): number
---@operator mul(Vector3): number
---@operator mul(Vector4): number
---@operator mul(Mat2): number
---@operator mul(Mat3): number
---@operator mul(Mat4): number
---@operator mul(Quaternion): number
---@operator div(Vector2): number
---@operator div(Vector3): number
---@operator div(Vector4): number
---@operator div(Mat2): number
---@operator div(Mat3): number
---@operator div(Mat4): number
---@operator div(Quaternion): number

---@class Vector2
---@field x number
---@field y number
---@field sqrlength number
---@field length number
---@operator add(Vector2): Vector2
---@operator add(number): Vector2
---@operator sub(Vector2): Vector2
---@operator sub(number): Vector2
---@operator mul(Vector2): Vector2
---@operator mul(number): Vector2
---@operator div(Vector2): Vector2
---@operator div(number): Vector2
---@operator concat(Vector2): Vector2
---@operator pow(Vector2): Vector2
---@operator mod(Vector2): Vector2
local Vector2 = {}

---@class Vector3
---@field x number
---@field y number
---@field z number
---@field sqrlength number
---@field length number
---@operator add(Vector3): Vector3
---@operator add(number): Vector3
---@operator sub(Vector3): Vector3
---@operator sub(number): Vector3
---@operator mul(Vector3): Vector3
---@operator mul(number): Vector3
---@operator div(Vector3): Vector3
---@operator div(number): Vector3
---@operator concat(Vector3): Vector3
---@operator pow(Vector3): Vector3
---@operator mod(Vector3): Vector3
local Vector3 = {}

---@class Vector4
---@field x number
---@field y number
---@field z number
---@field w number
---@field sqrlength number
---@field length number
---@operator add(Vector4): Vector4
---@operator add(number): Vector4
---@operator sub(Vector4): Vector4
---@operator sub(number): Vector4
---@operator mul(Vector4): Vector4
---@operator mul(number): Vector4
---@operator div(Vector4): Vector4
---@operator div(number): Vector4
---@operator concat(Vector4): Vector4
---@operator pow(Vector4): Vector4
---@operator mod(Vector4): Vector4
local Vector4 = {}

---@class Mat2
---@field det number
---@field trace number
---@field inverse Mat2
---@field transpose Mat2
---@operator add(Mat2): Mat2
---@operator add(number): Mat2
---@operator sub(Mat2): Mat2
---@operator sub(number): Mat2
---@operator mul(Mat2): Mat2
---@operator mul(number): Mat2
---@operator mul(Vector2): Mat2
---@operator div(Vector2): Mat2
---@operator div(number): Mat2
---@operator div(Mat2): Mat2
local Mat2 = {}

---@class Mat3
---@field det number
---@field trace number
---@field inverse Mat3
---@field transpose Mat3
---@operator add(Mat3): Mat3
---@operator add(number): Mat3
---@operator sub(Mat3): Mat3
---@operator sub(number): Mat3
---@operator mul(Mat3): Mat3
---@operator mul(number): Mat3
---@operator mul(Vector3): Mat3
---@operator div(Vector3): Mat3
---@operator div(number): Mat3
---@operator div(Mat3): Mat3
local Mat3 = {}

---@class Mat4
---@field det number
---@field trace number
---@field inverse Mat4
---@field transpose Mat4
---@operator add(Mat3): Mat3
---@operator add(number): Mat3
---@operator sub(Mat3): Mat3
---@operator sub(number): Mat3
---@operator mul(Mat3): Mat3
---@operator mul(number): Mat3
---@operator mul(Vector3): Mat3
---@operator div(Vector3): Mat3
---@operator div(number): Mat3
---@operator div(Mat3): Mat3
local Mat4 = {}

---@class Quaternion
---@field inverse Quaternion
---@field sqrnorm number
---@field norm number
---@field euler Vector3
---@field normalized Quaternion
---@operator add(Quaternion): Quaternion
---@operator add(number): Quaternion
---@operator sub(Quaternion): Quaternion
---@operator sub(number): Quaternion
---@operator mul(Quaternion): Quaternion
---@operator mul(number): Quaternion
---@operator mul(Vector3): Quaternion
---@operator div(Quaternion): Quaternion
---@operator div(number): Quaternion
---@operator concat(Quaternion): Quaternion
local Quaternion = {}

---@return Vector2
function Vector2:normalize() end

---@param angle number
---@return Vector2
function Vector2:rotate(angle) end

---@param target Vector2
---@return Vector2
function Vector2:lookat(target) end

---@param target Vector2
---@return Vector2
function Vector2:project(target) end

---@param other Vector2
---@return number
function Vector2:dot(other) end

---@return Vector3
function Vector2:tov3() end

---@return Vector4
function Vector2:tov4() end

---@return Vector3
function Vector3:normalize() end

---@param roll number
---@param pitch number
---@param yaw number
---@return Vector3
function Vector3:rotate(roll, pitch, yaw) end

---@param angle number
---@param axis Vector3
---@return Vector3
function Vector3:rotate(angle, axis) end

---@param matrix Mat3
---@return Vector3
function Vector3:rotate(matrix) end

---@param target Vector3
---@return Vector3
function Vector3:lookat(target) end

---@param target Vector3
---@return Vector3
function Vector3:project(target) end

---@param normal Vector3
---@return Vector3
function Vector3:planeproject(normal) end

---@param other Vector3
---@return number
function Vector3:dot(other) end

---@param other Vector3
---@return Vector3
function Vector3:cross(other) end

---@return Vector2
function Vector3:tov2() end

---@return Vector4
function Vector3:tov4() end

---@return Vector4
function Vector4:normalize() end

---@param roll number
---@param pitch number
---@param yaw number
---@return Vector4
function Vector4:rotate(roll, pitch, yaw) end

---@param angle number
---@param axis Vector3
---@return Vector4
function Vector4:rotate(angle, axis) end

---@param matrix Mat3
---@return Vector4
function Vector4:rotate(matrix) end

---@param matrix Mat4
---@return Vector4
function Vector4:rotate(matrix) end

---@param target Vector3
---@return Vector4
function Vector4:lookat(target) end

---@param target Vector4
---@return Vector4
function Vector4:project(target) end

---@param normal Vector4
---@return Vector4
function Vector4:planeproject(normal) end

---@param other Vector4
---@return number
function Vector4:dot(other) end

---@return Vector2
function Vector4:tov2() end

---@return Vector3
function Vector4:tov3() end

---@param i number
---@param j number
---@return number
function Mat2:get(i, j) end

---@param i number
---@param j number
---@param value number
function Mat2:set(i, j, value) end

---@return Mat3
function Mat2:tomat3() end

---@return Mat4
function Mat2:tomat4() end

---@param i number
---@param j number
---@return number
function Mat3:get(i, j) end

---@param i number
---@param j number
---@param value number
function Mat3:set(i, j, value) end

---@return Mat2
function Mat3:tomat2() end

---@return Mat4
function Mat3:tomat4() end

---@param i number
---@param j number
---@return number
function Mat4:get(i, j) end

---@param i number
---@param j number
---@param value number
function Mat4:set(i, j, value) end

---@return Mat2
function Mat4:tomat2() end

---@return Mat3
function Mat4:tomat3() end

---@return Quaternion
function Quaternion:normalize() end

---@param target Quaternion
---@param speed number
---@return Quaternion
function Quaternion:rotateTo(target, speed) end

---@param forward Vector3
function Quaternion:lookTo(forward) end

---@param forward Vector3
---@param up Vector3
function Quaternion:lookTo(forward, up) end

---@param other Quaternion
---@return number
function Quaternion:dot(other) end

---@return number, number, number
function Quaternion:toeuler() end

---@return Mat3
function Quaternion:tomat() end

---@return Mat3
function Quaternion:tomat3() end

---@return Mat4
function Quaternion:tomat4() end
