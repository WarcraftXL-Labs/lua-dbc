---@meta
-- Generated LuaLS annotations for GlobalGameContentTuning (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GlobalGameContentTuning in build 12.1.5.69594.
---@class dbc.row.v1215.GlobalGameContentTuning : RowProxy
---@field ID integer
---@field ContentTuningID integer
---@field ExpansionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GlobalGameContentTuning self
function row:SetID(value) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.GlobalGameContentTuning self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.GlobalGameContentTuning self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Table container for GlobalGameContentTuning (Build 12.1.5.69594).
---@class dbc.Table.v1215.GlobalGameContentTuning : DbcTable
---@field [integer] dbc.row.v1215.GlobalGameContentTuning
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GlobalGameContentTuning
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GlobalGameContentTuning|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GlobalGameContentTuning
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GlobalGameContentTuning>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GlobalGameContentTuning[]
function tbl:GetByRelation(foreign_id) end

return {}
