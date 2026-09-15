---@meta
-- Generated LuaLS annotations for ItemBonusList (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusList in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusList : RowProxy
---@field ID integer
---@field Flags integer 1: unused in 8.3.0.32414, 2: , 4: , 8: has LevelDelta, 16: , 32: has WarforgeLevelDelta, 64:

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusList self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemBonusList self
function row:SetFlags(value) end

---Table container for ItemBonusList (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusList : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusList
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusList
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusList|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusList
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusList>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusList[]
function tbl:GetByRelation(foreign_id) end

return {}
