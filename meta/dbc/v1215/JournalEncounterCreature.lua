---@meta
-- Generated LuaLS annotations for JournalEncounterCreature (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalEncounterCreature in build 12.1.5.69594.
---@class dbc.row.v1215.JournalEncounterCreature : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field JournalEncounterID integer
---@field CreatureDisplayInfoID integer
---@field FileDataID integer
---@field OrderIndex integer
---@field UiModelSceneID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetID(value) end

---Gets the value of field 'JournalEncounterID'.
---@return integer value
function row:GetJournalEncounterID() end

---Sets the value of field 'JournalEncounterID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetJournalEncounterID(value) end

---Navigates foreign relationship to 'JournalEncounter' via 'JournalEncounterID'.
---@return dbc.row.v1215.JournalEncounter|nil
function row:GetJournalEncounter() end

---Creates a related 'JournalEncounter' row and automatically links 'JournalEncounterID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounter
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetOrderIndex(value) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterCreature self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Table container for JournalEncounterCreature (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalEncounterCreature : DbcTable
---@field [integer] dbc.row.v1215.JournalEncounterCreature
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalEncounterCreature
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterCreature|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterCreature
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalEncounterCreature>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalEncounterCreature[]
function tbl:GetByRelation(foreign_id) end

return {}
