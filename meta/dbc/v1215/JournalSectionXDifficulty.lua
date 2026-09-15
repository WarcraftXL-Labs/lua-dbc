---@meta
-- Generated LuaLS annotations for JournalSectionXDifficulty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalSectionXDifficulty in build 12.1.5.69594.
---@class dbc.row.v1215.JournalSectionXDifficulty : RowProxy
---@field ID integer
---@field DifficultyID integer
---@field JournalEncounterSectionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalSectionXDifficulty self
function row:SetID(value) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.JournalSectionXDifficulty self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'JournalEncounterSectionID'.
---@return integer value
function row:GetJournalEncounterSectionID() end

---Sets the value of field 'JournalEncounterSectionID'.
---@param value integer
---@return dbc.row.v1215.JournalSectionXDifficulty self
function row:SetJournalEncounterSectionID(value) end

---Navigates foreign relationship to 'JournalEncounterSection' via 'JournalEncounterSectionID'.
---@return dbc.row.v1215.JournalEncounterSection|nil
function row:GetJournalEncounterSection() end

---Creates a related 'JournalEncounterSection' row and automatically links 'JournalEncounterSectionID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounterSection
function row:CreateRelated(data) end

---Table container for JournalSectionXDifficulty (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalSectionXDifficulty : DbcTable
---@field [integer] dbc.row.v1215.JournalSectionXDifficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalSectionXDifficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalSectionXDifficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalSectionXDifficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalSectionXDifficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalSectionXDifficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
