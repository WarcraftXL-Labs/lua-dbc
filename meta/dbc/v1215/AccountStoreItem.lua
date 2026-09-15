---@meta
-- Generated LuaLS annotations for AccountStoreItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AccountStoreItem in build 12.1.5.69594.
---@class dbc.row.v1215.AccountStoreItem : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field StoreFrontID integer
---@field AccountStoreCategoryID integer
---@field OrderIndex integer
---@field Price integer
---@field CurrencyTypesID integer
---@field Field_11_0_7_57361_008 integer
---@field RefundDuration integer
---@field Field_11_0_7_57361_010 integer
---@field Field_11_0_7_57361_011 integer
---@field SpellID integer
---@field TransmogSetID integer
---@field CreatureDisplayInfoID integer
---@field UiModelSceneID integer
---@field Icon integer
---@field Field_12_0_0_63534_017 integer
---@field Field_12_0_0_63534_018 integer
---@field Field_12_0_0_63534_019 integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.AccountStoreItem self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.AccountStoreItem self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetID(value) end

---Gets the value of field 'StoreFrontID'.
---@return integer value
function row:GetStoreFrontID() end

---Sets the value of field 'StoreFrontID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetStoreFrontID(value) end

---Navigates foreign relationship to 'StoreFront' via 'StoreFrontID'.
---@return dbc.row.v1215.StoreFront|nil
function row:GetStoreFront() end

---Creates a related 'StoreFront' row and automatically links 'StoreFrontID'.
---@param data? table
---@return dbc.row.v1215.StoreFront
function row:CreateRelated(data) end

---Gets the value of field 'AccountStoreCategoryID'.
---@return integer value
function row:GetAccountStoreCategoryID() end

---Sets the value of field 'AccountStoreCategoryID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetAccountStoreCategoryID(value) end

---Navigates foreign relationship to 'AccountStoreCategory' via 'AccountStoreCategoryID'.
---@return dbc.row.v1215.AccountStoreCategory|nil
function row:GetAccountStoreCategory() end

---Creates a related 'AccountStoreCategory' row and automatically links 'AccountStoreCategoryID'.
---@param data? table
---@return dbc.row.v1215.AccountStoreCategory
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetOrderIndex(value) end

---Gets the value of field 'Price'.
---@return integer value
function row:GetPrice() end

---Sets the value of field 'Price'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetPrice(value) end

---Gets the value of field 'CurrencyTypesID'.
---@return integer value
function row:GetCurrencyTypesID() end

---Sets the value of field 'CurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_7_57361_008'.
---@return integer value
function row:GetField_11_0_7_57361_008() end

---Sets the value of field 'Field_11_0_7_57361_008'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetField_11_0_7_57361_008(value) end

---Gets the value of field 'RefundDuration'.
---@return integer value
function row:GetRefundDuration() end

---Sets the value of field 'RefundDuration'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetRefundDuration(value) end

---Gets the value of field 'Field_11_0_7_57361_010'.
---@return integer value
function row:GetField_11_0_7_57361_010() end

---Sets the value of field 'Field_11_0_7_57361_010'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetField_11_0_7_57361_010(value) end

---Gets the value of field 'Field_11_0_7_57361_011'.
---@return integer value
function row:GetField_11_0_7_57361_011() end

---Sets the value of field 'Field_11_0_7_57361_011'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetField_11_0_7_57361_011(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'TransmogSetID'.
---@return integer value
function row:GetTransmogSetID() end

---Sets the value of field 'TransmogSetID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetTransmogSetID(value) end

---Navigates foreign relationship to 'TransmogSet' via 'TransmogSetID'.
---@return dbc.row.v1215.TransmogSet|nil
function row:GetTransmogSet() end

---Creates a related 'TransmogSet' row and automatically links 'TransmogSetID'.
---@param data? table
---@return dbc.row.v1215.TransmogSet
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetIcon(value) end

---Navigates foreign relationship to 'FileData' via 'Icon'.
---@return dbc.row.v1215.FileData|nil
function row:GetIcon() end

---Creates a related 'FileData' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_017'.
---@return integer value
function row:GetField_12_0_0_63534_017() end

---Sets the value of field 'Field_12_0_0_63534_017'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetField_12_0_0_63534_017(value) end

---Gets the value of field 'Field_12_0_0_63534_018'.
---@return integer value
function row:GetField_12_0_0_63534_018() end

---Sets the value of field 'Field_12_0_0_63534_018'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetField_12_0_0_63534_018(value) end

---Gets the value of field 'Field_12_0_0_63534_019'.
---@return integer value
function row:GetField_12_0_0_63534_019() end

---Sets the value of field 'Field_12_0_0_63534_019'.
---@param value integer
---@return dbc.row.v1215.AccountStoreItem self
function row:SetField_12_0_0_63534_019(value) end

---Table container for AccountStoreItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.AccountStoreItem : DbcTable
---@field [integer] dbc.row.v1215.AccountStoreItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AccountStoreItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AccountStoreItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AccountStoreItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AccountStoreItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AccountStoreItem[]
function tbl:GetByRelation(foreign_id) end

return {}
