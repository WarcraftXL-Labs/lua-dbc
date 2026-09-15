---@meta
-- Generated LuaLS annotations for ItemCurrencyValue (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemCurrencyValue in build 12.1.5.69594.
---@class dbc.row.v1215.ItemCurrencyValue : RowProxy
---@field ID integer
---@field Value integer
---@field CurrencyID integer[]
---@field ItemID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemCurrencyValue self
function row:SetID(value) end

---Gets the value of field 'Value'.
---@return integer value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer
---@return dbc.row.v1215.ItemCurrencyValue self
function row:SetValue(value) end

---Gets the value of field 'CurrencyID'.
---@return integer[] value
function row:GetCurrencyID() end

---Sets the value of field 'CurrencyID'.
---@param value integer[]
---@return dbc.row.v1215.ItemCurrencyValue self
function row:SetCurrencyID(value) end

---Gets element at 1-based index in 'CurrencyID'.
---@param index integer
---@return integer value
function row:GetCurrencyIDItem(index) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrency() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ItemCurrencyValue self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Table container for ItemCurrencyValue (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemCurrencyValue : DbcTable
---@field [integer] dbc.row.v1215.ItemCurrencyValue
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemCurrencyValue
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemCurrencyValue|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemCurrencyValue
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemCurrencyValue>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemCurrencyValue[]
function tbl:GetByRelation(foreign_id) end

return {}
