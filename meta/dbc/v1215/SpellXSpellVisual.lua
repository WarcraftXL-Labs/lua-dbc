---@meta
-- Generated LuaLS annotations for SpellXSpellVisual (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellXSpellVisual in build 12.1.5.69594.
---@class dbc.row.v1215.SpellXSpellVisual : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field SpellVisualID integer
---@field Probability number
---@field Flags2 integer
---@field Priority integer
---@field SpellIconFileID integer
---@field ActiveIconFileID integer
---@field ViewerUnitConditionID integer
---@field ViewerPlayerConditionID integer
---@field CasterUnitConditionID integer
---@field CasterPlayerConditionID integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualID'.
---@return integer value
function row:GetSpellVisualID() end

---Sets the value of field 'SpellVisualID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'SpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'SpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'Probability'.
---@return number value
function row:GetProbability() end

---Sets the value of field 'Probability'.
---@param value number
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetProbability(value) end

---Gets the value of field 'Flags2'.
---@return integer value
function row:GetFlags2() end

---Sets the value of field 'Flags2'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetFlags2(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetPriority(value) end

---Gets the value of field 'SpellIconFileID'.
---@return integer value
function row:GetSpellIconFileID() end

---Sets the value of field 'SpellIconFileID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetSpellIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'SpellIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSpellIconFile() end

---Creates a related 'FileData' row and automatically links 'SpellIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ActiveIconFileID'.
---@return integer value
function row:GetActiveIconFileID() end

---Sets the value of field 'ActiveIconFileID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetActiveIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'ActiveIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetActiveIconFile() end

---Creates a related 'FileData' row and automatically links 'ActiveIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ViewerUnitConditionID'.
---@return integer value
function row:GetViewerUnitConditionID() end

---Sets the value of field 'ViewerUnitConditionID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetViewerUnitConditionID(value) end

---Navigates foreign relationship to 'UnitCondition' via 'ViewerUnitConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetViewerUnitCondition() end

---Creates a related 'UnitCondition' row and automatically links 'ViewerUnitConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Gets the value of field 'ViewerPlayerConditionID'.
---@return integer value
function row:GetViewerPlayerConditionID() end

---Sets the value of field 'ViewerPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetViewerPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ViewerPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetViewerPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ViewerPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'CasterUnitConditionID'.
---@return integer value
function row:GetCasterUnitConditionID() end

---Sets the value of field 'CasterUnitConditionID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetCasterUnitConditionID(value) end

---Navigates foreign relationship to 'UnitCondition' via 'CasterUnitConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetCasterUnitCondition() end

---Creates a related 'UnitCondition' row and automatically links 'CasterUnitConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Gets the value of field 'CasterPlayerConditionID'.
---@return integer value
function row:GetCasterPlayerConditionID() end

---Sets the value of field 'CasterPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetCasterPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'CasterPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCasterPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'CasterPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellXSpellVisual self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellXSpellVisual (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellXSpellVisual : DbcTable
---@field [integer] dbc.row.v1215.SpellXSpellVisual
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellXSpellVisual
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellXSpellVisual|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellXSpellVisual
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellXSpellVisual>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellXSpellVisual[]
function tbl:GetByRelation(foreign_id) end

return {}
