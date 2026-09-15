---@meta
-- Generated LuaLS annotations for AccountStoreCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AccountStoreCategory in build 12.1.5.69594.
---@class dbc.row.v1215.AccountStoreCategory : RowProxy
---@field Name_lang string
---@field ID integer
---@field StoreFrontID integer
---@field OrderIndex integer
---@field Icon integer
---@field Field_11_0_7_57361_005 integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.AccountStoreCategory self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreCategory self
function row:SetID(value) end

---Gets the value of field 'StoreFrontID'.
---@return integer value
function row:GetStoreFrontID() end

---Sets the value of field 'StoreFrontID'.
---@param value integer
---@return dbc.row.v1215.AccountStoreCategory self
function row:SetStoreFrontID(value) end

---Navigates foreign relationship to 'StoreFront' via 'StoreFrontID'.
---@return dbc.row.v1215.StoreFront|nil
function row:GetStoreFront() end

---Creates a related 'StoreFront' row and automatically links 'StoreFrontID'.
---@param data? table
---@return dbc.row.v1215.StoreFront
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.AccountStoreCategory self
function row:SetOrderIndex(value) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.AccountStoreCategory self
function row:SetIcon(value) end

---Navigates foreign relationship to 'FileData' via 'Icon'.
---@return dbc.row.v1215.FileData|nil
function row:GetIcon() end

---Creates a related 'FileData' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_7_57361_005'.
---@return integer value
function row:GetField_11_0_7_57361_005() end

---Sets the value of field 'Field_11_0_7_57361_005'.
---@param value integer
---@return dbc.row.v1215.AccountStoreCategory self
function row:SetField_11_0_7_57361_005(value) end

---Table container for AccountStoreCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.AccountStoreCategory : DbcTable
---@field [integer] dbc.row.v1215.AccountStoreCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AccountStoreCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AccountStoreCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AccountStoreCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AccountStoreCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AccountStoreCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
