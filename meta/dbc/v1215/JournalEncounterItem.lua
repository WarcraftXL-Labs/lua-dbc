---@meta
-- Generated LuaLS annotations for JournalEncounterItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalEncounterItem in build 12.1.5.69594.
---@class dbc.row.v1215.JournalEncounterItem : RowProxy
---@field ID integer
---@field JournalEncounterID integer
---@field ItemID integer
---@field FactionMask integer
---@field Flags integer
---@field DifficultyMask integer
---@field DisplaySeasonID integer
---@field WorldStateExpressionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetID(value) end

---Gets the value of field 'JournalEncounterID'.
---@return integer value
function row:GetJournalEncounterID() end

---Sets the value of field 'JournalEncounterID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetJournalEncounterID(value) end

---Navigates foreign relationship to 'JournalEncounter' via 'JournalEncounterID'.
---@return dbc.row.v1215.JournalEncounter|nil
function row:GetJournalEncounter() end

---Creates a related 'JournalEncounter' row and automatically links 'JournalEncounterID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounter
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'FactionMask'.
---@return integer value
function row:GetFactionMask() end

---Sets the value of field 'FactionMask'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetFactionMask(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetFlags(value) end

---Gets the value of field 'DifficultyMask'.
---@return integer value
function row:GetDifficultyMask() end

---Sets the value of field 'DifficultyMask'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetDifficultyMask(value) end

---Gets the value of field 'DisplaySeasonID'.
---@return integer value
function row:GetDisplaySeasonID() end

---Sets the value of field 'DisplaySeasonID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetDisplaySeasonID(value) end

---Navigates foreign relationship to 'DisplaySeason' via 'DisplaySeasonID'.
---@return dbc.row.v1215.DisplaySeason|nil
function row:GetDisplaySeason() end

---Creates a related 'DisplaySeason' row and automatically links 'DisplaySeasonID'.
---@param data? table
---@return dbc.row.v1215.DisplaySeason
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateExpressionID'.
---@return integer value
function row:GetWorldStateExpressionID() end

---Sets the value of field 'WorldStateExpressionID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterItem self
function row:SetWorldStateExpressionID(value) end

---Navigates foreign relationship to 'WorldStateExpression' via 'WorldStateExpressionID'.
---@return dbc.row.v1215.WorldStateExpression|nil
function row:GetWorldStateExpression() end

---Creates a related 'WorldStateExpression' row and automatically links 'WorldStateExpressionID'.
---@param data? table
---@return dbc.row.v1215.WorldStateExpression
function row:CreateRelated(data) end

---Table container for JournalEncounterItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalEncounterItem : DbcTable
---@field [integer] dbc.row.v1215.JournalEncounterItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalEncounterItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalEncounterItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalEncounterItem[]
function tbl:GetByRelation(foreign_id) end

return {}
