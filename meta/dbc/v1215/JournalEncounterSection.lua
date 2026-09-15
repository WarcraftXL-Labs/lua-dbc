---@meta
-- Generated LuaLS annotations for JournalEncounterSection (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of JournalEncounterSection in build 12.1.5.69594.
---@class dbc.row.v1215.JournalEncounterSection : RowProxy
---@field ID integer
---@field Title_lang string
---@field BodyText_lang string
---@field JournalEncounterID integer
---@field OrderIndex integer
---@field ParentSectionID integer
---@field FirstChildSectionID integer
---@field NextSiblingSectionID integer
---@field Type integer
---@field IconCreatureDisplayInfoID integer
---@field UiModelSceneID integer
---@field SpellID integer
---@field IconFileDataID integer
---@field Flags integer
---@field IconFlags integer
---@field DifficultyMask integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetID(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetTitle_lang(value) end

---Gets the value of field 'BodyText_lang'.
---@return string value
function row:GetBodyText_lang() end

---Sets the value of field 'BodyText_lang'.
---@param value string
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetBodyText_lang(value) end

---Gets the value of field 'JournalEncounterID'.
---@return integer value
function row:GetJournalEncounterID() end

---Sets the value of field 'JournalEncounterID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetJournalEncounterID(value) end

---Navigates foreign relationship to 'JournalEncounter' via 'JournalEncounterID'.
---@return dbc.row.v1215.JournalEncounter|nil
function row:GetJournalEncounter() end

---Creates a related 'JournalEncounter' row and automatically links 'JournalEncounterID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounter
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetOrderIndex(value) end

---Gets the value of field 'ParentSectionID'.
---@return integer value
function row:GetParentSectionID() end

---Sets the value of field 'ParentSectionID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetParentSectionID(value) end

---Navigates foreign relationship to 'JournalEncounterSection' via 'ParentSectionID'.
---@return dbc.row.v1215.JournalEncounterSection|nil
function row:GetParentSection() end

---Creates a related 'JournalEncounterSection' row and automatically links 'ParentSectionID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounterSection
function row:CreateRelated(data) end

---Gets the value of field 'FirstChildSectionID'.
---@return integer value
function row:GetFirstChildSectionID() end

---Sets the value of field 'FirstChildSectionID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetFirstChildSectionID(value) end

---Navigates foreign relationship to 'JournalEncounterSection' via 'FirstChildSectionID'.
---@return dbc.row.v1215.JournalEncounterSection|nil
function row:GetFirstChildSection() end

---Creates a related 'JournalEncounterSection' row and automatically links 'FirstChildSectionID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounterSection
function row:CreateRelated(data) end

---Gets the value of field 'NextSiblingSectionID'.
---@return integer value
function row:GetNextSiblingSectionID() end

---Sets the value of field 'NextSiblingSectionID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetNextSiblingSectionID(value) end

---Navigates foreign relationship to 'JournalEncounterSection' via 'NextSiblingSectionID'.
---@return dbc.row.v1215.JournalEncounterSection|nil
function row:GetNextSiblingSection() end

---Creates a related 'JournalEncounterSection' row and automatically links 'NextSiblingSectionID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounterSection
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetType(value) end

---Gets the value of field 'IconCreatureDisplayInfoID'.
---@return integer value
function row:GetIconCreatureDisplayInfoID() end

---Sets the value of field 'IconCreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetIconCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'IconCreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetIconCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'IconCreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetFlags(value) end

---Gets the value of field 'IconFlags'.
---@return integer value
function row:GetIconFlags() end

---Sets the value of field 'IconFlags'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetIconFlags(value) end

---Gets the value of field 'DifficultyMask'.
---@return integer value
function row:GetDifficultyMask() end

---Sets the value of field 'DifficultyMask'.
---@param value integer
---@return dbc.row.v1215.JournalEncounterSection self
function row:SetDifficultyMask(value) end

---Table container for JournalEncounterSection (Build 12.1.5.69594).
---@class dbc.Table.v1215.JournalEncounterSection : DbcTable
---@field [integer] dbc.row.v1215.JournalEncounterSection
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.JournalEncounterSection
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterSection|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.JournalEncounterSection
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.JournalEncounterSection>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.JournalEncounterSection[]
function tbl:GetByRelation(foreign_id) end

return {}
