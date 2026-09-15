---@meta
-- Generated LuaLS annotations for ExtraAbilityInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ExtraAbilityInfo in build 12.1.5.69594.
---@class dbc.row.v1215.ExtraAbilityInfo : RowProxy
---@field ID integer
---@field TutorialText_lang string
---@field SpellID integer
---@field ActionBarOverrideSpellID integer
---@field LabelID integer
---@field UiTextureKitID integer
---@field UiPriority integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ExtraAbilityInfo self
function row:SetID(value) end

---Gets the value of field 'TutorialText_lang'.
---@return string value
function row:GetTutorialText_lang() end

---Sets the value of field 'TutorialText_lang'.
---@param value string
---@return dbc.row.v1215.ExtraAbilityInfo self
function row:SetTutorialText_lang(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ExtraAbilityInfo self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ActionBarOverrideSpellID'.
---@return integer value
function row:GetActionBarOverrideSpellID() end

---Sets the value of field 'ActionBarOverrideSpellID'.
---@param value integer
---@return dbc.row.v1215.ExtraAbilityInfo self
function row:SetActionBarOverrideSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'ActionBarOverrideSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetActionBarOverrideSpell() end

---Creates a related 'Spell' row and automatically links 'ActionBarOverrideSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'LabelID'.
---@return integer value
function row:GetLabelID() end

---Sets the value of field 'LabelID'.
---@param value integer
---@return dbc.row.v1215.ExtraAbilityInfo self
function row:SetLabelID(value) end

---Navigates foreign relationship to 'Label' via 'LabelID'.
---@return dbc.row.v1215.Label|nil
function row:GetLabel() end

---Creates a related 'Label' row and automatically links 'LabelID'.
---@param data? table
---@return dbc.row.v1215.Label
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.ExtraAbilityInfo self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'UiPriority'.
---@return integer value
function row:GetUiPriority() end

---Sets the value of field 'UiPriority'.
---@param value integer
---@return dbc.row.v1215.ExtraAbilityInfo self
function row:SetUiPriority(value) end

---Table container for ExtraAbilityInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.ExtraAbilityInfo : DbcTable
---@field [integer] dbc.row.v1215.ExtraAbilityInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ExtraAbilityInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ExtraAbilityInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ExtraAbilityInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ExtraAbilityInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ExtraAbilityInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
