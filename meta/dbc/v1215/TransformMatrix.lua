---@meta
-- Generated LuaLS annotations for TransformMatrix (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransformMatrix in build 12.1.5.69594.
---@class dbc.row.v1215.TransformMatrix : RowProxy
---@field ID integer
---@field Pos number[]
---@field Yaw number
---@field Pitch number
---@field Roll number
---@field Scale number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransformMatrix self
function row:SetID(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.TransformMatrix self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'Yaw'.
---@return number value
function row:GetYaw() end

---Sets the value of field 'Yaw'.
---@param value number
---@return dbc.row.v1215.TransformMatrix self
function row:SetYaw(value) end

---Gets the value of field 'Pitch'.
---@return number value
function row:GetPitch() end

---Sets the value of field 'Pitch'.
---@param value number
---@return dbc.row.v1215.TransformMatrix self
function row:SetPitch(value) end

---Gets the value of field 'Roll'.
---@return number value
function row:GetRoll() end

---Sets the value of field 'Roll'.
---@param value number
---@return dbc.row.v1215.TransformMatrix self
function row:SetRoll(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.TransformMatrix self
function row:SetScale(value) end

---Table container for TransformMatrix (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransformMatrix : DbcTable
---@field [integer] dbc.row.v1215.TransformMatrix
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransformMatrix
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransformMatrix|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransformMatrix
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransformMatrix>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransformMatrix[]
function tbl:GetByRelation(foreign_id) end

return {}
