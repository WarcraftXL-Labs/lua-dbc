---@meta
-- Generated LuaLS annotations for Talent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Talent in build 12.1.5.69594.
---@class dbc.row.v1215.Talent : RowProxy
---@field ID integer
---@field Description_lang string
---@field TierID integer
---@field Flags integer
---@field ColumnIndex integer
---@field TabID integer
---@field ClassID integer
---@field SpecID integer
---@field SpellID integer
---@field OverridesSpellID integer
---@field RequiredSpellID integer
---@field CategoryMask integer[]
---@field SpellRank integer[]
---@field PrereqTalent integer[]
---@field PrereqRank integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.Talent self
function row:SetDescription_lang(value) end

---Gets the value of field 'TierID'.
---@return integer value
function row:GetTierID() end

---Sets the value of field 'TierID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetTierID(value) end

---Navigates foreign relationship to 'Tier' via 'TierID'.
---@return dbc.row.v1215.Tier|nil
function row:GetTier() end

---Creates a related 'Tier' row and automatically links 'TierID'.
---@param data? table
---@return dbc.row.v1215.Tier
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetFlags(value) end

---Gets the value of field 'ColumnIndex'.
---@return integer value
function row:GetColumnIndex() end

---Sets the value of field 'ColumnIndex'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetColumnIndex(value) end

---Gets the value of field 'TabID'.
---@return integer value
function row:GetTabID() end

---Sets the value of field 'TabID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetTabID(value) end

---Navigates foreign relationship to 'TalentTab' via 'TabID'.
---@return dbc.row.v1215.TalentTab|nil
function row:GetTab() end

---Creates a related 'TalentTab' row and automatically links 'TabID'.
---@param data? table
---@return dbc.row.v1215.TalentTab
function row:CreateRelated(data) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'SpecID'.
---@return integer value
function row:GetSpecID() end

---Sets the value of field 'SpecID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetSpecID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'SpecID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetSpec() end

---Creates a related 'ChrSpecialization' row and automatically links 'SpecID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OverridesSpellID'.
---@return integer value
function row:GetOverridesSpellID() end

---Sets the value of field 'OverridesSpellID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetOverridesSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'OverridesSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetOverridesSpell() end

---Creates a related 'Spell' row and automatically links 'OverridesSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSpellID'.
---@return integer value
function row:GetRequiredSpellID() end

---Sets the value of field 'RequiredSpellID'.
---@param value integer
---@return dbc.row.v1215.Talent self
function row:SetRequiredSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'RequiredSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetRequiredSpell() end

---Creates a related 'Spell' row and automatically links 'RequiredSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'CategoryMask'.
---@return integer[] value
function row:GetCategoryMask() end

---Sets the value of field 'CategoryMask'.
---@param value integer[]
---@return dbc.row.v1215.Talent self
function row:SetCategoryMask(value) end

---Gets element at 1-based index in 'CategoryMask'.
---@param index integer
---@return integer value
function row:GetCategoryMaskItem(index) end

---Gets the value of field 'SpellRank'.
---@return integer[] value
function row:GetSpellRank() end

---Sets the value of field 'SpellRank'.
---@param value integer[]
---@return dbc.row.v1215.Talent self
function row:SetSpellRank(value) end

---Gets element at 1-based index in 'SpellRank'.
---@param index integer
---@return integer value
function row:GetSpellRankItem(index) end

---Navigates foreign relationship to 'Spell' via 'SpellRank'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpellRank() end

---Creates a related 'Spell' row and automatically links 'SpellRank'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'PrereqTalent'.
---@return integer[] value
function row:GetPrereqTalent() end

---Sets the value of field 'PrereqTalent'.
---@param value integer[]
---@return dbc.row.v1215.Talent self
function row:SetPrereqTalent(value) end

---Gets element at 1-based index in 'PrereqTalent'.
---@param index integer
---@return integer value
function row:GetPrereqTalentItem(index) end

---Navigates foreign relationship to 'Talent' via 'PrereqTalent'.
---@return dbc.row.v1215.Talent|nil
function row:GetPrereqTalent() end

---Creates a related 'Talent' row and automatically links 'PrereqTalent'.
---@param data? table
---@return dbc.row.v1215.Talent
function row:CreateRelated(data) end

---Gets the value of field 'PrereqRank'.
---@return integer[] value
function row:GetPrereqRank() end

---Sets the value of field 'PrereqRank'.
---@param value integer[]
---@return dbc.row.v1215.Talent self
function row:SetPrereqRank(value) end

---Gets element at 1-based index in 'PrereqRank'.
---@param index integer
---@return integer value
function row:GetPrereqRankItem(index) end

---Table container for Talent (Build 12.1.5.69594).
---@class dbc.Table.v1215.Talent : DbcTable
---@field [integer] dbc.row.v1215.Talent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Talent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Talent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Talent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Talent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Talent[]
function tbl:GetByRelation(foreign_id) end

return {}
