---@meta
-- Generated LuaLS annotations for ImportPriceArmor (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ImportPriceArmor in build 12.1.5.69594.
---@class dbc.row.v1215.ImportPriceArmor : RowProxy
---@field ID integer
---@field ClothModifier number
---@field LeatherModifier number
---@field ChainModifier number
---@field PlateModifier number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ImportPriceArmor self
function row:SetID(value) end

---Gets the value of field 'ClothModifier'.
---@return number value
function row:GetClothModifier() end

---Sets the value of field 'ClothModifier'.
---@param value number
---@return dbc.row.v1215.ImportPriceArmor self
function row:SetClothModifier(value) end

---Gets the value of field 'LeatherModifier'.
---@return number value
function row:GetLeatherModifier() end

---Sets the value of field 'LeatherModifier'.
---@param value number
---@return dbc.row.v1215.ImportPriceArmor self
function row:SetLeatherModifier(value) end

---Gets the value of field 'ChainModifier'.
---@return number value
function row:GetChainModifier() end

---Sets the value of field 'ChainModifier'.
---@param value number
---@return dbc.row.v1215.ImportPriceArmor self
function row:SetChainModifier(value) end

---Gets the value of field 'PlateModifier'.
---@return number value
function row:GetPlateModifier() end

---Sets the value of field 'PlateModifier'.
---@param value number
---@return dbc.row.v1215.ImportPriceArmor self
function row:SetPlateModifier(value) end

---Table container for ImportPriceArmor (Build 12.1.5.69594).
---@class dbc.Table.v1215.ImportPriceArmor : DbcTable
---@field [integer] dbc.row.v1215.ImportPriceArmor
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ImportPriceArmor
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ImportPriceArmor|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ImportPriceArmor
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ImportPriceArmor>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ImportPriceArmor[]
function tbl:GetByRelation(foreign_id) end

return {}
