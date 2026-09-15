---@meta
-- Generated LuaLS annotations for ItemBonusListWarforgeLevelDelta (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemBonusListWarforgeLevelDelta in build 12.1.5.69594.
---@class dbc.row.v1215.ItemBonusListWarforgeLevelDelta : RowProxy
---@field ItemLevelDelta integer
---@field ID integer

local row = {}

---Gets the value of field 'ItemLevelDelta'.
---@return integer value
function row:GetItemLevelDelta() end

---Sets the value of field 'ItemLevelDelta'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListWarforgeLevelDelta self
function row:SetItemLevelDelta(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemBonusListWarforgeLevelDelta self
function row:SetID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetID() end

---Creates a related 'ItemBonusList' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Table container for ItemBonusListWarforgeLevelDelta (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemBonusListWarforgeLevelDelta : DbcTable
---@field [integer] dbc.row.v1215.ItemBonusListWarforgeLevelDelta
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemBonusListWarforgeLevelDelta
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusListWarforgeLevelDelta|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemBonusListWarforgeLevelDelta
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemBonusListWarforgeLevelDelta>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemBonusListWarforgeLevelDelta[]
function tbl:GetByRelation(foreign_id) end

return {}
