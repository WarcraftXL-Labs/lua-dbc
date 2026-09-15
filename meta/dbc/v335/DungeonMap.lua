---@meta
-- Generated LuaLS annotations for DungeonMap (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of DungeonMap in build 3.3.5.12340.
---@class dbc.row.v335.DungeonMap : RowProxy
---@field ID integer
---@field MapID integer
---@field FloorIndex integer
---@field MinX number
---@field MaxX number
---@field MinY number
---@field MaxY number
---@field ParentWorldMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.DungeonMap self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.DungeonMap self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'FloorIndex'.
---@return integer value
function row:GetFloorIndex() end

---Sets the value of field 'FloorIndex'.
---@param value integer
---@return dbc.row.v335.DungeonMap self
function row:SetFloorIndex(value) end

---Gets the value of field 'MinX'.
---@return number value
function row:GetMinX() end

---Sets the value of field 'MinX'.
---@param value number
---@return dbc.row.v335.DungeonMap self
function row:SetMinX(value) end

---Gets the value of field 'MaxX'.
---@return number value
function row:GetMaxX() end

---Sets the value of field 'MaxX'.
---@param value number
---@return dbc.row.v335.DungeonMap self
function row:SetMaxX(value) end

---Gets the value of field 'MinY'.
---@return number value
function row:GetMinY() end

---Sets the value of field 'MinY'.
---@param value number
---@return dbc.row.v335.DungeonMap self
function row:SetMinY(value) end

---Gets the value of field 'MaxY'.
---@return number value
function row:GetMaxY() end

---Sets the value of field 'MaxY'.
---@param value number
---@return dbc.row.v335.DungeonMap self
function row:SetMaxY(value) end

---Gets the value of field 'ParentWorldMapID'.
---@return integer value
function row:GetParentWorldMapID() end

---Sets the value of field 'ParentWorldMapID'.
---@param value integer
---@return dbc.row.v335.DungeonMap self
function row:SetParentWorldMapID(value) end

---Navigates foreign relationship to 'WorldMapArea' via 'ParentWorldMapID'.
---@return dbc.row.v335.WorldMapArea|nil
function row:GetParentWorldMap() end

---Creates a related 'WorldMapArea' row and automatically links 'ParentWorldMapID'.
---@param data? table
---@return dbc.row.v335.WorldMapArea
function row:CreateRelated(data) end

---Table container for DungeonMap (Build 3.3.5.12340).
---@class dbc.Table.v335.DungeonMap : DbcTable
---@field [integer] dbc.row.v335.DungeonMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.DungeonMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.DungeonMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.DungeonMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.DungeonMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.DungeonMap[]
function tbl:GetByRelation(foreign_id) end

return {}
