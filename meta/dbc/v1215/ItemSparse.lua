---@meta
-- Generated LuaLS annotations for ItemSparse (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemSparse in build 12.1.5.69594.
---@class dbc.row.v1215.ItemSparse : RowProxy
---@field ID integer
---@field Description_lang string
---@field Display3_lang string
---@field Display2_lang string
---@field Display1_lang string
---@field Display_lang string
---@field ExpansionID integer
---@field DmgVariance number
---@field LimitCategory integer
---@field DurationInInventory integer
---@field QualityModifier number
---@field BagFamily integer
---@field StartQuestID integer
---@field LanguageID integer
---@field ItemRange number
---@field StatPercentageOfSocket number[]
---@field StatPercentEditor integer[]
---@field StatModifier_bonusStat integer[]
---@field Stackable integer
---@field MaxCount integer
---@field MinReputation integer
---@field RequiredAbility integer
---@field AllowableRaces integer[]
---@field SellPrice integer
---@field BuyPrice integer
---@field VendorStackCount integer
---@field PriceVariance number
---@field PriceRandomValue number
---@field Flags integer[]
---@field OppositeFactionItemID integer
---@field ModifiedCraftingReagentItemID integer
---@field ContentTuningID integer
---@field PlayerLevelToItemLevelCurveID integer
---@field ItemLevelOffsetCurveID integer
---@field ItemLevelOffsetItemLevel integer same purpose as ItemScalingConfig::ItemLevel (curve parameter for ItemLevelOffsetCurveID)
---@field ItemSquishEraID integer
---@field ItemNameDescriptionID integer
---@field RequiredTransmogHoliday integer
---@field RequiredHoliday integer
---@field Gem_properties integer
---@field Socket_match_enchantment_ID integer
---@field TotemCategoryID integer
---@field InstanceBound integer
---@field ZoneBound integer[]
---@field ItemSet integer
---@field LockID integer
---@field PageID integer
---@field ItemDelay integer
---@field MinFactionID integer
---@field RequiredSkillRank integer
---@field RequiredSkill integer
---@field ItemLevel integer
---@field AllowableClass integer
---@field ArtifactID integer
---@field SpellWeight integer
---@field SpellWeightCategory integer
---@field SocketType integer[]
---@field SheatheType integer
---@field Material integer
---@field PageMaterialID integer
---@field Bonding integer
---@field DamageType integer
---@field ContainerSlots integer
---@field RequiredPVPMedal integer
---@field RequiredPVPRank integer
---@field RequiredLevel integer
---@field InventoryType integer
---@field OverallQualityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ItemSparse self
function row:SetDescription_lang(value) end

---Gets the value of field 'Display3_lang'.
---@return string value
function row:GetDisplay3_lang() end

---Sets the value of field 'Display3_lang'.
---@param value string
---@return dbc.row.v1215.ItemSparse self
function row:SetDisplay3_lang(value) end

---Gets the value of field 'Display2_lang'.
---@return string value
function row:GetDisplay2_lang() end

---Sets the value of field 'Display2_lang'.
---@param value string
---@return dbc.row.v1215.ItemSparse self
function row:SetDisplay2_lang(value) end

---Gets the value of field 'Display1_lang'.
---@return string value
function row:GetDisplay1_lang() end

---Sets the value of field 'Display1_lang'.
---@param value string
---@return dbc.row.v1215.ItemSparse self
function row:SetDisplay1_lang(value) end

---Gets the value of field 'Display_lang'.
---@return string value
function row:GetDisplay_lang() end

---Sets the value of field 'Display_lang'.
---@param value string
---@return dbc.row.v1215.ItemSparse self
function row:SetDisplay_lang(value) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'DmgVariance'.
---@return number value
function row:GetDmgVariance() end

---Sets the value of field 'DmgVariance'.
---@param value number
---@return dbc.row.v1215.ItemSparse self
function row:SetDmgVariance(value) end

---Gets the value of field 'LimitCategory'.
---@return integer value
function row:GetLimitCategory() end

---Sets the value of field 'LimitCategory'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetLimitCategory(value) end

---Gets the value of field 'DurationInInventory'.
---@return integer value
function row:GetDurationInInventory() end

---Sets the value of field 'DurationInInventory'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetDurationInInventory(value) end

---Gets the value of field 'QualityModifier'.
---@return number value
function row:GetQualityModifier() end

---Sets the value of field 'QualityModifier'.
---@param value number
---@return dbc.row.v1215.ItemSparse self
function row:SetQualityModifier(value) end

---Gets the value of field 'BagFamily'.
---@return integer value
function row:GetBagFamily() end

---Sets the value of field 'BagFamily'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetBagFamily(value) end

---Gets the value of field 'StartQuestID'.
---@return integer value
function row:GetStartQuestID() end

---Sets the value of field 'StartQuestID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetStartQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'StartQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetStartQuest() end

---Creates a related 'QuestV2' row and automatically links 'StartQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'LanguageID'.
---@return integer value
function row:GetLanguageID() end

---Sets the value of field 'LanguageID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetLanguageID(value) end

---Navigates foreign relationship to 'Languages' via 'LanguageID'.
---@return dbc.row.v1215.Languages|nil
function row:GetLanguage() end

---Creates a related 'Languages' row and automatically links 'LanguageID'.
---@param data? table
---@return dbc.row.v1215.Languages
function row:CreateRelated(data) end

---Gets the value of field 'ItemRange'.
---@return number value
function row:GetItemRange() end

---Sets the value of field 'ItemRange'.
---@param value number
---@return dbc.row.v1215.ItemSparse self
function row:SetItemRange(value) end

---Gets the value of field 'StatPercentageOfSocket'.
---@return number[] value
function row:GetStatPercentageOfSocket() end

---Sets the value of field 'StatPercentageOfSocket'.
---@param value number[]
---@return dbc.row.v1215.ItemSparse self
function row:SetStatPercentageOfSocket(value) end

---Gets element at 1-based index in 'StatPercentageOfSocket'.
---@param index integer
---@return number value
function row:GetStatPercentageOfSocketItem(index) end

---Gets the value of field 'StatPercentEditor'.
---@return integer[] value
function row:GetStatPercentEditor() end

---Sets the value of field 'StatPercentEditor'.
---@param value integer[]
---@return dbc.row.v1215.ItemSparse self
function row:SetStatPercentEditor(value) end

---Gets element at 1-based index in 'StatPercentEditor'.
---@param index integer
---@return integer value
function row:GetStatPercentEditorItem(index) end

---Gets the value of field 'StatModifier_bonusStat'.
---@return integer[] value
function row:GetStatModifier_bonusStat() end

---Sets the value of field 'StatModifier_bonusStat'.
---@param value integer[]
---@return dbc.row.v1215.ItemSparse self
function row:SetStatModifier_bonusStat(value) end

---Gets element at 1-based index in 'StatModifier_bonusStat'.
---@param index integer
---@return integer value
function row:GetStatModifier_bonusStatItem(index) end

---Gets the value of field 'Stackable'.
---@return integer value
function row:GetStackable() end

---Sets the value of field 'Stackable'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetStackable(value) end

---Gets the value of field 'MaxCount'.
---@return integer value
function row:GetMaxCount() end

---Sets the value of field 'MaxCount'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetMaxCount(value) end

---Gets the value of field 'MinReputation'.
---@return integer value
function row:GetMinReputation() end

---Sets the value of field 'MinReputation'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetMinReputation(value) end

---Gets the value of field 'RequiredAbility'.
---@return integer value
function row:GetRequiredAbility() end

---Sets the value of field 'RequiredAbility'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredAbility(value) end

---Gets the value of field 'AllowableRaces'.
---@return integer[] value
function row:GetAllowableRaces() end

---Sets the value of field 'AllowableRaces'.
---@param value integer[]
---@return dbc.row.v1215.ItemSparse self
function row:SetAllowableRaces(value) end

---Gets element at 1-based index in 'AllowableRaces'.
---@param index integer
---@return integer value
function row:GetAllowableRacesItem(index) end

---Gets the value of field 'SellPrice'.
---@return integer value
function row:GetSellPrice() end

---Sets the value of field 'SellPrice'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetSellPrice(value) end

---Gets the value of field 'BuyPrice'.
---@return integer value
function row:GetBuyPrice() end

---Sets the value of field 'BuyPrice'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetBuyPrice(value) end

---Gets the value of field 'VendorStackCount'.
---@return integer value
function row:GetVendorStackCount() end

---Sets the value of field 'VendorStackCount'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetVendorStackCount(value) end

---Gets the value of field 'PriceVariance'.
---@return number value
function row:GetPriceVariance() end

---Sets the value of field 'PriceVariance'.
---@param value number
---@return dbc.row.v1215.ItemSparse self
function row:SetPriceVariance(value) end

---Gets the value of field 'PriceRandomValue'.
---@return number value
function row:GetPriceRandomValue() end

---Sets the value of field 'PriceRandomValue'.
---@param value number
---@return dbc.row.v1215.ItemSparse self
function row:SetPriceRandomValue(value) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.ItemSparse self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Gets the value of field 'OppositeFactionItemID'.
---@return integer value
function row:GetOppositeFactionItemID() end

---Sets the value of field 'OppositeFactionItemID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetOppositeFactionItemID(value) end

---Navigates foreign relationship to 'Item' via 'OppositeFactionItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetOppositeFactionItem() end

---Creates a related 'Item' row and automatically links 'OppositeFactionItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ModifiedCraftingReagentItemID'.
---@return integer value
function row:GetModifiedCraftingReagentItemID() end

---Sets the value of field 'ModifiedCraftingReagentItemID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetModifiedCraftingReagentItemID(value) end

---Navigates foreign relationship to 'ModifiedCraftingReagentItem' via 'ModifiedCraftingReagentItemID'.
---@return dbc.row.v1215.ModifiedCraftingReagentItem|nil
function row:GetModifiedCraftingReagentItem() end

---Creates a related 'ModifiedCraftingReagentItem' row and automatically links 'ModifiedCraftingReagentItemID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingReagentItem
function row:CreateRelated(data) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'PlayerLevelToItemLevelCurveID'.
---@return integer value
function row:GetPlayerLevelToItemLevelCurveID() end

---Sets the value of field 'PlayerLevelToItemLevelCurveID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetPlayerLevelToItemLevelCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'PlayerLevelToItemLevelCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetPlayerLevelToItemLevelCurve() end

---Creates a related 'Curve' row and automatically links 'PlayerLevelToItemLevelCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'ItemLevelOffsetCurveID'.
---@return integer value
function row:GetItemLevelOffsetCurveID() end

---Sets the value of field 'ItemLevelOffsetCurveID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetItemLevelOffsetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'ItemLevelOffsetCurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetItemLevelOffsetCurve() end

---Creates a related 'Curve' row and automatically links 'ItemLevelOffsetCurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'ItemLevelOffsetItemLevel'.
---@return integer value
function row:GetItemLevelOffsetItemLevel() end

---Sets the value of field 'ItemLevelOffsetItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetItemLevelOffsetItemLevel(value) end

---Gets the value of field 'ItemSquishEraID'.
---@return integer value
function row:GetItemSquishEraID() end

---Sets the value of field 'ItemSquishEraID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetItemSquishEraID(value) end

---Navigates foreign relationship to 'ItemSquishEra' via 'ItemSquishEraID'.
---@return dbc.row.v1215.ItemSquishEra|nil
function row:GetItemSquishEra() end

---Creates a related 'ItemSquishEra' row and automatically links 'ItemSquishEraID'.
---@param data? table
---@return dbc.row.v1215.ItemSquishEra
function row:CreateRelated(data) end

---Gets the value of field 'ItemNameDescriptionID'.
---@return integer value
function row:GetItemNameDescriptionID() end

---Sets the value of field 'ItemNameDescriptionID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetItemNameDescriptionID(value) end

---Navigates foreign relationship to 'ItemNameDescription' via 'ItemNameDescriptionID'.
---@return dbc.row.v1215.ItemNameDescription|nil
function row:GetItemNameDescription() end

---Creates a related 'ItemNameDescription' row and automatically links 'ItemNameDescriptionID'.
---@param data? table
---@return dbc.row.v1215.ItemNameDescription
function row:CreateRelated(data) end

---Gets the value of field 'RequiredTransmogHoliday'.
---@return integer value
function row:GetRequiredTransmogHoliday() end

---Sets the value of field 'RequiredTransmogHoliday'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredTransmogHoliday(value) end

---Navigates foreign relationship to 'Holidays' via 'RequiredTransmogHoliday'.
---@return dbc.row.v1215.Holidays|nil
function row:GetRequiredTransmogHoliday() end

---Creates a related 'Holidays' row and automatically links 'RequiredTransmogHoliday'.
---@param data? table
---@return dbc.row.v1215.Holidays
function row:CreateRelated(data) end

---Gets the value of field 'RequiredHoliday'.
---@return integer value
function row:GetRequiredHoliday() end

---Sets the value of field 'RequiredHoliday'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredHoliday(value) end

---Navigates foreign relationship to 'Holidays' via 'RequiredHoliday'.
---@return dbc.row.v1215.Holidays|nil
function row:GetRequiredHoliday() end

---Creates a related 'Holidays' row and automatically links 'RequiredHoliday'.
---@param data? table
---@return dbc.row.v1215.Holidays
function row:CreateRelated(data) end

---Gets the value of field 'Gem_properties'.
---@return integer value
function row:GetGem_properties() end

---Sets the value of field 'Gem_properties'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetGem_properties(value) end

---Navigates foreign relationship to 'GemProperties' via 'Gem_properties'.
---@return dbc.row.v1215.GemProperties|nil
function row:GetGem_properties() end

---Creates a related 'GemProperties' row and automatically links 'Gem_properties'.
---@param data? table
---@return dbc.row.v1215.GemProperties
function row:CreateRelated(data) end

---Gets the value of field 'Socket_match_enchantment_ID'.
---@return integer value
function row:GetSocket_match_enchantment_ID() end

---Sets the value of field 'Socket_match_enchantment_ID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetSocket_match_enchantment_ID(value) end

---Navigates foreign relationship to 'Socket_match_enchantment_' via 'Socket_match_enchantment_ID'.
---@return dbc.row.v1215.Socket_match_enchantment_|nil
function row:GetSocket_match_enchantment_() end

---Creates a related 'Socket_match_enchantment_' row and automatically links 'Socket_match_enchantment_ID'.
---@param data? table
---@return dbc.row.v1215.Socket_match_enchantment_
function row:CreateRelated(data) end

---Gets the value of field 'TotemCategoryID'.
---@return integer value
function row:GetTotemCategoryID() end

---Sets the value of field 'TotemCategoryID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetTotemCategoryID(value) end

---Navigates foreign relationship to 'TotemCategory' via 'TotemCategoryID'.
---@return dbc.row.v1215.TotemCategory|nil
function row:GetTotemCategory() end

---Creates a related 'TotemCategory' row and automatically links 'TotemCategoryID'.
---@param data? table
---@return dbc.row.v1215.TotemCategory
function row:CreateRelated(data) end

---Gets the value of field 'InstanceBound'.
---@return integer value
function row:GetInstanceBound() end

---Sets the value of field 'InstanceBound'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetInstanceBound(value) end

---Navigates foreign relationship to 'Map' via 'InstanceBound'.
---@return dbc.row.v1215.Map|nil
function row:GetInstanceBound() end

---Creates a related 'Map' row and automatically links 'InstanceBound'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'ZoneBound'.
---@return integer[] value
function row:GetZoneBound() end

---Sets the value of field 'ZoneBound'.
---@param value integer[]
---@return dbc.row.v1215.ItemSparse self
function row:SetZoneBound(value) end

---Gets element at 1-based index in 'ZoneBound'.
---@param index integer
---@return integer value
function row:GetZoneBoundItem(index) end

---Navigates foreign relationship to 'AreaTable' via 'ZoneBound'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetZoneBound() end

---Creates a related 'AreaTable' row and automatically links 'ZoneBound'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'ItemSet'.
---@return integer value
function row:GetItemSet() end

---Sets the value of field 'ItemSet'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetItemSet(value) end

---Navigates foreign relationship to 'ItemSet' via 'ItemSet'.
---@return dbc.row.v1215.ItemSet|nil
function row:GetItemSet() end

---Creates a related 'ItemSet' row and automatically links 'ItemSet'.
---@param data? table
---@return dbc.row.v1215.ItemSet
function row:CreateRelated(data) end

---Gets the value of field 'LockID'.
---@return integer value
function row:GetLockID() end

---Sets the value of field 'LockID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetLockID(value) end

---Navigates foreign relationship to 'Lock' via 'LockID'.
---@return dbc.row.v1215.Lock|nil
function row:GetLock() end

---Creates a related 'Lock' row and automatically links 'LockID'.
---@param data? table
---@return dbc.row.v1215.Lock
function row:CreateRelated(data) end

---Gets the value of field 'PageID'.
---@return integer value
function row:GetPageID() end

---Sets the value of field 'PageID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetPageID(value) end

---Navigates foreign relationship to 'Page' via 'PageID'.
---@return dbc.row.v1215.Page|nil
function row:GetPage() end

---Creates a related 'Page' row and automatically links 'PageID'.
---@param data? table
---@return dbc.row.v1215.Page
function row:CreateRelated(data) end

---Gets the value of field 'ItemDelay'.
---@return integer value
function row:GetItemDelay() end

---Sets the value of field 'ItemDelay'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetItemDelay(value) end

---Gets the value of field 'MinFactionID'.
---@return integer value
function row:GetMinFactionID() end

---Sets the value of field 'MinFactionID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetMinFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'MinFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetMinFaction() end

---Creates a related 'Faction' row and automatically links 'MinFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'RequiredSkillRank'.
---@return integer value
function row:GetRequiredSkillRank() end

---Sets the value of field 'RequiredSkillRank'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredSkillRank(value) end

---Gets the value of field 'RequiredSkill'.
---@return integer value
function row:GetRequiredSkill() end

---Sets the value of field 'RequiredSkill'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredSkill(value) end

---Navigates foreign relationship to 'SkillLine' via 'RequiredSkill'.
---@return dbc.row.v1215.SkillLine|nil
function row:GetRequiredSkill() end

---Creates a related 'SkillLine' row and automatically links 'RequiredSkill'.
---@param data? table
---@return dbc.row.v1215.SkillLine
function row:CreateRelated(data) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetItemLevel(value) end

---Gets the value of field 'AllowableClass'.
---@return integer value
function row:GetAllowableClass() end

---Sets the value of field 'AllowableClass'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetAllowableClass(value) end

---Gets the value of field 'ArtifactID'.
---@return integer value
function row:GetArtifactID() end

---Sets the value of field 'ArtifactID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetArtifactID(value) end

---Navigates foreign relationship to 'Artifact' via 'ArtifactID'.
---@return dbc.row.v1215.Artifact|nil
function row:GetArtifact() end

---Creates a related 'Artifact' row and automatically links 'ArtifactID'.
---@param data? table
---@return dbc.row.v1215.Artifact
function row:CreateRelated(data) end

---Gets the value of field 'SpellWeight'.
---@return integer value
function row:GetSpellWeight() end

---Sets the value of field 'SpellWeight'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetSpellWeight(value) end

---Gets the value of field 'SpellWeightCategory'.
---@return integer value
function row:GetSpellWeightCategory() end

---Sets the value of field 'SpellWeightCategory'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetSpellWeightCategory(value) end

---Gets the value of field 'SocketType'.
---@return integer[] value
function row:GetSocketType() end

---Sets the value of field 'SocketType'.
---@param value integer[]
---@return dbc.row.v1215.ItemSparse self
function row:SetSocketType(value) end

---Gets element at 1-based index in 'SocketType'.
---@param index integer
---@return integer value
function row:GetSocketTypeItem(index) end

---Gets the value of field 'SheatheType'.
---@return integer value
function row:GetSheatheType() end

---Sets the value of field 'SheatheType'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetSheatheType(value) end

---Gets the value of field 'Material'.
---@return integer value
function row:GetMaterial() end

---Sets the value of field 'Material'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetMaterial(value) end

---Navigates foreign relationship to 'Material' via 'Material'.
---@return dbc.row.v1215.Material|nil
function row:GetMaterial() end

---Creates a related 'Material' row and automatically links 'Material'.
---@param data? table
---@return dbc.row.v1215.Material
function row:CreateRelated(data) end

---Gets the value of field 'PageMaterialID'.
---@return integer value
function row:GetPageMaterialID() end

---Sets the value of field 'PageMaterialID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetPageMaterialID(value) end

---Navigates foreign relationship to 'PageTextMaterial' via 'PageMaterialID'.
---@return dbc.row.v1215.PageTextMaterial|nil
function row:GetPageMaterial() end

---Creates a related 'PageTextMaterial' row and automatically links 'PageMaterialID'.
---@param data? table
---@return dbc.row.v1215.PageTextMaterial
function row:CreateRelated(data) end

---Gets the value of field 'Bonding'.
---@return integer value
function row:GetBonding() end

---Sets the value of field 'Bonding'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetBonding(value) end

---Gets the value of field 'DamageType'.
---@return integer value
function row:GetDamageType() end

---Sets the value of field 'DamageType'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetDamageType(value) end

---Gets the value of field 'ContainerSlots'.
---@return integer value
function row:GetContainerSlots() end

---Sets the value of field 'ContainerSlots'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetContainerSlots(value) end

---Gets the value of field 'RequiredPVPMedal'.
---@return integer value
function row:GetRequiredPVPMedal() end

---Sets the value of field 'RequiredPVPMedal'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredPVPMedal(value) end

---Gets the value of field 'RequiredPVPRank'.
---@return integer value
function row:GetRequiredPVPRank() end

---Sets the value of field 'RequiredPVPRank'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredPVPRank(value) end

---Gets the value of field 'RequiredLevel'.
---@return integer value
function row:GetRequiredLevel() end

---Sets the value of field 'RequiredLevel'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetRequiredLevel(value) end

---Gets the value of field 'InventoryType'.
---@return integer value
function row:GetInventoryType() end

---Sets the value of field 'InventoryType'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetInventoryType(value) end

---Gets the value of field 'OverallQualityID'.
---@return integer value
function row:GetOverallQualityID() end

---Sets the value of field 'OverallQualityID'.
---@param value integer
---@return dbc.row.v1215.ItemSparse self
function row:SetOverallQualityID(value) end

---Navigates foreign relationship to 'OverallQuality' via 'OverallQualityID'.
---@return dbc.row.v1215.OverallQuality|nil
function row:GetOverallQuality() end

---Creates a related 'OverallQuality' row and automatically links 'OverallQualityID'.
---@param data? table
---@return dbc.row.v1215.OverallQuality
function row:CreateRelated(data) end

---Table container for ItemSparse (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemSparse : DbcTable
---@field [integer] dbc.row.v1215.ItemSparse
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemSparse
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemSparse|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemSparse
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemSparse>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemSparse[]
function tbl:GetByRelation(foreign_id) end

return {}
