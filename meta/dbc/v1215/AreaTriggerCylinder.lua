---@meta
-- Generated LuaLS annotations for AreaTriggerCylinder (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaTriggerCylinder in build 12.1.5.69594.
---@class dbc.row.v1215.AreaTriggerCylinder : RowProxy
---@field ID integer
---@field Radius number
---@field Height number
---@field ZOffset number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaTriggerCylinder self
function row:SetID(value) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.AreaTriggerCylinder self
function row:SetRadius(value) end

---Gets the value of field 'Height'.
---@return number value
function row:GetHeight() end

---Sets the value of field 'Height'.
---@param value number
---@return dbc.row.v1215.AreaTriggerCylinder self
function row:SetHeight(value) end

---Gets the value of field 'ZOffset'.
---@return number value
function row:GetZOffset() end

---Sets the value of field 'ZOffset'.
---@param value number
---@return dbc.row.v1215.AreaTriggerCylinder self
function row:SetZOffset(value) end

---Table container for AreaTriggerCylinder (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaTriggerCylinder : DbcTable
---@field [integer] dbc.row.v1215.AreaTriggerCylinder
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaTriggerCylinder
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerCylinder|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerCylinder
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaTriggerCylinder>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaTriggerCylinder[]
function tbl:GetByRelation(foreign_id) end

return {}
