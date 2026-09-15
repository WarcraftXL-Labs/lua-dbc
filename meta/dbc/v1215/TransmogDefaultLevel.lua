---@meta
-- Generated LuaLS annotations for TransmogDefaultLevel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogDefaultLevel in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogDefaultLevel : RowProxy
---@field ID integer
---@field ExpansionID integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogDefaultLevel self
function row:SetID(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.TransmogDefaultLevel self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.TransmogDefaultLevel self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for TransmogDefaultLevel (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogDefaultLevel : DbcTable
---@field [integer] dbc.row.v1215.TransmogDefaultLevel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogDefaultLevel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogDefaultLevel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogDefaultLevel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogDefaultLevel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogDefaultLevel[]
function tbl:GetByRelation(foreign_id) end

return {}
