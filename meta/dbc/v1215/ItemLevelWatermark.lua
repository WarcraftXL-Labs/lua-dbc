---@meta
-- Generated LuaLS annotations for ItemLevelWatermark (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemLevelWatermark in build 12.1.5.69594.
---@class dbc.row.v1215.ItemLevelWatermark : RowProxy
---@field ID integer
---@field Slot integer
---@field PlayerDataElementAccountID integer
---@field TimeRunningSeasonID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelWatermark self
function row:SetID(value) end

---Gets the value of field 'Slot'.
---@return integer value
function row:GetSlot() end

---Sets the value of field 'Slot'.
---@param value integer
---@return dbc.row.v1215.ItemLevelWatermark self
function row:SetSlot(value) end

---Gets the value of field 'PlayerDataElementAccountID'.
---@return integer value
function row:GetPlayerDataElementAccountID() end

---Sets the value of field 'PlayerDataElementAccountID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelWatermark self
function row:SetPlayerDataElementAccountID(value) end

---Navigates foreign relationship to 'PlayerDataElementAccount' via 'PlayerDataElementAccountID'.
---@return dbc.row.v1215.PlayerDataElementAccount|nil
function row:GetPlayerDataElementAccount() end

---Creates a related 'PlayerDataElementAccount' row and automatically links 'PlayerDataElementAccountID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataElementAccount
function row:CreateRelated(data) end

---Gets the value of field 'TimeRunningSeasonID'.
---@return integer value
function row:GetTimeRunningSeasonID() end

---Sets the value of field 'TimeRunningSeasonID'.
---@param value integer
---@return dbc.row.v1215.ItemLevelWatermark self
function row:SetTimeRunningSeasonID(value) end

---Navigates foreign relationship to 'TimeRunningSeason' via 'TimeRunningSeasonID'.
---@return dbc.row.v1215.TimeRunningSeason|nil
function row:GetTimeRunningSeason() end

---Creates a related 'TimeRunningSeason' row and automatically links 'TimeRunningSeasonID'.
---@param data? table
---@return dbc.row.v1215.TimeRunningSeason
function row:CreateRelated(data) end

---Table container for ItemLevelWatermark (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemLevelWatermark : DbcTable
---@field [integer] dbc.row.v1215.ItemLevelWatermark
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemLevelWatermark
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelWatermark|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemLevelWatermark
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemLevelWatermark>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemLevelWatermark[]
function tbl:GetByRelation(foreign_id) end

return {}
