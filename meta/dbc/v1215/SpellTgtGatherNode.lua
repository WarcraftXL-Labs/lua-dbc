---@meta
-- Generated LuaLS annotations for SpellTgtGatherNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellTgtGatherNode in build 12.1.5.69594.
---@class dbc.row.v1215.SpellTgtGatherNode : RowProxy
---@field ID integer
---@field NodeID integer
---@field Field_12_0_0_63534_002 number
---@field Field_12_0_0_63534_003 number
---@field Field_12_0_0_63534_004 integer
---@field Field_12_0_0_63534_005 number
---@field Field_12_0_0_63534_006 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellTgtGatherNode self
function row:SetID(value) end

---Gets the value of field 'NodeID'.
---@return integer value
function row:GetNodeID() end

---Sets the value of field 'NodeID'.
---@param value integer
---@return dbc.row.v1215.SpellTgtGatherNode self
function row:SetNodeID(value) end

---Navigates foreign relationship to 'Node' via 'NodeID'.
---@return dbc.row.v1215.Node|nil
function row:GetNode() end

---Creates a related 'Node' row and automatically links 'NodeID'.
---@param data? table
---@return dbc.row.v1215.Node
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_002'.
---@return number value
function row:GetField_12_0_0_63534_002() end

---Sets the value of field 'Field_12_0_0_63534_002'.
---@param value number
---@return dbc.row.v1215.SpellTgtGatherNode self
function row:SetField_12_0_0_63534_002(value) end

---Gets the value of field 'Field_12_0_0_63534_003'.
---@return number value
function row:GetField_12_0_0_63534_003() end

---Sets the value of field 'Field_12_0_0_63534_003'.
---@param value number
---@return dbc.row.v1215.SpellTgtGatherNode self
function row:SetField_12_0_0_63534_003(value) end

---Gets the value of field 'Field_12_0_0_63534_004'.
---@return integer value
function row:GetField_12_0_0_63534_004() end

---Sets the value of field 'Field_12_0_0_63534_004'.
---@param value integer
---@return dbc.row.v1215.SpellTgtGatherNode self
function row:SetField_12_0_0_63534_004(value) end

---Gets the value of field 'Field_12_0_0_63534_005'.
---@return number value
function row:GetField_12_0_0_63534_005() end

---Sets the value of field 'Field_12_0_0_63534_005'.
---@param value number
---@return dbc.row.v1215.SpellTgtGatherNode self
function row:SetField_12_0_0_63534_005(value) end

---Gets the value of field 'Field_12_0_0_63534_006'.
---@return number value
function row:GetField_12_0_0_63534_006() end

---Sets the value of field 'Field_12_0_0_63534_006'.
---@param value number
---@return dbc.row.v1215.SpellTgtGatherNode self
function row:SetField_12_0_0_63534_006(value) end

---Table container for SpellTgtGatherNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellTgtGatherNode : DbcTable
---@field [integer] dbc.row.v1215.SpellTgtGatherNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellTgtGatherNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellTgtGatherNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellTgtGatherNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellTgtGatherNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellTgtGatherNode[]
function tbl:GetByRelation(foreign_id) end

return {}
