---@meta
-- Generated LuaLS annotations for ArmorLocation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArmorLocation in build 12.1.5.69594.
---@class dbc.row.v1215.ArmorLocation : RowProxy
---@field ID integer
---@field Clothmodifier number
---@field Leathermodifier number
---@field Chainmodifier number
---@field Platemodifier number
---@field Modifier number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArmorLocation self
function row:SetID(value) end

---Gets the value of field 'Clothmodifier'.
---@return number value
function row:GetClothmodifier() end

---Sets the value of field 'Clothmodifier'.
---@param value number
---@return dbc.row.v1215.ArmorLocation self
function row:SetClothmodifier(value) end

---Gets the value of field 'Leathermodifier'.
---@return number value
function row:GetLeathermodifier() end

---Sets the value of field 'Leathermodifier'.
---@param value number
---@return dbc.row.v1215.ArmorLocation self
function row:SetLeathermodifier(value) end

---Gets the value of field 'Chainmodifier'.
---@return number value
function row:GetChainmodifier() end

---Sets the value of field 'Chainmodifier'.
---@param value number
---@return dbc.row.v1215.ArmorLocation self
function row:SetChainmodifier(value) end

---Gets the value of field 'Platemodifier'.
---@return number value
function row:GetPlatemodifier() end

---Sets the value of field 'Platemodifier'.
---@param value number
---@return dbc.row.v1215.ArmorLocation self
function row:SetPlatemodifier(value) end

---Gets the value of field 'Modifier'.
---@return number value
function row:GetModifier() end

---Sets the value of field 'Modifier'.
---@param value number
---@return dbc.row.v1215.ArmorLocation self
function row:SetModifier(value) end

---Table container for ArmorLocation (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArmorLocation : DbcTable
---@field [integer] dbc.row.v1215.ArmorLocation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArmorLocation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArmorLocation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArmorLocation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArmorLocation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArmorLocation[]
function tbl:GetByRelation(foreign_id) end

return {}
