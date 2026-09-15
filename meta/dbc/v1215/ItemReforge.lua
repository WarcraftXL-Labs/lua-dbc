---@meta
-- Generated LuaLS annotations for ItemReforge (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemReforge in build 12.1.5.69594.
---@class dbc.row.v1215.ItemReforge : RowProxy
---@field ID integer
---@field Source_stat integer
---@field Source_multiplier number
---@field Target_stat integer
---@field Target_multiplier number
---@field Field_4_4_0_53627_004 integer Original ID from actual Cata?

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemReforge self
function row:SetID(value) end

---Gets the value of field 'Source_stat'.
---@return integer value
function row:GetSource_stat() end

---Sets the value of field 'Source_stat'.
---@param value integer
---@return dbc.row.v1215.ItemReforge self
function row:SetSource_stat(value) end

---Gets the value of field 'Source_multiplier'.
---@return number value
function row:GetSource_multiplier() end

---Sets the value of field 'Source_multiplier'.
---@param value number
---@return dbc.row.v1215.ItemReforge self
function row:SetSource_multiplier(value) end

---Gets the value of field 'Target_stat'.
---@return integer value
function row:GetTarget_stat() end

---Sets the value of field 'Target_stat'.
---@param value integer
---@return dbc.row.v1215.ItemReforge self
function row:SetTarget_stat(value) end

---Gets the value of field 'Target_multiplier'.
---@return number value
function row:GetTarget_multiplier() end

---Sets the value of field 'Target_multiplier'.
---@param value number
---@return dbc.row.v1215.ItemReforge self
function row:SetTarget_multiplier(value) end

---Gets the value of field 'Field_4_4_0_53627_004'.
---@return integer value
function row:GetField_4_4_0_53627_004() end

---Sets the value of field 'Field_4_4_0_53627_004'.
---@param value integer
---@return dbc.row.v1215.ItemReforge self
function row:SetField_4_4_0_53627_004(value) end

---Table container for ItemReforge (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemReforge : DbcTable
---@field [integer] dbc.row.v1215.ItemReforge
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemReforge
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemReforge|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemReforge
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemReforge>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemReforge[]
function tbl:GetByRelation(foreign_id) end

return {}
