---@meta
-- Generated LuaLS annotations for GarrTalentRankGroupResearchMod (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrTalentRankGroupResearchMod in build 12.1.5.69594.
---@class dbc.row.v1215.GarrTalentRankGroupResearchMod : RowProxy
---@field ID integer
---@field Field_9_2_0_42257_000 integer
---@field PlayerConditionID integer
---@field Field_9_2_0_42257_002 number
---@field GarrTalentRankGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod self
function row:SetID(value) end

---Gets the value of field 'Field_9_2_0_42257_000'.
---@return integer value
function row:GetField_9_2_0_42257_000() end

---Sets the value of field 'Field_9_2_0_42257_000'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod self
function row:SetField_9_2_0_42257_000(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_2_0_42257_002'.
---@return number value
function row:GetField_9_2_0_42257_002() end

---Sets the value of field 'Field_9_2_0_42257_002'.
---@param value number
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod self
function row:SetField_9_2_0_42257_002(value) end

---Gets the value of field 'GarrTalentRankGroupID'.
---@return integer value
function row:GetGarrTalentRankGroupID() end

---Sets the value of field 'GarrTalentRankGroupID'.
---@param value integer
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod self
function row:SetGarrTalentRankGroupID(value) end

---Navigates foreign relationship to 'GarrTalentRankGroup' via 'GarrTalentRankGroupID'.
---@return dbc.row.v1215.GarrTalentRankGroup|nil
function row:GetGarrTalentRankGroup() end

---Creates a related 'GarrTalentRankGroup' row and automatically links 'GarrTalentRankGroupID'.
---@param data? table
---@return dbc.row.v1215.GarrTalentRankGroup
function row:CreateRelated(data) end

---Table container for GarrTalentRankGroupResearchMod (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrTalentRankGroupResearchMod : DbcTable
---@field [integer] dbc.row.v1215.GarrTalentRankGroupResearchMod
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrTalentRankGroupResearchMod>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrTalentRankGroupResearchMod[]
function tbl:GetByRelation(foreign_id) end

return {}
