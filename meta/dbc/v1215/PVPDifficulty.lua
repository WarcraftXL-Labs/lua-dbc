---@meta
-- Generated LuaLS annotations for PVPDifficulty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PVPDifficulty in build 12.1.5.69594.
---@class dbc.row.v1215.PVPDifficulty : RowProxy
---@field ID integer
---@field RangeIndex integer
---@field MinLevel integer
---@field MaxLevel integer
---@field MapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PVPDifficulty self
function row:SetID(value) end

---Gets the value of field 'RangeIndex'.
---@return integer value
function row:GetRangeIndex() end

---Sets the value of field 'RangeIndex'.
---@param value integer
---@return dbc.row.v1215.PVPDifficulty self
function row:SetRangeIndex(value) end

---Gets the value of field 'MinLevel'.
---@return integer value
function row:GetMinLevel() end

---Sets the value of field 'MinLevel'.
---@param value integer
---@return dbc.row.v1215.PVPDifficulty self
function row:SetMinLevel(value) end

---Gets the value of field 'MaxLevel'.
---@return integer value
function row:GetMaxLevel() end

---Sets the value of field 'MaxLevel'.
---@param value integer
---@return dbc.row.v1215.PVPDifficulty self
function row:SetMaxLevel(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.PVPDifficulty self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for PVPDifficulty (Build 12.1.5.69594).
---@class dbc.Table.v1215.PVPDifficulty : DbcTable
---@field [integer] dbc.row.v1215.PVPDifficulty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PVPDifficulty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PVPDifficulty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PVPDifficulty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PVPDifficulty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PVPDifficulty[]
function tbl:GetByRelation(foreign_id) end

return {}
