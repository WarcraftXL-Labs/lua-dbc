---@meta
-- Generated LuaLS annotations for ItemArmorTotal (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemArmorTotal in build 12.1.5.69594.
---@class dbc.row.v1215.ItemArmorTotal : RowProxy
---@field ID integer
---@field ItemLevel integer
---@field Cloth number
---@field Leather number
---@field Mail number
---@field Plate number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemArmorTotal self
function row:SetID(value) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.ItemArmorTotal self
function row:SetItemLevel(value) end

---Gets the value of field 'Cloth'.
---@return number value
function row:GetCloth() end

---Sets the value of field 'Cloth'.
---@param value number
---@return dbc.row.v1215.ItemArmorTotal self
function row:SetCloth(value) end

---Gets the value of field 'Leather'.
---@return number value
function row:GetLeather() end

---Sets the value of field 'Leather'.
---@param value number
---@return dbc.row.v1215.ItemArmorTotal self
function row:SetLeather(value) end

---Gets the value of field 'Mail'.
---@return number value
function row:GetMail() end

---Sets the value of field 'Mail'.
---@param value number
---@return dbc.row.v1215.ItemArmorTotal self
function row:SetMail(value) end

---Gets the value of field 'Plate'.
---@return number value
function row:GetPlate() end

---Sets the value of field 'Plate'.
---@param value number
---@return dbc.row.v1215.ItemArmorTotal self
function row:SetPlate(value) end

---Table container for ItemArmorTotal (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemArmorTotal : DbcTable
---@field [integer] dbc.row.v1215.ItemArmorTotal
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemArmorTotal
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemArmorTotal|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemArmorTotal
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemArmorTotal>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemArmorTotal[]
function tbl:GetByRelation(foreign_id) end

return {}
