---@meta
-- Generated LuaLS annotations for EncounterEvent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of EncounterEvent in build 12.1.5.69594.
---@class dbc.row.v1215.EncounterEvent : RowProxy
---@field ID integer
---@field SpellID integer
---@field Field_12_0_0_64741_001 integer
---@field BroadcastTextID integer
---@field Severity integer
---@field Field_12_0_0_64741_004 integer
---@field Flags integer
---@field IconFileDataID integer
---@field DungeonEncounterID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_64741_001'.
---@return integer value
function row:GetField_12_0_0_64741_001() end

---Sets the value of field 'Field_12_0_0_64741_001'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetField_12_0_0_64741_001(value) end

---Gets the value of field 'BroadcastTextID'.
---@return integer value
function row:GetBroadcastTextID() end

---Sets the value of field 'BroadcastTextID'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetBroadcastTextID(value) end

---Navigates foreign relationship to 'BroadcastText' via 'BroadcastTextID'.
---@return dbc.row.v1215.BroadcastText|nil
function row:GetBroadcastText() end

---Creates a related 'BroadcastText' row and automatically links 'BroadcastTextID'.
---@param data? table
---@return dbc.row.v1215.BroadcastText
function row:CreateRelated(data) end

---Gets the value of field 'Severity'.
---@return integer value
function row:GetSeverity() end

---Sets the value of field 'Severity'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetSeverity(value) end

---Gets the value of field 'Field_12_0_0_64741_004'.
---@return integer value
function row:GetField_12_0_0_64741_004() end

---Sets the value of field 'Field_12_0_0_64741_004'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetField_12_0_0_64741_004(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetFlags(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'DungeonEncounterID'.
---@return integer value
function row:GetDungeonEncounterID() end

---Sets the value of field 'DungeonEncounterID'.
---@param value integer
---@return dbc.row.v1215.EncounterEvent self
function row:SetDungeonEncounterID(value) end

---Navigates foreign relationship to 'DungeonEncounter' via 'DungeonEncounterID'.
---@return dbc.row.v1215.DungeonEncounter|nil
function row:GetDungeonEncounter() end

---Creates a related 'DungeonEncounter' row and automatically links 'DungeonEncounterID'.
---@param data? table
---@return dbc.row.v1215.DungeonEncounter
function row:CreateRelated(data) end

---Table container for EncounterEvent (Build 12.1.5.69594).
---@class dbc.Table.v1215.EncounterEvent : DbcTable
---@field [integer] dbc.row.v1215.EncounterEvent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.EncounterEvent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.EncounterEvent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.EncounterEvent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.EncounterEvent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.EncounterEvent[]
function tbl:GetByRelation(foreign_id) end

return {}
