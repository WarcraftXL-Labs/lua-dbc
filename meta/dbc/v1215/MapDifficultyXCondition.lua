---@meta
-- Generated LuaLS annotations for MapDifficultyXCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapDifficultyXCondition in build 12.1.5.69594.
---@class dbc.row.v1215.MapDifficultyXCondition : RowProxy
---@field ID integer
---@field FailureDescription_lang string
---@field PlayerConditionID integer
---@field OrderIndex integer
---@field MapDifficultyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyXCondition self
function row:SetID(value) end

---Gets the value of field 'FailureDescription_lang'.
---@return string value
function row:GetFailureDescription_lang() end

---Sets the value of field 'FailureDescription_lang'.
---@param value string
---@return dbc.row.v1215.MapDifficultyXCondition self
function row:SetFailureDescription_lang(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyXCondition self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyXCondition self
function row:SetOrderIndex(value) end

---Gets the value of field 'MapDifficultyID'.
---@return integer value
function row:GetMapDifficultyID() end

---Sets the value of field 'MapDifficultyID'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyXCondition self
function row:SetMapDifficultyID(value) end

---Navigates foreign relationship to 'MapDifficulty' via 'MapDifficultyID'.
---@return dbc.row.v1215.MapDifficulty|nil
function row:GetMapDifficulty() end

---Creates a related 'MapDifficulty' row and automatically links 'MapDifficultyID'.
---@param data? table
---@return dbc.row.v1215.MapDifficulty
function row:CreateRelated(data) end

---Table container for MapDifficultyXCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapDifficultyXCondition : DbcTable
---@field [integer] dbc.row.v1215.MapDifficultyXCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapDifficultyXCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapDifficultyXCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapDifficultyXCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapDifficultyXCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapDifficultyXCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
