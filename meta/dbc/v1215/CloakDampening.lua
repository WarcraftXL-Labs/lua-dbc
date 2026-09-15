---@meta
-- Generated LuaLS annotations for CloakDampening (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CloakDampening in build 12.1.5.69594.
---@class dbc.row.v1215.CloakDampening : RowProxy
---@field ID integer
---@field TabardAngle number
---@field TabardDampening number
---@field ExpectedWeaponSize number
---@field Angle number[]
---@field Dampening number[]
---@field TailAngle number[]
---@field TailDampening number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CloakDampening self
function row:SetID(value) end

---Gets the value of field 'TabardAngle'.
---@return number value
function row:GetTabardAngle() end

---Sets the value of field 'TabardAngle'.
---@param value number
---@return dbc.row.v1215.CloakDampening self
function row:SetTabardAngle(value) end

---Gets the value of field 'TabardDampening'.
---@return number value
function row:GetTabardDampening() end

---Sets the value of field 'TabardDampening'.
---@param value number
---@return dbc.row.v1215.CloakDampening self
function row:SetTabardDampening(value) end

---Gets the value of field 'ExpectedWeaponSize'.
---@return number value
function row:GetExpectedWeaponSize() end

---Sets the value of field 'ExpectedWeaponSize'.
---@param value number
---@return dbc.row.v1215.CloakDampening self
function row:SetExpectedWeaponSize(value) end

---Gets the value of field 'Angle'.
---@return number[] value
function row:GetAngle() end

---Sets the value of field 'Angle'.
---@param value number[]
---@return dbc.row.v1215.CloakDampening self
function row:SetAngle(value) end

---Gets element at 1-based index in 'Angle'.
---@param index integer
---@return number value
function row:GetAngleItem(index) end

---Gets the value of field 'Dampening'.
---@return number[] value
function row:GetDampening() end

---Sets the value of field 'Dampening'.
---@param value number[]
---@return dbc.row.v1215.CloakDampening self
function row:SetDampening(value) end

---Gets element at 1-based index in 'Dampening'.
---@param index integer
---@return number value
function row:GetDampeningItem(index) end

---Gets the value of field 'TailAngle'.
---@return number[] value
function row:GetTailAngle() end

---Sets the value of field 'TailAngle'.
---@param value number[]
---@return dbc.row.v1215.CloakDampening self
function row:SetTailAngle(value) end

---Gets element at 1-based index in 'TailAngle'.
---@param index integer
---@return number value
function row:GetTailAngleItem(index) end

---Gets the value of field 'TailDampening'.
---@return number[] value
function row:GetTailDampening() end

---Sets the value of field 'TailDampening'.
---@param value number[]
---@return dbc.row.v1215.CloakDampening self
function row:SetTailDampening(value) end

---Gets element at 1-based index in 'TailDampening'.
---@param index integer
---@return number value
function row:GetTailDampeningItem(index) end

---Table container for CloakDampening (Build 12.1.5.69594).
---@class dbc.Table.v1215.CloakDampening : DbcTable
---@field [integer] dbc.row.v1215.CloakDampening
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CloakDampening
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CloakDampening|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CloakDampening
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CloakDampening>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CloakDampening[]
function tbl:GetByRelation(foreign_id) end

return {}
