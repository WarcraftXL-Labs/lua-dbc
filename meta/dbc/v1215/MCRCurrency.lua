---@meta
-- Generated LuaLS annotations for MCRCurrency (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MCRCurrency in build 12.1.5.69594.
---@class dbc.row.v1215.MCRCurrency : RowProxy
---@field ID integer
---@field Description_lang string
---@field ModifiedCraftingCategoryID integer
---@field ItemBonusTreeID integer
---@field Field_12_0_0_64124_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MCRCurrency self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.MCRCurrency self
function row:SetDescription_lang(value) end

---Gets the value of field 'ModifiedCraftingCategoryID'.
---@return integer value
function row:GetModifiedCraftingCategoryID() end

---Sets the value of field 'ModifiedCraftingCategoryID'.
---@param value integer
---@return dbc.row.v1215.MCRCurrency self
function row:SetModifiedCraftingCategoryID(value) end

---Navigates foreign relationship to 'ModifiedCraftingCategory' via 'ModifiedCraftingCategoryID'.
---@return dbc.row.v1215.ModifiedCraftingCategory|nil
function row:GetModifiedCraftingCategory() end

---Creates a related 'ModifiedCraftingCategory' row and automatically links 'ModifiedCraftingCategoryID'.
---@param data? table
---@return dbc.row.v1215.ModifiedCraftingCategory
function row:CreateRelated(data) end

---Gets the value of field 'ItemBonusTreeID'.
---@return integer value
function row:GetItemBonusTreeID() end

---Sets the value of field 'ItemBonusTreeID'.
---@param value integer
---@return dbc.row.v1215.MCRCurrency self
function row:SetItemBonusTreeID(value) end

---Navigates foreign relationship to 'ItemBonusTree' via 'ItemBonusTreeID'.
---@return dbc.row.v1215.ItemBonusTree|nil
function row:GetItemBonusTree() end

---Creates a related 'ItemBonusTree' row and automatically links 'ItemBonusTreeID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusTree
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_64124_003'.
---@return integer value
function row:GetField_12_0_0_64124_003() end

---Sets the value of field 'Field_12_0_0_64124_003'.
---@param value integer
---@return dbc.row.v1215.MCRCurrency self
function row:SetField_12_0_0_64124_003(value) end

---Table container for MCRCurrency (Build 12.1.5.69594).
---@class dbc.Table.v1215.MCRCurrency : DbcTable
---@field [integer] dbc.row.v1215.MCRCurrency
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MCRCurrency
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MCRCurrency|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MCRCurrency
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MCRCurrency>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MCRCurrency[]
function tbl:GetByRelation(foreign_id) end

return {}
