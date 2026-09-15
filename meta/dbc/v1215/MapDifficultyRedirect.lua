---@meta
-- Generated LuaLS annotations for MapDifficultyRedirect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapDifficultyRedirect in build 12.1.5.69594.
---@class dbc.row.v1215.MapDifficultyRedirect : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field DifficultyID integer
---@field MapDifficultyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyRedirect self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyRedirect self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyRedirect self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'MapDifficultyID'.
---@return integer value
function row:GetMapDifficultyID() end

---Sets the value of field 'MapDifficultyID'.
---@param value integer
---@return dbc.row.v1215.MapDifficultyRedirect self
function row:SetMapDifficultyID(value) end

---Navigates foreign relationship to 'MapDifficulty' via 'MapDifficultyID'.
---@return dbc.row.v1215.MapDifficulty|nil
function row:GetMapDifficulty() end

---Creates a related 'MapDifficulty' row and automatically links 'MapDifficultyID'.
---@param data? table
---@return dbc.row.v1215.MapDifficulty
function row:CreateRelated(data) end

---Table container for MapDifficultyRedirect (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapDifficultyRedirect : DbcTable
---@field [integer] dbc.row.v1215.MapDifficultyRedirect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapDifficultyRedirect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapDifficultyRedirect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapDifficultyRedirect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapDifficultyRedirect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapDifficultyRedirect[]
function tbl:GetByRelation(foreign_id) end

return {}
