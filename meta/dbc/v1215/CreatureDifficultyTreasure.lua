---@meta
-- Generated LuaLS annotations for CreatureDifficultyTreasure (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDifficultyTreasure in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDifficultyTreasure : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field Field_10_0_0_45141_000 integer
---@field CreatureDifficultyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficultyTreasure self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficultyTreasure self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_45141_000'.
---@return integer value
function row:GetField_10_0_0_45141_000() end

---Sets the value of field 'Field_10_0_0_45141_000'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficultyTreasure self
function row:SetField_10_0_0_45141_000(value) end

---Gets the value of field 'CreatureDifficultyID'.
---@return integer value
function row:GetCreatureDifficultyID() end

---Sets the value of field 'CreatureDifficultyID'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficultyTreasure self
function row:SetCreatureDifficultyID(value) end

---Navigates foreign relationship to 'CreatureDifficulty' via 'CreatureDifficultyID'.
---@return dbc.row.v1215.CreatureDifficulty|nil
function row:GetCreatureDifficulty() end

---Creates a related 'CreatureDifficulty' row and automatically links 'CreatureDifficultyID'.
---@param data? table
---@return dbc.row.v1215.CreatureDifficulty
function row:CreateRelated(data) end

---Table container for CreatureDifficultyTreasure (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDifficultyTreasure : DbcTable
---@field [integer] dbc.row.v1215.CreatureDifficultyTreasure
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDifficultyTreasure
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDifficultyTreasure|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDifficultyTreasure
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDifficultyTreasure>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDifficultyTreasure[]
function tbl:GetByRelation(foreign_id) end

return {}
