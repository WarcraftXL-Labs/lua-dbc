---@meta
-- Generated LuaLS annotations for ItemPriceBase (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemPriceBase in build 12.1.5.69594.
---@class dbc.row.v1215.ItemPriceBase : RowProxy
---@field ID integer
---@field ItemLevel integer
---@field Armor number
---@field Weapon number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemPriceBase self
function row:SetID(value) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemPriceBase self
function row:SetItemLevel(value) end

---Gets the value of field 'Armor'.
---@return number value
function row:GetArmor() end

---Sets the value of field 'Armor'.
---@param value number
---@return dbc.row.v1215.ItemPriceBase self
function row:SetArmor(value) end

---Gets the value of field 'Weapon'.
---@return number value
function row:GetWeapon() end

---Sets the value of field 'Weapon'.
---@param value number
---@return dbc.row.v1215.ItemPriceBase self
function row:SetWeapon(value) end

---Table container for ItemPriceBase (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemPriceBase : DbcTable
---@field [integer] dbc.row.v1215.ItemPriceBase
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemPriceBase
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemPriceBase|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemPriceBase
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemPriceBase>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemPriceBase[]
function tbl:GetByRelation(foreign_id) end

return {}
