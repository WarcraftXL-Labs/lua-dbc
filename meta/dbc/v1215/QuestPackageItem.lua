---@meta
-- Generated LuaLS annotations for QuestPackageItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestPackageItem in build 12.1.5.69594.
---@class dbc.row.v1215.QuestPackageItem : RowProxy
---@field ID integer
---@field PackageID integer
---@field ItemID integer
---@field ItemQuantity integer
---@field DisplayType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestPackageItem self
function row:SetID(value) end

---Gets the value of field 'PackageID'.
---@return integer value
function row:GetPackageID() end

---Sets the value of field 'PackageID'.
---@param value integer
---@return dbc.row.v1215.QuestPackageItem self
function row:SetPackageID(value) end

---Navigates foreign relationship to 'Package' via 'PackageID'.
---@return dbc.row.v1215.Package|nil
function row:GetPackage() end

---Creates a related 'Package' row and automatically links 'PackageID'.
---@param data? table
---@return dbc.row.v1215.Package
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.QuestPackageItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ItemQuantity'.
---@return integer value
function row:GetItemQuantity() end

---Sets the value of field 'ItemQuantity'.
---@param value integer
---@return dbc.row.v1215.QuestPackageItem self
function row:SetItemQuantity(value) end

---Gets the value of field 'DisplayType'.
---@return integer value
function row:GetDisplayType() end

---Sets the value of field 'DisplayType'.
---@param value integer
---@return dbc.row.v1215.QuestPackageItem self
function row:SetDisplayType(value) end

---Table container for QuestPackageItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestPackageItem : DbcTable
---@field [integer] dbc.row.v1215.QuestPackageItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestPackageItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestPackageItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestPackageItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestPackageItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestPackageItem[]
function tbl:GetByRelation(foreign_id) end

return {}
