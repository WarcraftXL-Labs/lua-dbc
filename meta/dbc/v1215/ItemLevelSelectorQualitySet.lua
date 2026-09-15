---@meta
-- Generated LuaLS annotations for ItemLevelSelectorQualitySet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemLevelSelectorQualitySet in build 12.1.5.69594.
---@class dbc.row.v1215.ItemLevelSelectorQualitySet : RowProxy
---@field ID integer
---@field IlvlRare integer
---@field IlvlEpic integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelectorQualitySet self
function row:SetID(value) end

---Gets the value of field 'IlvlRare'.
---@return integer value
function row:GetIlvlRare() end

---Sets the value of field 'IlvlRare'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelectorQualitySet self
function row:SetIlvlRare(value) end

---Gets the value of field 'IlvlEpic'.
---@return integer value
function row:GetIlvlEpic() end

---Sets the value of field 'IlvlEpic'.
---@param value integer
---@return dbc.row.v1215.ItemLevelSelectorQualitySet self
function row:SetIlvlEpic(value) end

---Table container for ItemLevelSelectorQualitySet (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemLevelSelectorQualitySet : DbcTable
---@field [integer] dbc.row.v1215.ItemLevelSelectorQualitySet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemLevelSelectorQualitySet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelSelectorQualitySet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelSelectorQualitySet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemLevelSelectorQualitySet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemLevelSelectorQualitySet[]
function tbl:GetByRelation(foreign_id) end

return {}
