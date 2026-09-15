---@meta
-- Generated LuaLS annotations for Soulbind (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Soulbind in build 12.1.5.69594.
---@class dbc.row.v1215.Soulbind : RowProxy
---@field ID integer
---@field Name_lang string
---@field CovenantID integer
---@field GarrTalentTreeID integer
---@field CreatureID integer
---@field GarrFollowerID integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Soulbind self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Soulbind self
function row:SetName_lang(value) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.Soulbind self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'GarrTalentTreeID'.
---@return integer value
function row:GetGarrTalentTreeID() end

---Sets the value of field 'GarrTalentTreeID'.
---@param value integer
---@return dbc.row.v1215.Soulbind self
function row:SetGarrTalentTreeID(value) end

---Navigates foreign relationship to 'GarrTalentTree' via 'GarrTalentTreeID'.
---@return dbc.row.v1215.GarrTalentTree|nil
function row:GetGarrTalentTree() end

---Creates a related 'GarrTalentTree' row and automatically links 'GarrTalentTreeID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentTree
function row:CreateRelated(data) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.Soulbind self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.Soulbind self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.Soulbind self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for Soulbind (Build 12.1.5.69594).
---@class dbc.Table.v1215.Soulbind : DbcTable
---@field [integer] dbc.row.v1215.Soulbind
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Soulbind
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Soulbind|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Soulbind
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Soulbind>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Soulbind[]
function tbl:GetByRelation(foreign_id) end

return {}
