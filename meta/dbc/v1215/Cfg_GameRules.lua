---@meta
-- Generated LuaLS annotations for Cfg_GameRules (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Cfg_GameRules in build 12.1.5.69594.
---@class dbc.row.v1215.Cfg_GameRules : RowProxy
---@field ID integer
---@field RuleValue integer
---@field RuleType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Cfg_GameRules self
function row:SetID(value) end

---Gets the value of field 'RuleValue'.
---@return integer value
function row:GetRuleValue() end

---Sets the value of field 'RuleValue'.
---@param value integer
---@return dbc.row.v1215.Cfg_GameRules self
function row:SetRuleValue(value) end

---Gets the value of field 'RuleType'.
---@return integer value
function row:GetRuleType() end

---Sets the value of field 'RuleType'.
---@param value integer
---@return dbc.row.v1215.Cfg_GameRules self
function row:SetRuleType(value) end

---Table container for Cfg_GameRules (Build 12.1.5.69594).
---@class dbc.Table.v1215.Cfg_GameRules : DbcTable
---@field [integer] dbc.row.v1215.Cfg_GameRules
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Cfg_GameRules
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_GameRules|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Cfg_GameRules
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Cfg_GameRules>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Cfg_GameRules[]
function tbl:GetByRelation(foreign_id) end

return {}
