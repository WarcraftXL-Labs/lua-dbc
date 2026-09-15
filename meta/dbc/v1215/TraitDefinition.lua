---@meta
-- Generated LuaLS annotations for TraitDefinition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitDefinition in build 12.1.5.69594.
---@class dbc.row.v1215.TraitDefinition : RowProxy
---@field OverrideName_lang string
---@field OverrideSubtext_lang string
---@field OverrideDescription_lang string
---@field ID integer
---@field SpellID integer
---@field OverrideIcon integer
---@field OverridesSpellID integer
---@field VisibleSpellID integer if set this is displayed in tooltips and all lua functions returning info about trait definition

local row = {}

---Gets the value of field 'OverrideName_lang'.
---@return string value
function row:GetOverrideName_lang() end

---Sets the value of field 'OverrideName_lang'.
---@param value string
---@return dbc.row.v1215.TraitDefinition self
function row:SetOverrideName_lang(value) end

---Gets the value of field 'OverrideSubtext_lang'.
---@return string value
function row:GetOverrideSubtext_lang() end

---Sets the value of field 'OverrideSubtext_lang'.
---@param value string
---@return dbc.row.v1215.TraitDefinition self
function row:SetOverrideSubtext_lang(value) end

---Gets the value of field 'OverrideDescription_lang'.
---@return string value
function row:GetOverrideDescription_lang() end

---Sets the value of field 'OverrideDescription_lang'.
---@param value string
---@return dbc.row.v1215.TraitDefinition self
function row:SetOverrideDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitDefinition self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.TraitDefinition self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OverrideIcon'.
---@return integer value
function row:GetOverrideIcon() end

---Sets the value of field 'OverrideIcon'.
---@param value integer
---@return dbc.row.v1215.TraitDefinition self
function row:SetOverrideIcon(value) end

---Navigates foreign relationship to 'FileData' via 'OverrideIcon'.
---@return dbc.row.v1215.FileData|nil
function row:GetOverrideIcon() end

---Creates a related 'FileData' row and automatically links 'OverrideIcon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'OverridesSpellID'.
---@return integer value
function row:GetOverridesSpellID() end

---Sets the value of field 'OverridesSpellID'.
---@param value integer
---@return dbc.row.v1215.TraitDefinition self
function row:SetOverridesSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'OverridesSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetOverridesSpell() end

---Creates a related 'Spell' row and automatically links 'OverridesSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'VisibleSpellID'.
---@return integer value
function row:GetVisibleSpellID() end

---Sets the value of field 'VisibleSpellID'.
---@param value integer
---@return dbc.row.v1215.TraitDefinition self
function row:SetVisibleSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'VisibleSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetVisibleSpell() end

---Creates a related 'Spell' row and automatically links 'VisibleSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for TraitDefinition (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitDefinition : DbcTable
---@field [integer] dbc.row.v1215.TraitDefinition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitDefinition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitDefinition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitDefinition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitDefinition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitDefinition[]
function tbl:GetByRelation(foreign_id) end

return {}
