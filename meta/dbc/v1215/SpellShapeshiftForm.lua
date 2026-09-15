---@meta
-- Generated LuaLS annotations for SpellShapeshiftForm (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellShapeshiftForm in build 12.1.5.69594.
---@class dbc.row.v1215.SpellShapeshiftForm : RowProxy
---@field ID integer
---@field Name_lang string
---@field CreatureDisplayID integer
---@field CreatureType integer
---@field Flags integer
---@field AttackIconFileID integer
---@field BonusActionBar integer
---@field CombatRoundTime integer
---@field DamageVariance number
---@field MountTypeID integer
---@field PresetSpellID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetName_lang(value) end

---Gets the value of field 'CreatureDisplayID'.
---@return integer value
function row:GetCreatureDisplayID() end

---Sets the value of field 'CreatureDisplayID'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetCreatureDisplayID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'CreatureType'.
---@return integer value
function row:GetCreatureType() end

---Sets the value of field 'CreatureType'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetCreatureType(value) end

---Navigates foreign relationship to 'CreatureType' via 'CreatureType'.
---@return dbc.row.v1215.CreatureType|nil
function row:GetCreatureType() end

---Creates a related 'CreatureType' row and automatically links 'CreatureType'.
---@param data? table
---@return dbc.row.v1215.CreatureType
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetFlags(value) end

---Gets the value of field 'AttackIconFileID'.
---@return integer value
function row:GetAttackIconFileID() end

---Sets the value of field 'AttackIconFileID'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetAttackIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'AttackIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetAttackIconFile() end

---Creates a related 'FileData' row and automatically links 'AttackIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'BonusActionBar'.
---@return integer value
function row:GetBonusActionBar() end

---Sets the value of field 'BonusActionBar'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetBonusActionBar(value) end

---Gets the value of field 'CombatRoundTime'.
---@return integer value
function row:GetCombatRoundTime() end

---Sets the value of field 'CombatRoundTime'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetCombatRoundTime(value) end

---Gets the value of field 'DamageVariance'.
---@return number value
function row:GetDamageVariance() end

---Sets the value of field 'DamageVariance'.
---@param value number
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetDamageVariance(value) end

---Gets the value of field 'MountTypeID'.
---@return integer value
function row:GetMountTypeID() end

---Sets the value of field 'MountTypeID'.
---@param value integer
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetMountTypeID(value) end

---Navigates foreign relationship to 'MountType' via 'MountTypeID'.
---@return dbc.row.v1215.MountType|nil
function row:GetMountType() end

---Creates a related 'MountType' row and automatically links 'MountTypeID'.
---@param data? table
---@return dbc.row.v1215.MountType
function row:CreateRelated(data) end

---Gets the value of field 'PresetSpellID'.
---@return integer[] value
function row:GetPresetSpellID() end

---Sets the value of field 'PresetSpellID'.
---@param value integer[]
---@return dbc.row.v1215.SpellShapeshiftForm self
function row:SetPresetSpellID(value) end

---Gets element at 1-based index in 'PresetSpellID'.
---@param index integer
---@return integer value
function row:GetPresetSpellIDItem(index) end

---Navigates foreign relationship to 'Spell' via 'PresetSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetPresetSpell() end

---Creates a related 'Spell' row and automatically links 'PresetSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellShapeshiftForm (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellShapeshiftForm : DbcTable
---@field [integer] dbc.row.v1215.SpellShapeshiftForm
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellShapeshiftForm
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellShapeshiftForm|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellShapeshiftForm
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellShapeshiftForm>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellShapeshiftForm[]
function tbl:GetByRelation(foreign_id) end

return {}
