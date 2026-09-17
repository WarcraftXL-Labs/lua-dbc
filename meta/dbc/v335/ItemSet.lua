---@meta
-- Generated LuaLS annotations for ItemSet (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemSet in build 3.3.5.12340.
---@class dbc.row.v335.ItemSet : RowProxy
---@field ID integer
---@field Name_lang string
---@field Name string Localized string alias without _lang.
---@field ItemID integer[]
---@field SetSpellID integer[]
---@field SetThreshold integer[]
---@field RequiredSkill integer
---@field RequiredSkillRank integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemSet self
function row:SetID(value) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ItemSet self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ItemSet self
function row:SetName_lang(value, locale) end

---Gets the value of field 'ItemID'.
---@return integer[] value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer[]
---@return dbc.row.v335.ItemSet self
function row:SetItemID(value) end

---Gets element at 1-based index in 'ItemID'.
---@param index integer
---@return integer value
function row:GetItemIDItem(index) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v335.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v335.Item
function row:CreateRelated(data) end

---Gets the value of field 'SetSpellID'.
---@return integer[] value
function row:GetSetSpellID() end

---Sets the value of field 'SetSpellID'.
---@param value integer[]
---@return dbc.row.v335.ItemSet self
function row:SetSetSpellID(value) end

---Gets element at 1-based index in 'SetSpellID'.
---@param index integer
---@return integer value
function row:GetSetSpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'SetSpellID'.
---@return dbc.row.v335.Spell|nil
function row:GetSetSpell() end

---Creates a related 'Spell' row and automatically links 'SetSpellID'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the value of field 'SetThreshold'.
---@return integer[] value
function row:GetSetThreshold() end

---Sets the value of field 'SetThreshold'.
---@param value integer[]
---@return dbc.row.v335.ItemSet self
function row:SetSetThreshold(value) end

---Gets element at 1-based index in 'SetThreshold'.
---@param index integer
---@return integer value
function row:GetSetThresholdItem(index) end

---Gets the value of field 'RequiredSkill'.
---@return integer value
function row:GetRequiredSkill() end

---Sets the value of field 'RequiredSkill'.
---@param value integer
---@return dbc.row.v335.ItemSet self
function row:SetRequiredSkill(value) end

---Navigates foreign relationship to 'SkillLine' via 'RequiredSkill'.
---@return dbc.row.v335.SkillLine|nil
function row:GetRequiredSkill() end

---Creates a related 'SkillLine' row and automatically links 'RequiredSkill'.
---@param data? table
---@return dbc.row.v335.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSkillRank'.
---@return integer value
function row:GetRequiredSkillRank() end

---Sets the value of field 'RequiredSkillRank'.
---@param value integer
---@return dbc.row.v335.ItemSet self
function row:SetRequiredSkillRank(value) end

---Table container for ItemSet (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemSet : DbcTable
---@field [integer] dbc.row.v335.ItemSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemSet[]
function tbl:GetByRelation(foreign_id) end

return {}
