---@meta
-- Generated LuaLS annotations for ScenarioEventEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ScenarioEventEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ScenarioEventEntry : RowProxy
---@field ID integer
---@field TriggerType integer
---@field TriggerAsset integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ScenarioEventEntry self
function row:SetID(value) end

---Gets the value of field 'TriggerType'.
---@return integer value
function row:GetTriggerType() end

---Sets the value of field 'TriggerType'.
---@param value integer
---@return dbc.row.v1215.ScenarioEventEntry self
function row:SetTriggerType(value) end

---Gets the value of field 'TriggerAsset'.
---@return integer value
function row:GetTriggerAsset() end

---Sets the value of field 'TriggerAsset'.
---@param value integer
---@return dbc.row.v1215.ScenarioEventEntry self
function row:SetTriggerAsset(value) end

---Table container for ScenarioEventEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ScenarioEventEntry : DbcTable
---@field [integer] dbc.row.v1215.ScenarioEventEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ScenarioEventEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ScenarioEventEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ScenarioEventEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ScenarioEventEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ScenarioEventEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
