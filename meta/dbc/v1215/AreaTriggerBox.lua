---@meta
-- Generated LuaLS annotations for AreaTriggerBox (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AreaTriggerBox in build 12.1.5.69594.
---@class dbc.row.v1215.AreaTriggerBox : RowProxy
---@field ID integer
---@field Extents number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AreaTriggerBox self
function row:SetID(value) end

---Gets the value of field 'Extents'.
---@return number[] value
function row:GetExtents() end

---Sets the value of field 'Extents'.
---@param value number[]
---@return dbc.row.v1215.AreaTriggerBox self
function row:SetExtents(value) end

---Gets element at 1-based index in 'Extents'.
---@param index integer
---@return number value
function row:GetExtentsItem(index) end

---Table container for AreaTriggerBox (Build 12.1.5.69594).
---@class dbc.Table.v1215.AreaTriggerBox : DbcTable
---@field [integer] dbc.row.v1215.AreaTriggerBox
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AreaTriggerBox
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerBox|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AreaTriggerBox
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AreaTriggerBox>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AreaTriggerBox[]
function tbl:GetByRelation(foreign_id) end

return {}
