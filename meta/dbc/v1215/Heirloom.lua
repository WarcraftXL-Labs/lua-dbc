---@meta
-- Generated LuaLS annotations for Heirloom (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Heirloom in build 12.1.5.69594.
---@class dbc.row.v1215.Heirloom : RowProxy
---@field SourceText_lang string
---@field ID integer
---@field ItemID integer
---@field LegacyUpgradedItemID integer
---@field StaticUpgradedItemID integer
---@field SourceTypeEnum integer
---@field Flags integer
---@field LegacyItemID integer
---@field UpgradeItemID integer[]
---@field UpgradeItemBonusListID integer[]

local row = {}

---Gets the value of field 'SourceText_lang'.
---@return string value
function row:GetSourceText_lang() end

---Sets the value of field 'SourceText_lang'.
---@param value string
---@return dbc.row.v1215.Heirloom self
function row:SetSourceText_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Heirloom self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.Heirloom self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'LegacyUpgradedItemID'.
---@return integer value
function row:GetLegacyUpgradedItemID() end

---Sets the value of field 'LegacyUpgradedItemID'.
---@param value integer
---@return dbc.row.v1215.Heirloom self
function row:SetLegacyUpgradedItemID(value) end

---Navigates foreign relationship to 'Item' via 'LegacyUpgradedItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetLegacyUpgradedItem() end

---Creates a related 'Item' row and automatically links 'LegacyUpgradedItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'StaticUpgradedItemID'.
---@return integer value
function row:GetStaticUpgradedItemID() end

---Sets the value of field 'StaticUpgradedItemID'.
---@param value integer
---@return dbc.row.v1215.Heirloom self
function row:SetStaticUpgradedItemID(value) end

---Navigates foreign relationship to 'Item' via 'StaticUpgradedItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetStaticUpgradedItem() end

---Creates a related 'Item' row and automatically links 'StaticUpgradedItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'SourceTypeEnum'.
---@return integer value
function row:GetSourceTypeEnum() end

---Sets the value of field 'SourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.Heirloom self
function row:SetSourceTypeEnum(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Heirloom self
function row:SetFlags(value) end

---Gets the value of field 'LegacyItemID'.
---@return integer value
function row:GetLegacyItemID() end

---Sets the value of field 'LegacyItemID'.
---@param value integer
---@return dbc.row.v1215.Heirloom self
function row:SetLegacyItemID(value) end

---Navigates foreign relationship to 'Item' via 'LegacyItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetLegacyItem() end

---Creates a related 'Item' row and automatically links 'LegacyItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'UpgradeItemID'.
---@return integer[] value
function row:GetUpgradeItemID() end

---Sets the value of field 'UpgradeItemID'.
---@param value integer[]
---@return dbc.row.v1215.Heirloom self
function row:SetUpgradeItemID(value) end

---Gets element at 1-based index in 'UpgradeItemID'.
---@param index integer
---@return integer value
function row:GetUpgradeItemIDItem(index) end

---Navigates foreign relationship to 'Item' via 'UpgradeItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetUpgradeItem() end

---Creates a related 'Item' row and automatically links 'UpgradeItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'UpgradeItemBonusListID'.
---@return integer[] value
function row:GetUpgradeItemBonusListID() end

---Sets the value of field 'UpgradeItemBonusListID'.
---@param value integer[]
---@return dbc.row.v1215.Heirloom self
function row:SetUpgradeItemBonusListID(value) end

---Gets element at 1-based index in 'UpgradeItemBonusListID'.
---@param index integer
---@return integer value
function row:GetUpgradeItemBonusListIDItem(index) end

---Navigates foreign relationship to 'ItemBonusList' via 'UpgradeItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetUpgradeItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'UpgradeItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Table container for Heirloom (Build 12.1.5.69594).
---@class dbc.Table.v1215.Heirloom : DbcTable
---@field [integer] dbc.row.v1215.Heirloom
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Heirloom
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Heirloom|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Heirloom
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Heirloom>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Heirloom[]
function tbl:GetByRelation(foreign_id) end

return {}
