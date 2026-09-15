---@meta
-- Generated LuaLS annotations for CurrencyTypes (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CurrencyTypes in build 12.1.5.69594.
---@class dbc.row.v1215.CurrencyTypes : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field CategoryID integer
---@field InventoryIconFileID integer
---@field SpellWeight integer
---@field SpellCategory integer
---@field MaxQty integer
---@field MaxEarnablePerWeek integer
---@field Quality integer
---@field FactionID integer
---@field ItemGroupSoundsID integer
---@field XpQuestDifficulty integer Correct if 2 for ID 1566. ConvertToPlayerExperience?
---@field AwardConditionID integer
---@field MaxQtyWorldStateID integer key into data sent by the server
---@field RechargingAmountPerCycle integer
---@field RechargingCycleDurationMS integer
---@field WarbondTransferPercentage number
---@field OrderIndex integer
---@field RecraftReagentCountPercentage number
---@field OrderSource integer CraftingOrderReagentSource enum
---@field MCRCurrencyID integer
---@field Flags integer[] &8: scalar100: divide by 100 when showing

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.CurrencyTypes self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.CurrencyTypes self
function row:SetDescription_lang(value) end

---Gets the value of field 'CategoryID'.
---@return integer value
function row:GetCategoryID() end

---Sets the value of field 'CategoryID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetCategoryID(value) end

---Navigates foreign relationship to 'CurrencyCategory' via 'CategoryID'.
---@return dbc.row.v1215.CurrencyCategory|nil
function row:GetCategory() end

---Creates a related 'CurrencyCategory' row and automatically links 'CategoryID'.
---@param data? table
---@return dbc.row.v1215.CurrencyCategory
function row:CreateRelated(data) end

---Gets the value of field 'InventoryIconFileID'.
---@return integer value
function row:GetInventoryIconFileID() end

---Sets the value of field 'InventoryIconFileID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetInventoryIconFileID(value) end

---Navigates foreign relationship to 'FileData' via 'InventoryIconFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetInventoryIconFile() end

---Creates a related 'FileData' row and automatically links 'InventoryIconFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SpellWeight'.
---@return integer value
function row:GetSpellWeight() end

---Sets the value of field 'SpellWeight'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetSpellWeight(value) end

---Gets the value of field 'SpellCategory'.
---@return integer value
function row:GetSpellCategory() end

---Sets the value of field 'SpellCategory'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetSpellCategory(value) end

---Gets the value of field 'MaxQty'.
---@return integer value
function row:GetMaxQty() end

---Sets the value of field 'MaxQty'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetMaxQty(value) end

---Gets the value of field 'MaxEarnablePerWeek'.
---@return integer value
function row:GetMaxEarnablePerWeek() end

---Sets the value of field 'MaxEarnablePerWeek'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetMaxEarnablePerWeek(value) end

---Gets the value of field 'Quality'.
---@return integer value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetQuality(value) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'FactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'ItemGroupSoundsID'.
---@return integer value
function row:GetItemGroupSoundsID() end

---Sets the value of field 'ItemGroupSoundsID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetItemGroupSoundsID(value) end

---Navigates foreign relationship to 'ItemGroupSounds' via 'ItemGroupSoundsID'.
---@return dbc.row.v1215.ItemGroupSounds|nil
function row:GetItemGroupSounds() end

---Creates a related 'ItemGroupSounds' row and automatically links 'ItemGroupSoundsID'.
---@param data? table
---@return dbc.row.v1215.ItemGroupSounds
function row:CreateRelated(data) end

---Gets the value of field 'XpQuestDifficulty'.
---@return integer value
function row:GetXpQuestDifficulty() end

---Sets the value of field 'XpQuestDifficulty'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetXpQuestDifficulty(value) end

---Gets the value of field 'AwardConditionID'.
---@return integer value
function row:GetAwardConditionID() end

---Sets the value of field 'AwardConditionID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetAwardConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'AwardConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetAwardCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'AwardConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'MaxQtyWorldStateID'.
---@return integer value
function row:GetMaxQtyWorldStateID() end

---Sets the value of field 'MaxQtyWorldStateID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetMaxQtyWorldStateID(value) end

---Navigates foreign relationship to 'MaxQtyWorldState' via 'MaxQtyWorldStateID'.
---@return dbc.row.v1215.MaxQtyWorldState|nil
function row:GetMaxQtyWorldState() end

---Creates a related 'MaxQtyWorldState' row and automatically links 'MaxQtyWorldStateID'.
---@param data? table
---@return dbc.row.v1215.MaxQtyWorldState
function row:CreateRelated(data) end

---Gets the value of field 'RechargingAmountPerCycle'.
---@return integer value
function row:GetRechargingAmountPerCycle() end

---Sets the value of field 'RechargingAmountPerCycle'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetRechargingAmountPerCycle(value) end

---Gets the value of field 'RechargingCycleDurationMS'.
---@return integer value
function row:GetRechargingCycleDurationMS() end

---Sets the value of field 'RechargingCycleDurationMS'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetRechargingCycleDurationMS(value) end

---Gets the value of field 'WarbondTransferPercentage'.
---@return number value
function row:GetWarbondTransferPercentage() end

---Sets the value of field 'WarbondTransferPercentage'.
---@param value number
---@return dbc.row.v1215.CurrencyTypes self
function row:SetWarbondTransferPercentage(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetOrderIndex(value) end

---Gets the value of field 'RecraftReagentCountPercentage'.
---@return number value
function row:GetRecraftReagentCountPercentage() end

---Sets the value of field 'RecraftReagentCountPercentage'.
---@param value number
---@return dbc.row.v1215.CurrencyTypes self
function row:SetRecraftReagentCountPercentage(value) end

---Gets the value of field 'OrderSource'.
---@return integer value
function row:GetOrderSource() end

---Sets the value of field 'OrderSource'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetOrderSource(value) end

---Gets the value of field 'MCRCurrencyID'.
---@return integer value
function row:GetMCRCurrencyID() end

---Sets the value of field 'MCRCurrencyID'.
---@param value integer
---@return dbc.row.v1215.CurrencyTypes self
function row:SetMCRCurrencyID(value) end

---Navigates foreign relationship to 'MCRCurrency' via 'MCRCurrencyID'.
---@return dbc.row.v1215.MCRCurrency|nil
function row:GetMCRCurrency() end

---Creates a related 'MCRCurrency' row and automatically links 'MCRCurrencyID'.
---@param data? table
---@return dbc.row.v1215.MCRCurrency
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.CurrencyTypes self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Table container for CurrencyTypes (Build 12.1.5.69594).
---@class dbc.Table.v1215.CurrencyTypes : DbcTable
---@field [integer] dbc.row.v1215.CurrencyTypes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CurrencyTypes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CurrencyTypes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CurrencyTypes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CurrencyTypes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CurrencyTypes[]
function tbl:GetByRelation(foreign_id) end

return {}
