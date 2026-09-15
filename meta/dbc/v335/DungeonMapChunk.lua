---@meta
-- Generated LuaLS annotations for DungeonMapChunk (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of DungeonMapChunk in build 3.3.5.12340.
---@class dbc.row.v335.DungeonMapChunk : RowProxy
---@field ID integer
---@field MapID integer
---@field WMOGroupID integer
---@field DungeonMapID integer
---@field MinZ number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.DungeonMapChunk self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.DungeonMapChunk self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'WMOGroupID'.
---@return integer value
function row:GetWMOGroupID() end

---Sets the value of field 'WMOGroupID'.
---@param value integer
---@return dbc.row.v335.DungeonMapChunk self
function row:SetWMOGroupID(value) end

---Navigates foreign relationship to 'WMOAreaTable' via 'WMOGroupID'.
---@return dbc.row.v335.WMOAreaTable|nil
function row:GetWMOGroup() end

---Creates a related 'WMOAreaTable' row and automatically links 'WMOGroupID'.
---@param data? table
---@return dbc.row.v335.WMOAreaTable
function row:CreateRelated(data) end

---Gets the value of field 'DungeonMapID'.
---@return integer value
function row:GetDungeonMapID() end

---Sets the value of field 'DungeonMapID'.
---@param value integer
---@return dbc.row.v335.DungeonMapChunk self
function row:SetDungeonMapID(value) end

---Navigates foreign relationship to 'DungeonMap' via 'DungeonMapID'.
---@return dbc.row.v335.DungeonMap|nil
function row:GetDungeonMap() end

---Creates a related 'DungeonMap' row and automatically links 'DungeonMapID'.
---@param data? table
---@return dbc.row.v335.DungeonMap
function row:CreateRelated(data) end

---Gets the value of field 'MinZ'.
---@return number value
function row:GetMinZ() end

---Sets the value of field 'MinZ'.
---@param value number
---@return dbc.row.v335.DungeonMapChunk self
function row:SetMinZ(value) end

---Table container for DungeonMapChunk (Build 3.3.5.12340).
---@class dbc.Table.v335.DungeonMapChunk : DbcTable
---@field [integer] dbc.row.v335.DungeonMapChunk
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.DungeonMapChunk
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.DungeonMapChunk|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.DungeonMapChunk
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.DungeonMapChunk>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.DungeonMapChunk[]
function tbl:GetByRelation(foreign_id) end

return {}
