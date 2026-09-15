---@meta
-- Generated LuaLS annotations for SpellMisc (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellMisc in build 12.1.5.69594.
---@class dbc.row.v1215.SpellMisc : RowProxy
---@field ID integer
---@field Attributes integer[]
---@field DifficultyID integer
---@field CastingTimeIndex integer
---@field DurationIndex integer
---@field PvPDurationIndex integer
---@field RangeIndex integer
---@field SchoolMask integer
---@field Speed number
---@field LaunchDelay number
---@field MinDuration number
---@field SpellIconFileDataID integer
---@field ActiveIconFileDataID integer
---@field ContentTuningID integer
---@field ShowFutureSpellPlayerConditionID integer
---@field SpellVisualScript integer for some reason shipped but if != 0, client errors.
---@field ActiveSpellVisualScript integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetID(value) end

---Gets the value of field 'Attributes'.
---@return integer[] value
function row:GetAttributes() end

---Sets the value of field 'Attributes'.
---@param value integer[]
---@return dbc.row.v1215.SpellMisc self
function row:SetAttributes(value) end

---Gets element at 1-based index in 'Attributes'.
---@param index integer
---@return integer value
function row:GetAttributesItem(index) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'CastingTimeIndex'.
---@return integer value
function row:GetCastingTimeIndex() end

---Sets the value of field 'CastingTimeIndex'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetCastingTimeIndex(value) end

---Navigates foreign relationship to 'SpellCastTimes' via 'CastingTimeIndex'.
---@return dbc.row.v1215.SpellCastTimes|nil
function row:GetCastingTimeIndex() end

---Creates a related 'SpellCastTimes' row and automatically links 'CastingTimeIndex'.
---@param data? table
---@return dbc.row.v1215.SpellCastTimes
function row:CreateRelated(data) end

---Gets the value of field 'DurationIndex'.
---@return integer value
function row:GetDurationIndex() end

---Sets the value of field 'DurationIndex'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetDurationIndex(value) end

---Navigates foreign relationship to 'SpellDuration' via 'DurationIndex'.
---@return dbc.row.v1215.SpellDuration|nil
function row:GetDurationIndex() end

---Creates a related 'SpellDuration' row and automatically links 'DurationIndex'.
---@param data? table
---@return dbc.row.v1215.SpellDuration
function row:CreateRelated(data) end

---Gets the value of field 'PvPDurationIndex'.
---@return integer value
function row:GetPvPDurationIndex() end

---Sets the value of field 'PvPDurationIndex'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetPvPDurationIndex(value) end

---Navigates foreign relationship to 'SpellDuration' via 'PvPDurationIndex'.
---@return dbc.row.v1215.SpellDuration|nil
function row:GetPvPDurationIndex() end

---Creates a related 'SpellDuration' row and automatically links 'PvPDurationIndex'.
---@param data? table
---@return dbc.row.v1215.SpellDuration
function row:CreateRelated(data) end

---Gets the value of field 'RangeIndex'.
---@return integer value
function row:GetRangeIndex() end

---Sets the value of field 'RangeIndex'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetRangeIndex(value) end

---Navigates foreign relationship to 'SpellRange' via 'RangeIndex'.
---@return dbc.row.v1215.SpellRange|nil
function row:GetRangeIndex() end

---Creates a related 'SpellRange' row and automatically links 'RangeIndex'.
---@param data? table
---@return dbc.row.v1215.SpellRange
function row:CreateRelated(data) end

---Gets the value of field 'SchoolMask'.
---@return integer value
function row:GetSchoolMask() end

---Sets the value of field 'SchoolMask'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetSchoolMask(value) end

---Gets the value of field 'Speed'.
---@return number value
function row:GetSpeed() end

---Sets the value of field 'Speed'.
---@param value number
---@return dbc.row.v1215.SpellMisc self
function row:SetSpeed(value) end

---Gets the value of field 'LaunchDelay'.
---@return number value
function row:GetLaunchDelay() end

---Sets the value of field 'LaunchDelay'.
---@param value number
---@return dbc.row.v1215.SpellMisc self
function row:SetLaunchDelay(value) end

---Gets the value of field 'MinDuration'.
---@return number value
function row:GetMinDuration() end

---Sets the value of field 'MinDuration'.
---@param value number
---@return dbc.row.v1215.SpellMisc self
function row:SetMinDuration(value) end

---Gets the value of field 'SpellIconFileDataID'.
---@return integer value
function row:GetSpellIconFileDataID() end

---Sets the value of field 'SpellIconFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetSpellIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SpellIconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSpellIconFileData() end

---Creates a related 'FileData' row and automatically links 'SpellIconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ActiveIconFileDataID'.
---@return integer value
function row:GetActiveIconFileDataID() end

---Sets the value of field 'ActiveIconFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetActiveIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ActiveIconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetActiveIconFileData() end

---Creates a related 'FileData' row and automatically links 'ActiveIconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'ShowFutureSpellPlayerConditionID'.
---@return integer value
function row:GetShowFutureSpellPlayerConditionID() end

---Sets the value of field 'ShowFutureSpellPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetShowFutureSpellPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ShowFutureSpellPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetShowFutureSpellPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ShowFutureSpellPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualScript'.
---@return integer value
function row:GetSpellVisualScript() end

---Sets the value of field 'SpellVisualScript'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetSpellVisualScript(value) end

---Gets the value of field 'ActiveSpellVisualScript'.
---@return integer value
function row:GetActiveSpellVisualScript() end

---Sets the value of field 'ActiveSpellVisualScript'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetActiveSpellVisualScript(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellMisc self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellMisc (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellMisc : DbcTable
---@field [integer] dbc.row.v1215.SpellMisc
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellMisc
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellMisc|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellMisc
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellMisc>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellMisc[]
function tbl:GetByRelation(foreign_id) end

return {}
