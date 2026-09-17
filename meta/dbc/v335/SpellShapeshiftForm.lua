---@meta
-- Generated LuaLS annotations for SpellShapeshiftForm (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellShapeshiftForm in build 3.3.5.12340.
---@class dbc.row.v335.SpellShapeshiftForm : RowProxy
---@field ID integer
---@field BonusActionBar integer
---@field Name_lang string
---@field Name string Localized string alias without _lang.
---@field Flags integer
---@field CreatureType integer
---@field AttackIconID integer
---@field CombatRoundTime integer
---@field CreatureDisplayID integer[]
---@field PresetSpellID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetID(value) end

---Gets the value of field 'BonusActionBar'.
---@return integer value
function row:GetBonusActionBar() end

---Sets the value of field 'BonusActionBar'.
---@param value integer
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetBonusActionBar(value) end

---Gets the localized value of field 'Name'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetName(locale) end

---Sets the localized value of field 'Name'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetName(value, locale) end

---Gets the value of field 'Name_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetName_lang(locale) end

---Sets the value of field 'Name_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetName_lang(value, locale) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetFlags(value) end

---Gets the value of field 'CreatureType'.
---@return integer value
function row:GetCreatureType() end

---Sets the value of field 'CreatureType'.
---@param value integer
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetCreatureType(value) end

---Navigates foreign relationship to 'CreatureType' via 'CreatureType'.
---@return dbc.row.v335.CreatureType|nil
function row:GetCreatureType() end

---Creates a related 'CreatureType' row and automatically links 'CreatureType'.
---@param data? table
---@return dbc.row.v335.CreatureType
function row:CreateRelated(data) end

---Gets the value of field 'AttackIconID'.
---@return integer value
function row:GetAttackIconID() end

---Sets the value of field 'AttackIconID'.
---@param value integer
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetAttackIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'AttackIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetAttackIcon() end

---Creates a related 'SpellIcon' row and automatically links 'AttackIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Gets the value of field 'CombatRoundTime'.
---@return integer value
function row:GetCombatRoundTime() end

---Sets the value of field 'CombatRoundTime'.
---@param value integer
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetCombatRoundTime(value) end

---Gets the value of field 'CreatureDisplayID'.
---@return integer[] value
function row:GetCreatureDisplayID() end

---Sets the value of field 'CreatureDisplayID'.
---@param value integer[]
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetCreatureDisplayID(value) end

---Gets element at 1-based index in 'CreatureDisplayID'.
---@param index integer
---@return integer value
function row:GetCreatureDisplayIDItem(index) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayID'.
---@return dbc.row.v335.CreatureDisplayInfo|nil
function row:GetCreatureDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayID'.
---@param data? table
---@return dbc.row.v335.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'PresetSpellID'.
---@return integer[] value
function row:GetPresetSpellID() end

---Sets the value of field 'PresetSpellID'.
---@param value integer[]
---@return dbc.row.v335.SpellShapeshiftForm self
function row:SetPresetSpellID(value) end

---Gets element at 1-based index in 'PresetSpellID'.
---@param index integer
---@return integer value
function row:GetPresetSpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'PresetSpellID'.
---@return dbc.row.v335.Spell|nil
function row:GetPresetSpell() end

---Creates a related 'Spell' row and automatically links 'PresetSpellID'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Table container for SpellShapeshiftForm (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellShapeshiftForm : DbcTable
---@field [integer] dbc.row.v335.SpellShapeshiftForm
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellShapeshiftForm
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellShapeshiftForm|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellShapeshiftForm
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellShapeshiftForm>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellShapeshiftForm[]
function tbl:GetByRelation(foreign_id) end

return {}
