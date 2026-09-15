---@meta
-- Generated LuaLS annotations for PerksActivityXInterval (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksActivityXInterval in build 12.1.5.69594.
---@class dbc.row.v1215.PerksActivityXInterval : RowProxy
---@field ID integer
---@field PerksActivityID integer
---@field Field_10_0_5_47118_002 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXInterval self
function row:SetID(value) end

---Gets the value of field 'PerksActivityID'.
---@return integer value
function row:GetPerksActivityID() end

---Sets the value of field 'PerksActivityID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXInterval self
function row:SetPerksActivityID(value) end

---Navigates foreign relationship to 'PerksActivity' via 'PerksActivityID'.
---@return dbc.row.v1215.PerksActivity|nil
function row:GetPerksActivity() end

---Creates a related 'PerksActivity' row and automatically links 'PerksActivityID'.
---@param data? table
---@return dbc.row.v1215.PerksActivity
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_5_47118_002'.
---@return integer value
function row:GetField_10_0_5_47118_002() end

---Sets the value of field 'Field_10_0_5_47118_002'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXInterval self
function row:SetField_10_0_5_47118_002(value) end

---Table container for PerksActivityXInterval (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksActivityXInterval : DbcTable
---@field [integer] dbc.row.v1215.PerksActivityXInterval
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksActivityXInterval
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityXInterval|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityXInterval
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksActivityXInterval>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksActivityXInterval[]
function tbl:GetByRelation(foreign_id) end

return {}
