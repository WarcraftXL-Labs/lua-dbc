---@meta
-- Generated LuaLS annotations for GlobalPlayerCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GlobalPlayerCondition in build 12.1.5.69594.
---@class dbc.row.v1215.GlobalPlayerCondition : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field InSetIndex integer Order? Tier?
---@field GlobalPlayerConditionSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GlobalPlayerCondition self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GlobalPlayerCondition self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'InSetIndex'.
---@return integer value
function row:GetInSetIndex() end

---Sets the value of field 'InSetIndex'.
---@param value integer
---@return dbc.row.v1215.GlobalPlayerCondition self
function row:SetInSetIndex(value) end

---Gets the value of field 'GlobalPlayerConditionSetID'.
---@return integer value
function row:GetGlobalPlayerConditionSetID() end

---Sets the value of field 'GlobalPlayerConditionSetID'.
---@param value integer
---@return dbc.row.v1215.GlobalPlayerCondition self
function row:SetGlobalPlayerConditionSetID(value) end

---Navigates foreign relationship to 'GlobalPlayerConditionSet' via 'GlobalPlayerConditionSetID'.
---@return dbc.row.v1215.GlobalPlayerConditionSet|nil
function row:GetGlobalPlayerConditionSet() end

---Creates a related 'GlobalPlayerConditionSet' row and automatically links 'GlobalPlayerConditionSetID'.
---@param data? table
---@return dbc.row.v1215.GlobalPlayerConditionSet
function row:CreateRelated(data) end

---Table container for GlobalPlayerCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.GlobalPlayerCondition : DbcTable
---@field [integer] dbc.row.v1215.GlobalPlayerCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GlobalPlayerCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GlobalPlayerCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GlobalPlayerCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GlobalPlayerCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GlobalPlayerCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
