---@meta
-- Generated LuaLS annotations for SpellItemEnchantment (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellItemEnchantment in build 3.3.5.12340.
---@class dbc.row.v335.SpellItemEnchantment : RowProxy
---@field ID integer
---@field Charges integer
---@field Effect integer[]
---@field EffectPointsMin integer[]
---@field EffectPointsMax integer[]
---@field EffectArg integer[]
---@field Name_lang string
---@field Name string Localized string alias without _lang.
---@field ItemVisual integer
---@field Flags integer
---@field Src_itemID integer
---@field Condition_ID integer
---@field RequiredSkillID integer
---@field RequiredSkillRank integer
---@field MinLevel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetID(value) end

---Gets the value of field 'Charges'.
---@return integer value
function row:GetCharges() end

---Sets the value of field 'Charges'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetCharges(value) end

---Gets the value of field 'Effect'.
---@return integer[] value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetEffect(value) end

---Gets element at 1-based index in 'Effect'.
---@param index integer
---@return integer value
function row:GetEffectItem(index) end

---Gets the value of field 'EffectPointsMin'.
---@return integer[] value
function row:GetEffectPointsMin() end

---Sets the value of field 'EffectPointsMin'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetEffectPointsMin(value) end

---Gets element at 1-based index in 'EffectPointsMin'.
---@param index integer
---@return integer value
function row:GetEffectPointsMinItem(index) end

---Gets the value of field 'EffectPointsMax'.
---@return integer[] value
function row:GetEffectPointsMax() end

---Sets the value of field 'EffectPointsMax'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetEffectPointsMax(value) end

---Gets element at 1-based index in 'EffectPointsMax'.
---@param index integer
---@return integer value
function row:GetEffectPointsMaxItem(index) end

---Gets the value of field 'EffectArg'.
---@return integer[] value
function row:GetEffectArg() end

---Sets the value of field 'EffectArg'.
---@param value integer[]
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetEffectArg(value) end

---Gets element at 1-based index in 'EffectArg'.
---@param index integer
---@return integer value
function row:GetEffectArgItem(index) end

---Navigates foreign relationship to 'Spell' via 'EffectArg'.
---@return dbc.row.v335.Spell|nil
function row:GetEffectArg() end

---Creates a related 'Spell' row and automatically links 'EffectArg'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetName_lang(value, locale) end

---Gets the value of field 'ItemVisual'.
---@return integer value
function row:GetItemVisual() end

---Sets the value of field 'ItemVisual'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetItemVisual(value) end

---Navigates foreign relationship to 'ItemVisuals' via 'ItemVisual'.
---@return dbc.row.v335.ItemVisuals|nil
function row:GetItemVisual() end

---Creates a related 'ItemVisuals' row and automatically links 'ItemVisual'.
---@param data? table
---@return dbc.row.v335.ItemVisuals
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetFlags(value) end

---Gets the value of field 'Src_itemID'.
---@return integer value
function row:GetSrc_itemID() end

---Sets the value of field 'Src_itemID'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetSrc_itemID(value) end

---Navigates foreign relationship to 'Src_item' via 'Src_itemID'.
---@return dbc.row.v335.Src_item|nil
function row:GetSrc_item() end

---Creates a related 'Src_item' row and automatically links 'Src_itemID'.
---@param data? table
---@return dbc.row.v335.Src_item
function row:CreateRelated(data) end

---Gets the value of field 'Condition_ID'.
---@return integer value
function row:GetCondition_ID() end

---Sets the value of field 'Condition_ID'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetCondition_ID(value) end

---Navigates foreign relationship to 'SpellItemEnchantmentCondition' via 'Condition_ID'.
---@return dbc.row.v335.SpellItemEnchantmentCondition|nil
function row:GetCondition_() end

---Creates a related 'SpellItemEnchantmentCondition' row and automatically links 'Condition_ID'.
---@param data? table
---@return dbc.row.v335.SpellItemEnchantmentCondition
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSkillID'.
---@return integer value
function row:GetRequiredSkillID() end

---Sets the value of field 'RequiredSkillID'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetRequiredSkillID(value) end

---Navigates foreign relationship to 'SkillLine' via 'RequiredSkillID'.
---@return dbc.row.v335.SkillLine|nil
function row:GetRequiredSkill() end

---Creates a related 'SkillLine' row and automatically links 'RequiredSkillID'.
---@param data? table
---@return dbc.row.v335.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSkillRank'.
---@return integer value
function row:GetRequiredSkillRank() end

---Sets the value of field 'RequiredSkillRank'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetRequiredSkillRank(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v335.SpellItemEnchantment self
function row:SetMinLevel(value) end

---Table container for SpellItemEnchantment (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellItemEnchantment : DbcTable
---@field [integer] dbc.row.v335.SpellItemEnchantment
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellItemEnchantment
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellItemEnchantment|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellItemEnchantment
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellItemEnchantment>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellItemEnchantment[]
function tbl:GetByRelation(foreign_id) end

return {}
