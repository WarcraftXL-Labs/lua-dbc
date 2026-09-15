---@meta
-- Generated LuaLS annotations for CameraMode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CameraMode in build 12.1.5.69594.
---@class dbc.row.v1215.CameraMode : RowProxy
---@field ID integer
---@field PositionOffset number[]
---@field TargetOffset number[]
---@field Type integer
---@field Flags integer
---@field PositionSmoothing number
---@field RotationSmoothing number
---@field FieldOfView number
---@field LockedPositionOffsetBase integer
---@field LockedPositionOffsetDirection integer
---@field LockedTargetOffsetBase integer
---@field LockedTargetOffsetDirection integer
---@field Field_10_1_5_50232_011 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetID(value) end

---Gets the value of field 'PositionOffset'.
---@return number[] value
function row:GetPositionOffset() end

---Sets the value of field 'PositionOffset'.
---@param value number[]
---@return dbc.row.v1215.CameraMode self
function row:SetPositionOffset(value) end

---Gets element at 1-based index in 'PositionOffset'.
---@param index integer
---@return number value
function row:GetPositionOffsetItem(index) end

---Gets the value of field 'TargetOffset'.
---@return number[] value
function row:GetTargetOffset() end

---Sets the value of field 'TargetOffset'.
---@param value number[]
---@return dbc.row.v1215.CameraMode self
function row:SetTargetOffset(value) end

---Gets element at 1-based index in 'TargetOffset'.
---@param index integer
---@return number value
function row:GetTargetOffsetItem(index) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetFlags(value) end

---Gets the value of field 'PositionSmoothing'.
---@return number value
function row:GetPositionSmoothing() end

---Sets the value of field 'PositionSmoothing'.
---@param value number
---@return dbc.row.v1215.CameraMode self
function row:SetPositionSmoothing(value) end

---Gets the value of field 'RotationSmoothing'.
---@return number value
function row:GetRotationSmoothing() end

---Sets the value of field 'RotationSmoothing'.
---@param value number
---@return dbc.row.v1215.CameraMode self
function row:SetRotationSmoothing(value) end

---Gets the value of field 'FieldOfView'.
---@return number value
function row:GetFieldOfView() end

---Sets the value of field 'FieldOfView'.
---@param value number
---@return dbc.row.v1215.CameraMode self
function row:SetFieldOfView(value) end

---Gets the value of field 'LockedPositionOffsetBase'.
---@return integer value
function row:GetLockedPositionOffsetBase() end

---Sets the value of field 'LockedPositionOffsetBase'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetLockedPositionOffsetBase(value) end

---Gets the value of field 'LockedPositionOffsetDirection'.
---@return integer value
function row:GetLockedPositionOffsetDirection() end

---Sets the value of field 'LockedPositionOffsetDirection'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetLockedPositionOffsetDirection(value) end

---Gets the value of field 'LockedTargetOffsetBase'.
---@return integer value
function row:GetLockedTargetOffsetBase() end

---Sets the value of field 'LockedTargetOffsetBase'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetLockedTargetOffsetBase(value) end

---Gets the value of field 'LockedTargetOffsetDirection'.
---@return integer value
function row:GetLockedTargetOffsetDirection() end

---Sets the value of field 'LockedTargetOffsetDirection'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetLockedTargetOffsetDirection(value) end

---Gets the value of field 'Field_10_1_5_50232_011'.
---@return integer value
function row:GetField_10_1_5_50232_011() end

---Sets the value of field 'Field_10_1_5_50232_011'.
---@param value integer
---@return dbc.row.v1215.CameraMode self
function row:SetField_10_1_5_50232_011(value) end

---Table container for CameraMode (Build 12.1.5.69594).
---@class dbc.Table.v1215.CameraMode : DbcTable
---@field [integer] dbc.row.v1215.CameraMode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CameraMode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CameraMode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CameraMode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CameraMode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CameraMode[]
function tbl:GetByRelation(foreign_id) end

return {}
