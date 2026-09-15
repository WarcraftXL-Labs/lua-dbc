---@meta
-- Generated LuaLS annotations for SpellItemEnchantment (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellItemEnchantment in build 12.1.5.69594.
---@class dbc.row.v1215.SpellItemEnchantment : RowProxy
---@field ID integer
---@field Name_lang string
---@field HordeName_lang string
---@field Duration integer
---@field Charges integer
---@field Effect integer[]
---@field EffectPointsMin integer[]
---@field EffectArg integer[]
---@field Flags integer
---@field EffectScalingPoints number[]
---@field ScalingClass integer
---@field ScalingClassRestricted integer
---@field Field_12_1_5_69594_011 integer
---@field RequiredSkillID integer
---@field RequiredSkillRank integer
---@field MinLevel integer
---@field MaxLevel integer
---@field IconFileDataID integer
---@field ItemLevelMin integer
---@field ItemLevelMax integer
---@field TransmogUseConditionID integer
---@field TransmogCost integer
---@field Field_12_1_5_69594_021 integer
---@field ItemVisual integer
---@field ItemLevel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetName_lang(value) end

---Gets the value of field 'HordeName_lang'.
---@return string value
function row:GetHordeName_lang() end

---Sets the value of field 'HordeName_lang'.
---@param value string
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetHordeName_lang(value) end

---Gets the value of field 'Duration'.
---@return integer value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetDuration(value) end

---Gets the value of field 'Charges'.
---@return integer value
function row:GetCharges() end

---Sets the value of field 'Charges'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetCharges(value) end

---Gets the value of field 'Effect'.
---@return integer[] value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer[]
---@return dbc.row.v1215.SpellItemEnchantment self
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
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetEffectPointsMin(value) end

---Gets element at 1-based index in 'EffectPointsMin'.
---@param index integer
---@return integer value
function row:GetEffectPointsMinItem(index) end

---Gets the value of field 'EffectArg'.
---@return integer[] value
function row:GetEffectArg() end

---Sets the value of field 'EffectArg'.
---@param value integer[]
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetEffectArg(value) end

---Gets element at 1-based index in 'EffectArg'.
---@param index integer
---@return integer value
function row:GetEffectArgItem(index) end

---Navigates foreign relationship to 'Spell' via 'EffectArg'.
---@return dbc.row.v1215.Spell|nil
function row:GetEffectArg() end

---Creates a related 'Spell' row and automatically links 'EffectArg'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetFlags(value) end

---Gets the value of field 'EffectScalingPoints'.
---@return number[] value
function row:GetEffectScalingPoints() end

---Sets the value of field 'EffectScalingPoints'.
---@param value number[]
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetEffectScalingPoints(value) end

---Gets element at 1-based index in 'EffectScalingPoints'.
---@param index integer
---@return number value
function row:GetEffectScalingPointsItem(index) end

---Gets the value of field 'ScalingClass'.
---@return integer value
function row:GetScalingClass() end

---Sets the value of field 'ScalingClass'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetScalingClass(value) end

---Gets the value of field 'ScalingClassRestricted'.
---@return integer value
function row:GetScalingClassRestricted() end

---Sets the value of field 'ScalingClassRestricted'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetScalingClassRestricted(value) end

---Gets the value of field 'Field_12_1_5_69594_011'.
---@return integer value
function row:GetField_12_1_5_69594_011() end

---Sets the value of field 'Field_12_1_5_69594_011'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetField_12_1_5_69594_011(value) end

---Gets the value of field 'RequiredSkillID'.
---@return integer value
function row:GetRequiredSkillID() end

---Sets the value of field 'RequiredSkillID'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetRequiredSkillID(value) end

---Navigates foreign relationship to 'SkillLine' via 'RequiredSkillID'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetRequiredSkill() end

---Creates a related 'SkillLine' row and automatically links 'RequiredSkillID'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSkillRank'.
---@return integer value
function row:GetRequiredSkillRank() end

---Sets the value of field 'RequiredSkillRank'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetRequiredSkillRank(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetMaxLevel(value) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ItemLevelMin'.
---@return integer value
function row:GetItemLevelMin() end

---Sets the value of field 'ItemLevelMin'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetItemLevelMin(value) end

---Gets the value of field 'ItemLevelMax'.
---@return integer value
function row:GetItemLevelMax() end

---Sets the value of field 'ItemLevelMax'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetItemLevelMax(value) end

---Gets the value of field 'TransmogUseConditionID'.
---@return integer value
function row:GetTransmogUseConditionID() end

---Sets the value of field 'TransmogUseConditionID'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetTransmogUseConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'TransmogUseConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetTransmogUseCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'TransmogUseConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'TransmogCost'.
---@return integer value
function row:GetTransmogCost() end

---Sets the value of field 'TransmogCost'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetTransmogCost(value) end

---Gets the value of field 'Field_12_1_5_69594_021'.
---@return integer value
function row:GetField_12_1_5_69594_021() end

---Sets the value of field 'Field_12_1_5_69594_021'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetField_12_1_5_69594_021(value) end

---Gets the value of field 'ItemVisual'.
---@return integer value
function row:GetItemVisual() end

---Sets the value of field 'ItemVisual'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetItemVisual(value) end

---Navigates foreign relationship to 'ItemVisuals' via 'ItemVisual'.
---@return dbc.row.v1215.ItemVisuals|nil
function row:GetItemVisual() end

---Creates a related 'ItemVisuals' row and automatically links 'ItemVisual'.
---@param data? table
---@return dbc.row.v1215.ItemVisuals
function row:CreateRelated(data) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.SpellItemEnchantment self
function row:SetItemLevel(value) end

---Table container for SpellItemEnchantment (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellItemEnchantment : DbcTable
---@field [integer] dbc.row.v1215.SpellItemEnchantment
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellItemEnchantment
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellItemEnchantment|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellItemEnchantment
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellItemEnchantment>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellItemEnchantment[]
function tbl:GetByRelation(foreign_id) end

return {}
