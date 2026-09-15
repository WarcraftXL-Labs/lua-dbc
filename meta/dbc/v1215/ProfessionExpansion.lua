---@meta
-- Generated LuaLS annotations for ProfessionExpansion (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionExpansion in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionExpansion : RowProxy
---@field ID integer
---@field SkillLineID integer
---@field RecraftSpellID integer
---@field ConcentrationCurrencyID integer
---@field ExpansionID integer
---@field SpecResetSpellID integer
---@field SpecResetCurrencyID integer
---@field ProfessionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetID(value) end

---Gets the value of field 'SkillLineID'.
---@return integer value
function row:GetSkillLineID() end

---Sets the value of field 'SkillLineID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetSkillLineID(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillLineID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillLineID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'RecraftSpellID'.
---@return integer value
function row:GetRecraftSpellID() end

---Sets the value of field 'RecraftSpellID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetRecraftSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'RecraftSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetRecraftSpell() end

---Creates a related 'Spell' row and automatically links 'RecraftSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ConcentrationCurrencyID'.
---@return integer value
function row:GetConcentrationCurrencyID() end

---Sets the value of field 'ConcentrationCurrencyID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetConcentrationCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'ConcentrationCurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetConcentrationCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'ConcentrationCurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'SpecResetSpellID'.
---@return integer value
function row:GetSpecResetSpellID() end

---Sets the value of field 'SpecResetSpellID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetSpecResetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpecResetSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpecResetSpell() end

---Creates a related 'Spell' row and automatically links 'SpecResetSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'SpecResetCurrencyID'.
---@return integer value
function row:GetSpecResetCurrencyID() end

---Sets the value of field 'SpecResetCurrencyID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetSpecResetCurrencyID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'SpecResetCurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetSpecResetCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'SpecResetCurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'ProfessionID'.
---@return integer value
function row:GetProfessionID() end

---Sets the value of field 'ProfessionID'.
---@param value integer
---@return dbc.row.v1215.ProfessionExpansion self
function row:SetProfessionID(value) end

---Navigates foreign relationship to 'Profession' via 'ProfessionID'.
---@return dbc.row.v1215.Profession|nil
function row:GetProfession() end

---Creates a related 'Profession' row and automatically links 'ProfessionID'.
---@param data? table
---@return dbc.row.v1215.Profession
function row:CreateRelated(data) end

---Table container for ProfessionExpansion (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionExpansion : DbcTable
---@field [integer] dbc.row.v1215.ProfessionExpansion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionExpansion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionExpansion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionExpansion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionExpansion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionExpansion[]
function tbl:GetByRelation(foreign_id) end

return {}
