---@meta
-- Generated LuaLS annotations for SkillLine (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SkillLine in build 12.1.5.69594.
---@class dbc.row.v1215.SkillLine : RowProxy
---@field DisplayName_lang string
---@field AlternateVerb_lang string
---@field Description_lang string
---@field HordeDisplayName_lang string
---@field NeutralDisplayName string
---@field ID integer
---@field CategoryID integer
---@field SpellIconFileID integer
---@field CanLink integer
---@field ParentSkillLineID integer
---@field ParentTierIndex integer
---@field Flags integer
---@field SpellBookSpellID integer
---@field ExpansionNameSharedStringID integer
---@field HordeExpansionNameSharedStringID integer

local row = {}

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v1215.SkillLine self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'AlternateVerb_lang'.
---@return string value
function row:GetAlternateVerb_lang() end

---Sets the value of field 'AlternateVerb_lang'.
---@param value string
---@return dbc.row.v1215.SkillLine self
function row:SetAlternateVerb_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.SkillLine self
function row:SetDescription_lang(value) end

---Gets the value of field 'HordeDisplayName_lang'.
---@return string value
function row:GetHordeDisplayName_lang() end

---Sets the value of field 'HordeDisplayName_lang'.
---@param value string
---@return dbc.row.v1215.SkillLine self
function row:SetHordeDisplayName_lang(value) end

---Gets the value of field 'NeutralDisplayName'.
---@return string value
function row:GetNeutralDisplayName() end

---Sets the value of field 'NeutralDisplayName'.
---@param value string
---@return dbc.row.v1215.SkillLine self
function row:SetNeutralDisplayName(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetID(value) end

---Gets the value of field 'CategoryID'.
---@return integer value
function row:GetCategoryID() end

---Sets the value of field 'CategoryID'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetCategoryID(value) end

---Navigates foreign relationship to 'SkillLineCategory' via 'CategoryID'.
---@return dbc.row.v1215.SkillLineCategory|nil
function row:GetCategory() end

---Creates a related 'SkillLineCategory' row and automatically links 'CategoryID'.
---@param data? table
---@return dbc.row.v1215.SkillLineCategory
function row:CreateRelated(data) end

---Gets the value of field 'SpellIconFileID'.
---@return integer value
function row:GetSpellIconFileID() end

---Sets the value of field 'SpellIconFileID'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetSpellIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'SpellIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSpellIconFile() end

---Creates a related 'FileData' row and automatically links 'SpellIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'CanLink'.
---@return integer value
function row:GetCanLink() end

---Sets the value of field 'CanLink'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetCanLink(value) end

---Gets the value of field 'ParentSkillLineID'.
---@return integer value
function row:GetParentSkillLineID() end

---Sets the value of field 'ParentSkillLineID'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetParentSkillLineID(value) end

---Navigates foreign relationship to 'SkillLine' via 'ParentSkillLineID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetParentSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'ParentSkillLineID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'ParentTierIndex'.
---@return integer value
function row:GetParentTierIndex() end

---Sets the value of field 'ParentTierIndex'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetParentTierIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetFlags(value) end

---Gets the value of field 'SpellBookSpellID'.
---@return integer value
function row:GetSpellBookSpellID() end

---Sets the value of field 'SpellBookSpellID'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetSpellBookSpellID(value) end

---Navigates foreign relationship to 'SpellBookSpell' via 'SpellBookSpellID'.
---@return dbc.row.v1215.SpellBookSpell|nil
function row:GetSpellBookSpell() end

---Creates a related 'SpellBookSpell' row and automatically links 'SpellBookSpellID'.
---@param data? table
---@return dbc.row.v1215.SpellBookSpell
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionNameSharedStringID'.
---@return integer value
function row:GetExpansionNameSharedStringID() end

---Sets the value of field 'ExpansionNameSharedStringID'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetExpansionNameSharedStringID(value) end

---Navigates foreign relationship to 'SharedString' via 'ExpansionNameSharedStringID'.
---@return dbc.row.v1215.SharedString|nil
function row:GetExpansionNameSharedString() end

---Creates a related 'SharedString' row and automatically links 'ExpansionNameSharedStringID'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'HordeExpansionNameSharedStringID'.
---@return integer value
function row:GetHordeExpansionNameSharedStringID() end

---Sets the value of field 'HordeExpansionNameSharedStringID'.
---@param value integer
---@return dbc.row.v1215.SkillLine self
function row:SetHordeExpansionNameSharedStringID(value) end

---Navigates foreign relationship to 'SharedString' via 'HordeExpansionNameSharedStringID'.
---@return dbc.row.v1215.SharedString|nil
function row:GetHordeExpansionNameSharedString() end

---Creates a related 'SharedString' row and automatically links 'HordeExpansionNameSharedStringID'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Table container for SkillLine (Build 12.1.5.69594).
---@class dbc.Table.v1215.SkillLine : DbcTable
---@field [integer] dbc.row.v1215.SkillLine
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SkillLine
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SkillLine|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SkillLine
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SkillLine>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SkillLine[]
function tbl:GetByRelation(foreign_id) end

return {}
