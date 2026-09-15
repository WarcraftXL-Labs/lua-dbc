---@meta
-- Generated LuaLS annotations for CreatureDifficulty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDifficulty in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDifficulty : RowProxy
---@field ID integer
---@field Field_9_0_1_35522_003Min integer Level randomness?
---@field Field_9_0_1_35522_003Max integer
---@field FactionTemplateID integer
---@field ContentTuningID integer
---@field Flags integer[]
---@field CreatureID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficulty self
function row:SetID(value) end

---Gets the value of field 'Field_9_0_1_35522_003Min'.
---@return integer value
function row:GetField_9_0_1_35522_003Min() end

---Sets the value of field 'Field_9_0_1_35522_003Min'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficulty self
function row:SetField_9_0_1_35522_003Min(value) end

---Gets the value of field 'Field_9_0_1_35522_003Max'.
---@return integer value
function row:GetField_9_0_1_35522_003Max() end

---Sets the value of field 'Field_9_0_1_35522_003Max'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficulty self
function row:SetField_9_0_1_35522_003Max(value) end

---Gets the value of field 'FactionTemplateID'.
---@return integer value
function row:GetFactionTemplateID() end

---Sets the value of field 'FactionTemplateID'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficulty self
function row:SetFactionTemplateID(value) end

---Navigates foreign relationship to 'FactionTemplate' via 'FactionTemplateID'.
---@return dbc.row.v1215.FactionTemplate|nil
function row:GetFactionTemplate() end

---Creates a related 'FactionTemplate' row and automatically links 'FactionTemplateID'.
---@param data? table
---@return dbc.row.v1215.FactionTemplate
function row:CreateRelated(data) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficulty self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.CreatureDifficulty self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Gets the value of field 'CreatureID'.
---@return integer value
function row:GetCreatureID() end

---Sets the value of field 'CreatureID'.
---@param value integer
---@return dbc.row.v1215.CreatureDifficulty self
function row:SetCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'CreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetCreature() end

---Creates a related 'Creature' row and automatically links 'CreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Table container for CreatureDifficulty (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDifficulty : DbcTable
---@field [integer] dbc.row.v1215.CreatureDifficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDifficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDifficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDifficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDifficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDifficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
