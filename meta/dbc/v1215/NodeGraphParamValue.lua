---@meta
-- Generated LuaLS annotations for NodeGraphParamValue (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of NodeGraphParamValue in build 12.1.5.69594.
---@class dbc.row.v1215.NodeGraphParamValue : RowProxy
---@field ID integer
---@field Field_12_0_0_63534_000 string
---@field Field_12_0_0_63534_001 integer
---@field Field_12_0_0_63534_002 integer
---@field Field_12_0_0_63534_003 number
---@field Field_12_0_0_63534_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.NodeGraphParamValue self
function row:SetID(value) end

---Gets the value of field 'Field_12_0_0_63534_000'.
---@return string value
function row:GetField_12_0_0_63534_000() end

---Sets the value of field 'Field_12_0_0_63534_000'.
---@param value string
---@return dbc.row.v1215.NodeGraphParamValue self
function row:SetField_12_0_0_63534_000(value) end

---Gets the value of field 'Field_12_0_0_63534_001'.
---@return integer value
function row:GetField_12_0_0_63534_001() end

---Sets the value of field 'Field_12_0_0_63534_001'.
---@param value integer
---@return dbc.row.v1215.NodeGraphParamValue self
function row:SetField_12_0_0_63534_001(value) end

---Gets the value of field 'Field_12_0_0_63534_002'.
---@return integer value
function row:GetField_12_0_0_63534_002() end

---Sets the value of field 'Field_12_0_0_63534_002'.
---@param value integer
---@return dbc.row.v1215.NodeGraphParamValue self
function row:SetField_12_0_0_63534_002(value) end

---Gets the value of field 'Field_12_0_0_63534_003'.
---@return number value
function row:GetField_12_0_0_63534_003() end

---Sets the value of field 'Field_12_0_0_63534_003'.
---@param value number
---@return dbc.row.v1215.NodeGraphParamValue self
function row:SetField_12_0_0_63534_003(value) end

---Gets the value of field 'Field_12_0_0_63534_004'.
---@return integer value
function row:GetField_12_0_0_63534_004() end

---Sets the value of field 'Field_12_0_0_63534_004'.
---@param value integer
---@return dbc.row.v1215.NodeGraphParamValue self
function row:SetField_12_0_0_63534_004(value) end

---Table container for NodeGraphParamValue (Build 12.1.5.69594).
---@class dbc.Table.v1215.NodeGraphParamValue : DbcTable
---@field [integer] dbc.row.v1215.NodeGraphParamValue
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.NodeGraphParamValue
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.NodeGraphParamValue|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.NodeGraphParamValue
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.NodeGraphParamValue>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.NodeGraphParamValue[]
function tbl:GetByRelation(foreign_id) end

return {}
