---@meta
-- Generated LuaLS annotations for AzeriteLevelInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeriteLevelInfo in build 12.1.5.69594.
---@class dbc.row.v1215.AzeriteLevelInfo : RowProxy
---@field ID integer
---@field LevelXP integer
---@field TotalLevelXP integer
---@field ItemLevel integer take difference between base heart ilvl and this col, look up in ItemBonusListLevelDelta for bonus id

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeriteLevelInfo self
function row:SetID(value) end

---Gets the value of field 'LevelXP'.
---@return integer value
function row:GetLevelXP() end

---Sets the value of field 'LevelXP'.
---@param value integer
---@return dbc.row.v1215.AzeriteLevelInfo self
function row:SetLevelXP(value) end

---Gets the value of field 'TotalLevelXP'.
---@return integer value
function row:GetTotalLevelXP() end

---Sets the value of field 'TotalLevelXP'.
---@param value integer
---@return dbc.row.v1215.AzeriteLevelInfo self
function row:SetTotalLevelXP(value) end

---Gets the value of field 'ItemLevel'.
---@return integer value
function row:GetItemLevel() end

---Sets the value of field 'ItemLevel'.
---@param value integer
---@return dbc.row.v1215.AzeriteLevelInfo self
function row:SetItemLevel(value) end

---Table container for AzeriteLevelInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeriteLevelInfo : DbcTable
---@field [integer] dbc.row.v1215.AzeriteLevelInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeriteLevelInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteLevelInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeriteLevelInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeriteLevelInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeriteLevelInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
