---@meta
-- Generated LuaLS annotations for ItemRandomSuffix (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ItemRandomSuffix in build 3.3.5.12340.
---@class dbc.row.v335.ItemRandomSuffix : RowProxy
---@field ID integer
---@field Name_lang string
---@field InternalName string
---@field Enchantment integer[]
---@field AllocationPct integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ItemRandomSuffix self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.ItemRandomSuffix self
function row:SetName_lang(value) end

---Gets the value of field 'InternalName'.
---@return string value
function row:GetInternalName() end

---Sets the value of field 'InternalName'.
---@param value string
---@return dbc.row.v335.ItemRandomSuffix self
function row:SetInternalName(value) end

---Gets the value of field 'Enchantment'.
---@return integer[] value
function row:GetEnchantment() end

---Sets the value of field 'Enchantment'.
---@param value integer[]
---@return dbc.row.v335.ItemRandomSuffix self
function row:SetEnchantment(value) end

---Gets element at 1-based index in 'Enchantment'.
---@param index integer
---@return integer value
function row:GetEnchantmentItem(index) end

---Navigates foreign relationship to 'SpellItemEnchantment' via 'Enchantment'.
---@return dbc.row.v335.SpellItemEnchantment|nil
function row:GetEnchantment() end

---Creates a related 'SpellItemEnchantment' row and automatically links 'Enchantment'.
---@param data? table
---@return dbc.row.v335.SpellItemEnchantment
function row:CreateRelated(data) end

---Gets the value of field 'AllocationPct'.
---@return integer[] value
function row:GetAllocationPct() end

---Sets the value of field 'AllocationPct'.
---@param value integer[]
---@return dbc.row.v335.ItemRandomSuffix self
function row:SetAllocationPct(value) end

---Gets element at 1-based index in 'AllocationPct'.
---@param index integer
---@return integer value
function row:GetAllocationPctItem(index) end

---Table container for ItemRandomSuffix (Build 3.3.5.12340).
---@class dbc.Table.v335.ItemRandomSuffix : DbcTable
---@field [integer] dbc.row.v335.ItemRandomSuffix
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ItemRandomSuffix
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ItemRandomSuffix|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ItemRandomSuffix
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ItemRandomSuffix>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ItemRandomSuffix[]
function tbl:GetByRelation(foreign_id) end

return {}
