---@meta
-- Generated LuaLS annotations for CollectableSourceVendor (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CollectableSourceVendor in build 12.1.5.69594.
---@class dbc.row.v1215.CollectableSourceVendor : RowProxy
---@field ID integer
---@field Field_10_1_5_49595_001 integer
---@field CollectableSourceInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendor self
function row:SetID(value) end

---Gets the value of field 'Field_10_1_5_49595_001'.
---@return integer value
function row:GetField_10_1_5_49595_001() end

---Sets the value of field 'Field_10_1_5_49595_001'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendor self
function row:SetField_10_1_5_49595_001(value) end

---Gets the value of field 'CollectableSourceInfoID'.
---@return integer value
function row:GetCollectableSourceInfoID() end

---Sets the value of field 'CollectableSourceInfoID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceVendor self
function row:SetCollectableSourceInfoID(value) end

---Navigates foreign relationship to 'CollectableSourceInfo' via 'CollectableSourceInfoID'.
---@return dbc.row.v1215.CollectableSourceInfo|nil
function row:GetCollectableSourceInfo() end

---Creates a related 'CollectableSourceInfo' row and automatically links 'CollectableSourceInfoID'.
---@param data? table
---@return dbc.row.v1215.CollectableSourceInfo
function row:CreateRelated(data) end

---Table container for CollectableSourceVendor (Build 12.1.5.69594).
---@class dbc.Table.v1215.CollectableSourceVendor : DbcTable
---@field [integer] dbc.row.v1215.CollectableSourceVendor
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CollectableSourceVendor
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceVendor|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceVendor
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CollectableSourceVendor>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CollectableSourceVendor[]
function tbl:GetByRelation(foreign_id) end

return {}
