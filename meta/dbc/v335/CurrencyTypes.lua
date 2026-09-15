---@meta
-- Generated LuaLS annotations for CurrencyTypes (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of CurrencyTypes in build 3.3.5.12340.
---@class dbc.row.v335.CurrencyTypes : RowProxy
---@field ID integer
---@field ItemID integer
---@field CategoryID integer
---@field BitIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.CurrencyTypes self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v335.CurrencyTypes self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v335.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v335.Item
function row:CreateRelated(data) end

---Gets the value of field 'CategoryID'.
---@return integer value
function row:GetCategoryID() end

---Sets the value of field 'CategoryID'.
---@param value integer
---@return dbc.row.v335.CurrencyTypes self
function row:SetCategoryID(value) end

---Navigates foreign relationship to 'CurrencyCategory' via 'CategoryID'.
---@return dbc.row.v335.CurrencyCategory|nil
function row:GetCategory() end

---Creates a related 'CurrencyCategory' row and automatically links 'CategoryID'.
---@param data? table
---@return dbc.row.v335.CurrencyCategory
function row:CreateRelated(data) end

---Gets the value of field 'BitIndex'.
---@return integer value
function row:GetBitIndex() end

---Sets the value of field 'BitIndex'.
---@param value integer
---@return dbc.row.v335.CurrencyTypes self
function row:SetBitIndex(value) end

---Table container for CurrencyTypes (Build 3.3.5.12340).
---@class dbc.Table.v335.CurrencyTypes : DbcTable
---@field [integer] dbc.row.v335.CurrencyTypes
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.CurrencyTypes
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.CurrencyTypes|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.CurrencyTypes
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.CurrencyTypes>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.CurrencyTypes[]
function tbl:GetByRelation(foreign_id) end

return {}
