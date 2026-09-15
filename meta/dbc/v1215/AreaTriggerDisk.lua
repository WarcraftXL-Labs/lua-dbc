---@meta
-- Generated LuaLS annotations for AreaTriggerDisk (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaTriggerDisk in build 12.1.5.69594.
---@class dbc.row.v1215.AreaTriggerDisk : RowProxy
---@field ID integer
---@field Field_9_2_0_41089_000 number
---@field Radius number
---@field Field_9_2_0_41089_002 number
---@field Field_9_2_0_41089_003 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaTriggerDisk self
function row:SetID(value) end

---Gets the value of field 'Field_9_2_0_41089_000'.
---@return number value
function row:GetField_9_2_0_41089_000() end

---Sets the value of field 'Field_9_2_0_41089_000'.
---@param value number
---@return dbc.row.v1215.AreaTriggerDisk self
function row:SetField_9_2_0_41089_000(value) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.AreaTriggerDisk self
function row:SetRadius(value) end

---Gets the value of field 'Field_9_2_0_41089_002'.
---@return number value
function row:GetField_9_2_0_41089_002() end

---Sets the value of field 'Field_9_2_0_41089_002'.
---@param value number
---@return dbc.row.v1215.AreaTriggerDisk self
function row:SetField_9_2_0_41089_002(value) end

---Gets the value of field 'Field_9_2_0_41089_003'.
---@return number value
function row:GetField_9_2_0_41089_003() end

---Sets the value of field 'Field_9_2_0_41089_003'.
---@param value number
---@return dbc.row.v1215.AreaTriggerDisk self
function row:SetField_9_2_0_41089_003(value) end

---Table container for AreaTriggerDisk (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaTriggerDisk : DbcTable
---@field [integer] dbc.row.v1215.AreaTriggerDisk
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaTriggerDisk
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerDisk|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerDisk
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaTriggerDisk>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaTriggerDisk[]
function tbl:GetByRelation(foreign_id) end

return {}
