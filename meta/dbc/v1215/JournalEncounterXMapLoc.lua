---@meta
-- Generated LuaLS annotations for JournalEncounterXMapLoc (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalEncounterXMapLoc in build 12.1.5.69594.
---@class dbc.row.v1215.JournalEncounterXMapLoc : RowProxy
---@field ID integer
---@field Map number[]
---@field JournalEncounterID integer
---@field MapDisplayConditionID integer
---@field Flags integer
---@field UiMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterXMapLoc self
function row:SetID(value) end

---Gets the value of field 'Map'.
---@return number[] value
function row:GetMap() end

---Sets the value of field 'Map'.
---@param value number[]
---@return dbc.row.v1215.JournalEncounterXMapLoc self
function row:SetMap(value) end

---Gets element at 1-based index in 'Map'.
---@param index integer
---@return number value
function row:GetMapItem(index) end

---Gets the value of field 'JournalEncounterID'.
---@return integer value
function row:GetJournalEncounterID() end

---Sets the value of field 'JournalEncounterID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterXMapLoc self
function row:SetJournalEncounterID(value) end

---Navigates foreign relationship to 'JournalEncounter' via 'JournalEncounterID'.
---@return dbc.row.v1215.JournalEncounter|nil
function row:GetJournalEncounter() end

---Creates a related 'JournalEncounter' row and automatically links 'JournalEncounterID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounter
function row:CreateRelated(data) end

---Gets the value of field 'MapDisplayConditionID'.
---@return integer value
function row:GetMapDisplayConditionID() end

---Sets the value of field 'MapDisplayConditionID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterXMapLoc self
function row:SetMapDisplayConditionID(value) end

---Navigates foreign relationship to 'MapDisplayCondition' via 'MapDisplayConditionID'.
---@return dbc.row.v1215.MapDisplayCondition|nil
function row:GetMapDisplayCondition() end

---Creates a related 'MapDisplayCondition' row and automatically links 'MapDisplayConditionID'.
---@param data? table
---@return dbc.row.v1215.MapDisplayCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterXMapLoc self
function row:SetFlags(value) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterXMapLoc self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Table container for JournalEncounterXMapLoc (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalEncounterXMapLoc : DbcTable
---@field [integer] dbc.row.v1215.JournalEncounterXMapLoc
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalEncounterXMapLoc
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterXMapLoc|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterXMapLoc
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalEncounterXMapLoc>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalEncounterXMapLoc[]
function tbl:GetByRelation(foreign_id) end

return {}
