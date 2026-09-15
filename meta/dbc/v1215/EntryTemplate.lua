---@meta
-- Generated LuaLS annotations for EntryTemplate (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EntryTemplate in build 12.1.5.69594.
---@class dbc.row.v1215.EntryTemplate : RowProxy
---@field ID integer
---@field Type integer
---@field Field_12_0_0_63534_001 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EntryTemplate self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.EntryTemplate self
function row:SetType(value) end

---Gets the value of field 'Field_12_0_0_63534_001'.
---@return integer value
function row:GetField_12_0_0_63534_001() end

---Sets the value of field 'Field_12_0_0_63534_001'.
---@param value integer
---@return dbc.row.v1215.EntryTemplate self
function row:SetField_12_0_0_63534_001(value) end

---Table container for EntryTemplate (Build 12.1.5.69594).
---@class dbc.Table.v1215.EntryTemplate : DbcTable
---@field [integer] dbc.row.v1215.EntryTemplate
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EntryTemplate
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EntryTemplate|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EntryTemplate
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EntryTemplate>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EntryTemplate[]
function tbl:GetByRelation(foreign_id) end

return {}
