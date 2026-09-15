---@meta
-- Generated LuaLS annotations for JournalEncounter (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalEncounter in build 12.1.5.69594.
---@class dbc.row.v1215.JournalEncounter : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field Map number[]
---@field ID integer
---@field JournalInstanceID integer
---@field DungeonEncounterID integer
---@field OrderIndex integer
---@field FirstSectionID integer
---@field UiMapID integer
---@field MapDisplayConditionID integer
---@field Flags integer
---@field DifficultyMask integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.JournalEncounter self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.JournalEncounter self
function row:SetDescription_lang(value) end

---Gets the value of field 'Map'.
---@return number[] value
function row:GetMap() end

---Sets the value of field 'Map'.
---@param value number[]
---@return dbc.row.v1215.JournalEncounter self
function row:SetMap(value) end

---Gets element at 1-based index in 'Map'.
---@param index integer
---@return number value
function row:GetMapItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
function row:SetID(value) end

---Gets the value of field 'JournalInstanceID'.
---@return integer value
function row:GetJournalInstanceID() end

---Sets the value of field 'JournalInstanceID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
function row:SetJournalInstanceID(value) end

---Navigates foreign relationship to 'JournalInstance' via 'JournalInstanceID'.
---@return dbc.row.v1215.JournalInstance|nil
function row:GetJournalInstance() end

---Creates a related 'JournalInstance' row and automatically links 'JournalInstanceID'.
---@param data? table
---@return dbc.row.v1215.JournalInstance
function row:CreateRelated(data) end

---Gets the value of field 'DungeonEncounterID'.
---@return integer value
function row:GetDungeonEncounterID() end

---Sets the value of field 'DungeonEncounterID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
function row:SetDungeonEncounterID(value) end

---Navigates foreign relationship to 'DungeonEncounter' via 'DungeonEncounterID'.
---@return dbc.row.v1215.DungeonEncounter|nil
function row:GetDungeonEncounter() end

---Creates a related 'DungeonEncounter' row and automatically links 'DungeonEncounterID'.
---@param data? table
---@return dbc.row.v1215.DungeonEncounter
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
function row:SetOrderIndex(value) end

---Gets the value of field 'FirstSectionID'.
---@return integer value
function row:GetFirstSectionID() end

---Sets the value of field 'FirstSectionID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
function row:SetFirstSectionID(value) end

---Navigates foreign relationship to 'FirstSection' via 'FirstSectionID'.
---@return dbc.row.v1215.FirstSection|nil
function row:GetFirstSection() end

---Creates a related 'FirstSection' row and automatically links 'FirstSectionID'.
---@param data? table
---@return dbc.row.v1215.FirstSection
function row:CreateRelated(data) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'MapDisplayConditionID'.
---@return integer value
function row:GetMapDisplayConditionID() end

---Sets the value of field 'MapDisplayConditionID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
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
---@return dbc.row.v1215.JournalEncounter self
function row:SetFlags(value) end

---Gets the value of field 'DifficultyMask'.
---@return integer value
function row:GetDifficultyMask() end

---Sets the value of field 'DifficultyMask'.
---@param value integer
---@return dbc.row.v1215.JournalEncounter self
function row:SetDifficultyMask(value) end

---Table container for JournalEncounter (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalEncounter : DbcTable
---@field [integer] dbc.row.v1215.JournalEncounter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalEncounter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalEncounter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalEncounter[]
function tbl:GetByRelation(foreign_id) end

return {}
