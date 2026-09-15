---@meta
-- Generated LuaLS annotations for ItemLimitCategory (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemLimitCategory in build 3.3.5.12340.
---@class dbc.row.v335.ItemLimitCategory : RowProxy
---@field ID integer
---@field Name_lang string
---@field Quantity integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemLimitCategory self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.ItemLimitCategory self
function row:SetName_lang(value) end

---Gets the value of field 'Quantity'.
---@return integer value
function row:GetQuantity() end

---Sets the value of field 'Quantity'.
---@param value integer
---@return dbc.row.v335.ItemLimitCategory self
function row:SetQuantity(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.ItemLimitCategory self
function row:SetFlags(value) end

---Table container for ItemLimitCategory (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemLimitCategory : DbcTable
---@field [integer] dbc.row.v335.ItemLimitCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemLimitCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemLimitCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemLimitCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemLimitCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemLimitCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
