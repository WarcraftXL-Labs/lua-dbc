---@meta
-- Generated LuaLS annotations for ChrSpecialization (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrSpecialization in build 12.1.5.69594.
---@class dbc.row.v1215.ChrSpecialization : RowProxy
---@field Name_lang string
---@field FemaleName_lang string
---@field Description_lang string
---@field ID integer
---@field ClassID integer
---@field OrderIndex integer
---@field PetTalentType integer
---@field Role integer
---@field Flags integer
---@field SpellIconFileID integer
---@field PrimaryStatPriority integer
---@field AnimReplacements integer
---@field MasterySpellID integer[]

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ChrSpecialization self
function row:SetName_lang(value) end

---Gets the value of field 'FemaleName_lang'.
---@return string value
function row:GetFemaleName_lang() end

---Sets the value of field 'FemaleName_lang'.
---@param value string
---@return dbc.row.v1215.ChrSpecialization self
function row:SetFemaleName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ChrSpecialization self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetID(value) end

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ChrClasses' via 'ClassID'.
---@return dbc.row.v1215.ChrClasses|nil
function row:GetClass() end

---Creates a related 'ChrClasses' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClasses
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetOrderIndex(value) end

---Gets the value of field 'PetTalentType'.
---@return integer value
function row:GetPetTalentType() end

---Sets the value of field 'PetTalentType'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetPetTalentType(value) end

---Gets the value of field 'Role'.
---@return integer value
function row:GetRole() end

---Sets the value of field 'Role'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetRole(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetFlags(value) end

---Gets the value of field 'SpellIconFileID'.
---@return integer value
function row:GetSpellIconFileID() end

---Sets the value of field 'SpellIconFileID'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetSpellIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'SpellIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSpellIconFile() end

---Creates a related 'FileData' row and automatically links 'SpellIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'PrimaryStatPriority'.
---@return integer value
function row:GetPrimaryStatPriority() end

---Sets the value of field 'PrimaryStatPriority'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetPrimaryStatPriority(value) end

---Gets the value of field 'AnimReplacements'.
---@return integer value
function row:GetAnimReplacements() end

---Sets the value of field 'AnimReplacements'.
---@param value integer
---@return dbc.row.v1215.ChrSpecialization self
function row:SetAnimReplacements(value) end

---Navigates foreign relationship to 'AnimReplacementSet' via 'AnimReplacements'.
---@return dbc.row.v1215.AnimReplacementSet|nil
function row:GetAnimReplacements() end

---Creates a related 'AnimReplacementSet' row and automatically links 'AnimReplacements'.
---@param data? table
---@return dbc.row.v1215.AnimReplacementSet
function row:CreateRelated(data) end

---Gets the value of field 'MasterySpellID'.
---@return integer[] value
function row:GetMasterySpellID() end

---Sets the value of field 'MasterySpellID'.
---@param value integer[]
---@return dbc.row.v1215.ChrSpecialization self
function row:SetMasterySpellID(value) end

---Gets element at 1-based index in 'MasterySpellID'.
---@param index integer
---@return integer value
function row:GetMasterySpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'MasterySpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetMasterySpell() end

---Creates a related 'Spell' row and automatically links 'MasterySpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for ChrSpecialization (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrSpecialization : DbcTable
---@field [integer] dbc.row.v1215.ChrSpecialization
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrSpecialization
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrSpecialization|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrSpecialization
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrSpecialization>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrSpecialization[]
function tbl:GetByRelation(foreign_id) end

return {}
