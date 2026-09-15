---@meta
-- Generated LuaLS annotations for Covenant (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Covenant in build 12.1.5.69594.
---@class dbc.row.v1215.Covenant : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field BountySetID integer
---@field SkillLineID integer
---@field DeathTeleportSpellID integer
---@field Field_9_0_2_36165_006 integer
---@field Field_9_0_2_36165_007 integer
---@field FactionID integer
---@field CurrencyTypesID integer
---@field RequiredPlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Covenant self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.Covenant self
function row:SetDescription_lang(value) end

---Gets the value of field 'BountySetID'.
---@return integer value
function row:GetBountySetID() end

---Sets the value of field 'BountySetID'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetBountySetID(value) end

---Navigates foreign relationship to 'BountySet' via 'BountySetID'.
---@return dbc.row.v1215.BountySet|nil
function row:GetBountySet() end

---Creates a related 'BountySet' row and automatically links 'BountySetID'.
---@param data? table
---@return dbc.row.v1215.BountySet
function row:CreateRelated(data) end

---Gets the value of field 'SkillLineID'.
---@return integer value
function row:GetSkillLineID() end

---Sets the value of field 'SkillLineID'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetSkillLineID(value) end

---Navigates foreign relationship to 'SkillLine' via 'SkillLineID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetSkillLine() end

---Creates a related 'SkillLine' row and automatically links 'SkillLineID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'DeathTeleportSpellID'.
---@return integer value
function row:GetDeathTeleportSpellID() end

---Sets the value of field 'DeathTeleportSpellID'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetDeathTeleportSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'DeathTeleportSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetDeathTeleportSpell() end

---Creates a related 'Spell' row and automatically links 'DeathTeleportSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_2_36165_006'.
---@return integer value
function row:GetField_9_0_2_36165_006() end

---Sets the value of field 'Field_9_0_2_36165_006'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetField_9_0_2_36165_006(value) end

---Navigates foreign relationship to 'Spell' via 'Field_9_0_2_36165_006'.
---@return dbc.row.v1215.Spell|nil
function row:GetField_9_0_2_36165_006() end

---Creates a related 'Spell' row and automatically links 'Field_9_0_2_36165_006'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Field_9_0_2_36165_007'.
---@return integer value
function row:GetField_9_0_2_36165_007() end

---Sets the value of field 'Field_9_0_2_36165_007'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetField_9_0_2_36165_007(value) end

---Navigates foreign relationship to 'Spell' via 'Field_9_0_2_36165_007'.
---@return dbc.row.v1215.Spell|nil
function row:GetField_9_0_2_36165_007() end

---Creates a related 'Spell' row and automatically links 'Field_9_0_2_36165_007'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'FactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'RequiredPlayerConditionID'.
---@return integer value
function row:GetRequiredPlayerConditionID() end

---Sets the value of field 'RequiredPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.Covenant self
function row:SetRequiredPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'RequiredPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetRequiredPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'RequiredPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for Covenant (Build 12.1.5.69594).
---@class dbc.Table.v1215.Covenant : DbcTable
---@field [integer] dbc.row.v1215.Covenant
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Covenant
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Covenant|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Covenant
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Covenant>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Covenant[]
function tbl:GetByRelation(foreign_id) end

return {}
