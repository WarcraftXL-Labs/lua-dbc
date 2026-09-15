---@meta
-- Generated LuaLS annotations for BattlePetDisplayOverride (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlePetDisplayOverride in build 12.1.5.69594.
---@class dbc.row.v1215.BattlePetDisplayOverride : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field CreatureDisplayInfoID integer
---@field PriorityCategory integer
---@field BattlePetSpeciesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlePetDisplayOverride self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.BattlePetDisplayOverride self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.BattlePetDisplayOverride self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'PriorityCategory'.
---@return integer value
function row:GetPriorityCategory() end

---Sets the value of field 'PriorityCategory'.
---@param value integer
---@return dbc.row.v1215.BattlePetDisplayOverride self
function row:SetPriorityCategory(value) end

---Gets the value of field 'BattlePetSpeciesID'.
---@return integer value
function row:GetBattlePetSpeciesID() end

---Sets the value of field 'BattlePetSpeciesID'.
---@param value integer
---@return dbc.row.v1215.BattlePetDisplayOverride self
function row:SetBattlePetSpeciesID(value) end

---Navigates foreign relationship to 'BattlePetSpecies' via 'BattlePetSpeciesID'.
---@return dbc.row.v1215.BattlePetSpecies|nil
function row:GetBattlePetSpecies() end

---Creates a related 'BattlePetSpecies' row and automatically links 'BattlePetSpeciesID'.
---@param data? table
---@return dbc.row.v1215.BattlePetSpecies
function row:CreateRelated(data) end

---Table container for BattlePetDisplayOverride (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlePetDisplayOverride : DbcTable
---@field [integer] dbc.row.v1215.BattlePetDisplayOverride
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlePetDisplayOverride
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetDisplayOverride|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlePetDisplayOverride
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlePetDisplayOverride>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlePetDisplayOverride[]
function tbl:GetByRelation(foreign_id) end

return {}
