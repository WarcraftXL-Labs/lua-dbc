---@meta
-- Generated LuaLS annotations for SpellActivationOverlay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellActivationOverlay in build 12.1.5.69594.
---@class dbc.row.v1215.SpellActivationOverlay : RowProxy
---@field ID integer
---@field IconHighlightSpellClassMask integer[]
---@field SpellID integer
---@field OverlayFileDataID integer
---@field ScreenLocationID integer
---@field SoundEntriesID integer
---@field Color integer
---@field Field_9_1_5_39977_006 integer
---@field Scale number
---@field TriggerType integer
---@field TriggerSpell integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetID(value) end

---Gets the value of field 'IconHighlightSpellClassMask'.
---@return integer[] value
function row:GetIconHighlightSpellClassMask() end

---Sets the value of field 'IconHighlightSpellClassMask'.
---@param value integer[]
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetIconHighlightSpellClassMask(value) end

---Gets element at 1-based index in 'IconHighlightSpellClassMask'.
---@param index integer
---@return integer value
function row:GetIconHighlightSpellClassMaskItem(index) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OverlayFileDataID'.
---@return integer value
function row:GetOverlayFileDataID() end

---Sets the value of field 'OverlayFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetOverlayFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'OverlayFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetOverlayFileData() end

---Creates a related 'FileData' row and automatically links 'OverlayFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ScreenLocationID'.
---@return integer value
function row:GetScreenLocationID() end

---Sets the value of field 'ScreenLocationID'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetScreenLocationID(value) end

---Navigates foreign relationship to 'ScreenLocation' via 'ScreenLocationID'.
---@return dbc.row.v1215.ScreenLocation|nil
function row:GetScreenLocation() end

---Creates a related 'ScreenLocation' row and automatically links 'ScreenLocationID'.
---@param data? table
---@return dbc.row.v1215.ScreenLocation
function row:CreateRelated(data) end

---Gets the value of field 'SoundEntriesID'.
---@return integer value
function row:GetSoundEntriesID() end

---Sets the value of field 'SoundEntriesID'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetSoundEntriesID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundEntriesID'.
---@return dbc.row.v1215.SoundEntries|nil
function row:GetSoundEntries() end

---Creates a related 'SoundEntries' row and automatically links 'SoundEntriesID'.
---@param data? table
---@return dbc.row.v1215.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'Color'.
---@return integer value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetColor(value) end

---Gets the value of field 'Field_9_1_5_39977_006'.
---@return integer value
function row:GetField_9_1_5_39977_006() end

---Sets the value of field 'Field_9_1_5_39977_006'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetField_9_1_5_39977_006(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetScale(value) end

---Gets the value of field 'TriggerType'.
---@return integer value
function row:GetTriggerType() end

---Sets the value of field 'TriggerType'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetTriggerType(value) end

---Gets the value of field 'TriggerSpell'.
---@return integer value
function row:GetTriggerSpell() end

---Sets the value of field 'TriggerSpell'.
---@param value integer
---@return dbc.row.v1215.SpellActivationOverlay self
function row:SetTriggerSpell(value) end

---Navigates foreign relationship to 'Spell' via 'TriggerSpell'.
---@return dbc.row.v1215.Spell|nil
function row:GetTriggerSpell() end

---Creates a related 'Spell' row and automatically links 'TriggerSpell'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellActivationOverlay (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellActivationOverlay : DbcTable
---@field [integer] dbc.row.v1215.SpellActivationOverlay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellActivationOverlay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellActivationOverlay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellActivationOverlay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellActivationOverlay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellActivationOverlay[]
function tbl:GetByRelation(foreign_id) end

return {}
