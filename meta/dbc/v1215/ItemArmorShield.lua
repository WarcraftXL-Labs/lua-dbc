---@meta
-- Generated LuaLS annotations for ItemArmorShield (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemArmorShield in build 12.1.5.69594.
---@class dbc.row.v1215.ItemArmorShield : RowProxy
---@field ID integer
---@field Quality number[]
---@field ItemLevel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemArmorShield self
function row:SetID(value) end

---Gets the value of field 'Quality'.
---@return number[] value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value number[]
---@return dbc.row.v1215.ItemArmorShield self
function row:SetQuality(value) end

---Gets element at 1-based index in 'Quality'.
---@param index integer
---@return number value
function row:GetQualityItem(index) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemArmorShield self
function row:SetItemLevel(value) end

---Table container for ItemArmorShield (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemArmorShield : DbcTable
---@field [integer] dbc.row.v1215.ItemArmorShield
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemArmorShield
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemArmorShield|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemArmorShield
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemArmorShield>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemArmorShield[]
function tbl:GetByRelation(foreign_id) end

return {}
