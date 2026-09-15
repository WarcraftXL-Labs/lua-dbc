---@meta
-- Generated LuaLS annotations for CreatureLabel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureLabel in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureLabel : RowProxy
---@field ID integer
---@field LabelID integer
---@field CreatureDifficultyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureLabel self
function row:SetID(value) end

---Gets the value of field 'LabelID'.
---@return integer value
function row:GetLabelID() end

---Sets the value of field 'LabelID'.
---@param value integer
---@return dbc.row.v1215.CreatureLabel self
function row:SetLabelID(value) end

---Navigates foreign relationship to 'Label' via 'LabelID'.
---@return dbc.row.v1215.Label|nil
function row:GetLabel() end

---Creates a related 'Label' row and automatically links 'LabelID'.
---@param data? table
---@return dbc.row.v1215.Label
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDifficultyID'.
---@return integer value
function row:GetCreatureDifficultyID() end

---Sets the value of field 'CreatureDifficultyID'.
---@param value integer
---@return dbc.row.v1215.CreatureLabel self
function row:SetCreatureDifficultyID(value) end

---Navigates foreign relationship to 'CreatureDifficulty' via 'CreatureDifficultyID'.
---@return dbc.row.v1215.CreatureDifficulty|nil
function row:GetCreatureDifficulty() end

---Creates a related 'CreatureDifficulty' row and automatically links 'CreatureDifficultyID'.
---@param data? table
---@return dbc.row.v1215.CreatureDifficulty
function row:CreateRelated(data) end

---Table container for CreatureLabel (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureLabel : DbcTable
---@field [integer] dbc.row.v1215.CreatureLabel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureLabel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureLabel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureLabel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureLabel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureLabel[]
function tbl:GetByRelation(foreign_id) end

return {}
