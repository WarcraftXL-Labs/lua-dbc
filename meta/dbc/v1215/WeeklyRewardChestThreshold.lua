---@meta
-- Generated LuaLS annotations for WeeklyRewardChestThreshold (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WeeklyRewardChestThreshold in build 12.1.5.69594.
---@class dbc.row.v1215.WeeklyRewardChestThreshold : RowProxy
---@field ID integer
---@field Type integer lua WeeklyRewardChestThresholdType: 0: None, 1: MythicPlus (#completed), 2: RankedPVP (conquest points), 3: Raid (bosses), 4: AlsoReceive, 5: Concession
---@field Threshold integer prior to 34972, this column was hardcoded: by type and index: 1: [1, 5, 15], 2: [100, 150, 250], 3: [3, 7, 10]
---@field Index integer for some reason, these are not unique. It appears that the *last* entry is used in game.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WeeklyRewardChestThreshold self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.WeeklyRewardChestThreshold self
function row:SetType(value) end

---Gets the value of field 'Threshold'.
---@return integer value
function row:GetThreshold() end

---Sets the value of field 'Threshold'.
---@param value integer
---@return dbc.row.v1215.WeeklyRewardChestThreshold self
function row:SetThreshold(value) end

---Gets the value of field 'Index'.
---@return integer value
function row:GetIndex() end

---Sets the value of field 'Index'.
---@param value integer
---@return dbc.row.v1215.WeeklyRewardChestThreshold self
function row:SetIndex(value) end

---Table container for WeeklyRewardChestThreshold (Build 12.1.5.69594).
---@class dbc.Table.v1215.WeeklyRewardChestThreshold : DbcTable
---@field [integer] dbc.row.v1215.WeeklyRewardChestThreshold
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WeeklyRewardChestThreshold
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WeeklyRewardChestThreshold|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WeeklyRewardChestThreshold
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WeeklyRewardChestThreshold>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WeeklyRewardChestThreshold[]
function tbl:GetByRelation(foreign_id) end

return {}
