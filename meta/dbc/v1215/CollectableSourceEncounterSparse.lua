---@meta
-- Generated LuaLS annotations for CollectableSourceEncounterSparse (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CollectableSourceEncounterSparse in build 12.1.5.69594.
---@class dbc.row.v1215.CollectableSourceEncounterSparse : RowProxy
---@field ID integer
---@field JournalEncounterID integer
---@field DifficultyID integer
---@field CollectableSourceInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceEncounterSparse self
function row:SetID(value) end

---Gets the value of field 'JournalEncounterID'.
---@return integer value
function row:GetJournalEncounterID() end

---Sets the value of field 'JournalEncounterID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceEncounterSparse self
function row:SetJournalEncounterID(value) end

---Navigates foreign relationship to 'JournalEncounter' via 'JournalEncounterID'.
---@return dbc.row.v1215.JournalEncounter|nil
function row:GetJournalEncounter() end

---Creates a related 'JournalEncounter' row and automatically links 'JournalEncounterID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounter
function row:CreateRelated(data) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceEncounterSparse self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'CollectableSourceInfoID'.
---@return integer value
function row:GetCollectableSourceInfoID() end

---Sets the value of field 'CollectableSourceInfoID'.
---@param value integer
---@return dbc.row.v1215.CollectableSourceEncounterSparse self
function row:SetCollectableSourceInfoID(value) end

---Navigates foreign relationship to 'CollectableSourceInfo' via 'CollectableSourceInfoID'.
---@return dbc.row.v1215.CollectableSourceInfo|nil
function row:GetCollectableSourceInfo() end

---Creates a related 'CollectableSourceInfo' row and automatically links 'CollectableSourceInfoID'.
---@param data? table
---@return dbc.row.v1215.CollectableSourceInfo
function row:CreateRelated(data) end

---Table container for CollectableSourceEncounterSparse (Build 12.1.5.69594).
---@class dbc.Table.v1215.CollectableSourceEncounterSparse : DbcTable
---@field [integer] dbc.row.v1215.CollectableSourceEncounterSparse
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CollectableSourceEncounterSparse
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceEncounterSparse|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CollectableSourceEncounterSparse
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CollectableSourceEncounterSparse>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CollectableSourceEncounterSparse[]
function tbl:GetByRelation(foreign_id) end

return {}
