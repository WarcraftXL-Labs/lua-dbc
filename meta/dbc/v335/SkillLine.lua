---@meta
-- Generated LuaLS annotations for SkillLine (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SkillLine in build 3.3.5.12340.
---@class dbc.row.v335.SkillLine : RowProxy
---@field ID integer
---@field CategoryID integer
---@field SkillCostsID integer
---@field DisplayName_lang string
---@field Description_lang string
---@field SpellIconID integer
---@field AlternateVerb_lang string
---@field CanLink integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetID(value) end

---Gets the value of field 'CategoryID'.
---@return integer value
function row:GetCategoryID() end

---Sets the value of field 'CategoryID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetCategoryID(value) end

---Navigates foreign relationship to 'SkillLineCategory' via 'CategoryID'.
---@return dbc.row.v335.SkillLineCategory|nil
function row:GetCategory() end

---Creates a related 'SkillLineCategory' row and automatically links 'CategoryID'.
---@param data? table
---@return dbc.row.v335.SkillLineCategory
function row:CreateRelated(data) end

---Gets the value of field 'SkillCostsID'.
---@return integer value
function row:GetSkillCostsID() end

---Sets the value of field 'SkillCostsID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetSkillCostsID(value) end

---Navigates foreign relationship to 'SkillCosts' via 'SkillCostsID'.
---@return dbc.row.v335.SkillCosts|nil
function row:GetSkillCosts() end

---Creates a related 'SkillCosts' row and automatically links 'SkillCostsID'.
---@param data? table
---@return dbc.row.v335.SkillCosts
function row:CreateRelated(data) end

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v335.SkillLine self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v335.SkillLine self
function row:SetDescription_lang(value) end

---Gets the value of field 'SpellIconID'.
---@return integer value
function row:GetSpellIconID() end

---Sets the value of field 'SpellIconID'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetSpellIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'SpellIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetSpellIcon() end

---Creates a related 'SpellIcon' row and automatically links 'SpellIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Gets the value of field 'AlternateVerb_lang'.
---@return string value
function row:GetAlternateVerb_lang() end

---Sets the value of field 'AlternateVerb_lang'.
---@param value string
---@return dbc.row.v335.SkillLine self
function row:SetAlternateVerb_lang(value) end

---Gets the value of field 'CanLink'.
---@return integer value
function row:GetCanLink() end

---Sets the value of field 'CanLink'.
---@param value integer
---@return dbc.row.v335.SkillLine self
function row:SetCanLink(value) end

---Table container for SkillLine (Build 3.3.5.12340).
---@class dbc.Table.v335.SkillLine : DbcTable
---@field [integer] dbc.row.v335.SkillLine
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SkillLine
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SkillLine|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SkillLine
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SkillLine>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SkillLine[]
function tbl:GetByRelation(foreign_id) end

return {}
