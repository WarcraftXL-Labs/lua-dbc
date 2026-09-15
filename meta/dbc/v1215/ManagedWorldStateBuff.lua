---@meta
-- Generated LuaLS annotations for ManagedWorldStateBuff (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ManagedWorldStateBuff in build 12.1.5.69594.
---@class dbc.row.v1215.ManagedWorldStateBuff : RowProxy
---@field ID integer
---@field BuffSpellID integer
---@field PlayerConditionID integer
---@field OccurrenceValue integer
---@field ManagedWorldStateID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateBuff self
function row:SetID(value) end

---Gets the value of field 'BuffSpellID'.
---@return integer value
function row:GetBuffSpellID() end

---Sets the value of field 'BuffSpellID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateBuff self
function row:SetBuffSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'BuffSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetBuffSpell() end

---Creates a related 'Spell' row and automatically links 'BuffSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateBuff self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'OccurrenceValue'.
---@return integer value
function row:GetOccurrenceValue() end

---Sets the value of field 'OccurrenceValue'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateBuff self
function row:SetOccurrenceValue(value) end

---Gets the value of field 'ManagedWorldStateID'.
---@return integer value
function row:GetManagedWorldStateID() end

---Sets the value of field 'ManagedWorldStateID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldStateBuff self
function row:SetManagedWorldStateID(value) end

---Navigates foreign relationship to 'ManagedWorldState' via 'ManagedWorldStateID'.
---@return dbc.row.v1215.ManagedWorldState|nil
function row:GetManagedWorldState() end

---Creates a related 'ManagedWorldState' row and automatically links 'ManagedWorldStateID'.
---@param data? table
---@return dbc.row.v1215.ManagedWorldState
function row:CreateRelated(data) end

---Table container for ManagedWorldStateBuff (Build 12.1.5.69594).
---@class dbc.Table.v1215.ManagedWorldStateBuff : DbcTable
---@field [integer] dbc.row.v1215.ManagedWorldStateBuff
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ManagedWorldStateBuff
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ManagedWorldStateBuff|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ManagedWorldStateBuff
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ManagedWorldStateBuff>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ManagedWorldStateBuff[]
function tbl:GetByRelation(foreign_id) end

return {}
