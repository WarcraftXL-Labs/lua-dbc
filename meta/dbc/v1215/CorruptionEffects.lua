---@meta
-- Generated LuaLS annotations for CorruptionEffects (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CorruptionEffects in build 12.1.5.69594.
---@class dbc.row.v1215.CorruptionEffects : RowProxy
---@field ID integer
---@field MinimumCorruption number
---@field Aura integer
---@field PlayerConditionID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CorruptionEffects self
function row:SetID(value) end

---Gets the value of field 'MinimumCorruption'.
---@return number value
function row:GetMinimumCorruption() end

---Sets the value of field 'MinimumCorruption'.
---@param value number
---@return dbc.row.v1215.CorruptionEffects self
function row:SetMinimumCorruption(value) end

---Gets the value of field 'Aura'.
---@return integer value
function row:GetAura() end

---Sets the value of field 'Aura'.
---@param value integer
---@return dbc.row.v1215.CorruptionEffects self
function row:SetAura(value) end

---Navigates foreign relationship to 'Spell' via 'Aura'.
---@return dbc.row.v1215.Spell|nil
function row:GetAura() end

---Creates a related 'Spell' row and automatically links 'Aura'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.CorruptionEffects self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CorruptionEffects self
function row:SetFlags(value) end

---Table container for CorruptionEffects (Build 12.1.5.69594).
---@class dbc.Table.v1215.CorruptionEffects : DbcTable
---@field [integer] dbc.row.v1215.CorruptionEffects
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CorruptionEffects
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CorruptionEffects|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CorruptionEffects
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CorruptionEffects>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CorruptionEffects[]
function tbl:GetByRelation(foreign_id) end

return {}
