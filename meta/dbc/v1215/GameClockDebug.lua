---@meta
-- Generated LuaLS annotations for GameClockDebug (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameClockDebug in build 12.1.5.69594.
---@class dbc.row.v1215.GameClockDebug : RowProxy
---@field ID integer Hardcoded: 1: "Quest Interval (Daily/Weekly)", 2: "Challenge Mode", 3: "PvP", 4: "Global Scheduler", 5: "Game Milestone"
---@field Offset integer If record is present, add offset onto uses of the respecitve clock.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameClockDebug self
function row:SetID(value) end

---Gets the value of field 'Offset'.
---@return integer value
function row:GetOffset() end

---Sets the value of field 'Offset'.
---@param value integer
---@return dbc.row.v1215.GameClockDebug self
function row:SetOffset(value) end

---Table container for GameClockDebug (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameClockDebug : DbcTable
---@field [integer] dbc.row.v1215.GameClockDebug
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameClockDebug
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameClockDebug|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameClockDebug
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameClockDebug>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameClockDebug[]
function tbl:GetByRelation(foreign_id) end

return {}
