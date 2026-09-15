---@meta
-- Generated LuaLS annotations for MapDifficulty (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of MapDifficulty in build 3.3.5.12340.
---@class dbc.row.v335.MapDifficulty : RowProxy
---@field ID integer
---@field MapID integer
---@field Difficulty integer
---@field Message_lang string
---@field RaidDuration integer
---@field MaxPlayers integer
---@field Difficultystring string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.MapDifficulty self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.MapDifficulty self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'Difficulty'.
---@return integer value
function row:GetDifficulty() end

---Sets the value of field 'Difficulty'.
---@param value integer
---@return dbc.row.v335.MapDifficulty self
function row:SetDifficulty(value) end

---Gets the value of field 'Message_lang'.
---@return string value
function row:GetMessage_lang() end

---Sets the value of field 'Message_lang'.
---@param value string
---@return dbc.row.v335.MapDifficulty self
function row:SetMessage_lang(value) end

---Gets the value of field 'RaidDuration'.
---@return integer value
function row:GetRaidDuration() end

---Sets the value of field 'RaidDuration'.
---@param value integer
---@return dbc.row.v335.MapDifficulty self
function row:SetRaidDuration(value) end

---Gets the value of field 'MaxPlayers'.
---@return integer value
function row:GetMaxPlayers() end

---Sets the value of field 'MaxPlayers'.
---@param value integer
---@return dbc.row.v335.MapDifficulty self
function row:SetMaxPlayers(value) end

---Gets the value of field 'Difficultystring'.
---@return string value
function row:GetDifficultystring() end

---Sets the value of field 'Difficultystring'.
---@param value string
---@return dbc.row.v335.MapDifficulty self
function row:SetDifficultystring(value) end

---Table container for MapDifficulty (Build 3.3.5.12340).
---@class dbc.Table.v335.MapDifficulty : DbcTable
---@field [integer] dbc.row.v335.MapDifficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.MapDifficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.MapDifficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.MapDifficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.MapDifficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.MapDifficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
