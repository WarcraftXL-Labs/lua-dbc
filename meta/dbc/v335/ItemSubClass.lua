---@meta
-- Generated LuaLS annotations for ItemSubClass (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemSubClass in build 3.3.5.12340.
---@class dbc.row.v335.ItemSubClass : RowProxy
---@field ClassID integer
---@field SubClassID integer
---@field PrerequisiteProficiency integer
---@field PostrequisiteProficiency integer
---@field Flags integer ItemSubclassFlag: &0x001: WeaponsubclassCanparry, &0x002: WeaponsubclassSetfingerseq, &0x004: WeaponsubclassIsunarmed, &0x008: WeaponsubclassIsrifle, &0x010: WeaponsubclassIsthrown, &0x020: WeaponsubclassRighthandRanged, &0x040: ItemsubclassQuivernotrequired, &0x080: WeaponsubclassRanged, &0x100: WeaponsubclassDeprecatedReuseMe, &0x200: ItemsubclassUsesInvtype, &0x400: ArmorsubclassLfgscalingarmor
---@field DisplayFlags integer ItemSubclassDisplay: &0x1: HideSubclassInTooltips; &0x2: HideSubclassInAuction; &0x4: ShowItemCount
---@field WeaponParrySeq integer
---@field WeaponReadySeq integer
---@field WeaponAttackSeq integer
---@field WeaponSwingSize integer
---@field DisplayName_lang string
---@field DisplayName string Localized string alias without _lang.
---@field VerboseName_lang string
---@field VerboseName string Localized string alias without _lang.

local row = {}

---Gets the value of field 'ClassID'.
---@return integer value
function row:GetClassID() end

---Sets the value of field 'ClassID'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetClassID(value) end

---Navigates foreign relationship to 'ItemClass' via 'ClassID'.
---@return dbc.row.v335.ItemClass|nil
function row:GetClass() end

---Creates a related 'ItemClass' row and automatically links 'ClassID'.
---@param data? table
---@return dbc.row.v335.ItemClass
function row:CreateRelated(data) end

---Gets the value of field 'SubClassID'.
---@return integer value
function row:GetSubClassID() end

---Sets the value of field 'SubClassID'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetSubClassID(value) end

---Navigates foreign relationship to 'SubClass' via 'SubClassID'.
---@return dbc.row.v335.SubClass|nil
function row:GetSubClass() end

---Creates a related 'SubClass' row and automatically links 'SubClassID'.
---@param data? table
---@return dbc.row.v335.SubClass
function row:CreateRelated(data) end

---Gets the value of field 'PrerequisiteProficiency'.
---@return integer value
function row:GetPrerequisiteProficiency() end

---Sets the value of field 'PrerequisiteProficiency'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetPrerequisiteProficiency(value) end

---Gets the value of field 'PostrequisiteProficiency'.
---@return integer value
function row:GetPostrequisiteProficiency() end

---Sets the value of field 'PostrequisiteProficiency'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetPostrequisiteProficiency(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetFlags(value) end

---Gets the value of field 'DisplayFlags'.
---@return integer value
function row:GetDisplayFlags() end

---Sets the value of field 'DisplayFlags'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetDisplayFlags(value) end

---Gets the value of field 'WeaponParrySeq'.
---@return integer value
function row:GetWeaponParrySeq() end

---Sets the value of field 'WeaponParrySeq'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetWeaponParrySeq(value) end

---Gets the value of field 'WeaponReadySeq'.
---@return integer value
function row:GetWeaponReadySeq() end

---Sets the value of field 'WeaponReadySeq'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetWeaponReadySeq(value) end

---Gets the value of field 'WeaponAttackSeq'.
---@return integer value
function row:GetWeaponAttackSeq() end

---Sets the value of field 'WeaponAttackSeq'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetWeaponAttackSeq(value) end

---Gets the value of field 'WeaponSwingSize'.
---@return integer value
function row:GetWeaponSwingSize() end

---Sets the value of field 'WeaponSwingSize'.
---@param value integer
---@return dbc.row.v335.ItemSubClass self
function row:SetWeaponSwingSize(value) end

---Gets the localized value of field 'DisplayName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetDisplayName(locale) end

---Sets the localized value of field 'DisplayName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ItemSubClass self
function row:SetDisplayName(value, locale) end

---Gets the value of field 'DisplayName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetDisplayName_lang(locale) end

---Sets the value of field 'DisplayName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ItemSubClass self
function row:SetDisplayName_lang(value, locale) end

---Gets the localized value of field 'VerboseName'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR or 'frFR'). If omitted, returns first populated locale.
---@return string value
function row:GetVerboseName(locale) end

---Sets the localized value of field 'VerboseName'.
---@param value string|table<string|integer, string> Text to set, or table of { [locale] = 'text' }.
---@param locale? string|integer Specific locale (e.g. dbc.Locale.FRFR). If omitted, defaults to enUS (slot 0).
---@return dbc.row.v335.ItemSubClass self
function row:SetVerboseName(value, locale) end

---Gets the value of field 'VerboseName_lang'.
---@param locale? string|integer Specific locale slot or identifier (e.g. dbc.Locale.FRFR).
---@return string value
function row:GetVerboseName_lang(locale) end

---Sets the value of field 'VerboseName_lang'.
---@param value string|table<string|integer, string>
---@param locale? string|integer
---@return dbc.row.v335.ItemSubClass self
function row:SetVerboseName_lang(value, locale) end

---Table container for ItemSubClass (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemSubClass : DbcTable
---@field [integer] dbc.row.v335.ItemSubClass
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemSubClass
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemSubClass|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemSubClass
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemSubClass>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemSubClass[]
function tbl:GetByRelation(foreign_id) end

return {}
