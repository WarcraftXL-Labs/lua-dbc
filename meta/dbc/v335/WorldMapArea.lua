---@meta
-- Generated LuaLS annotations for WorldMapArea (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldMapArea in build 3.3.5.12340.
---@class dbc.row.v335.WorldMapArea : RowProxy
---@field ID integer
---@field MapID integer
---@field AreaID integer
---@field AreaName string
---@field LocLeft number
---@field LocRight number
---@field LocTop number
---@field LocBottom number
---@field DisplayMapID integer
---@field DefaultDungeonFloor integer
---@field ParentWorldMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WorldMapArea self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.WorldMapArea self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v335.WorldMapArea self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v335.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v335.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'AreaName'.
---@return string value
function row:GetAreaName() end

---Sets the value of field 'AreaName'.
---@param value string
---@return dbc.row.v335.WorldMapArea self
function row:SetAreaName(value) end

---Gets the value of field 'LocLeft'.
---@return number value
function row:GetLocLeft() end

---Sets the value of field 'LocLeft'.
---@param value number
---@return dbc.row.v335.WorldMapArea self
function row:SetLocLeft(value) end

---Gets the value of field 'LocRight'.
---@return number value
function row:GetLocRight() end

---Sets the value of field 'LocRight'.
---@param value number
---@return dbc.row.v335.WorldMapArea self
function row:SetLocRight(value) end

---Gets the value of field 'LocTop'.
---@return number value
function row:GetLocTop() end

---Sets the value of field 'LocTop'.
---@param value number
---@return dbc.row.v335.WorldMapArea self
function row:SetLocTop(value) end

---Gets the value of field 'LocBottom'.
---@return number value
function row:GetLocBottom() end

---Sets the value of field 'LocBottom'.
---@param value number
---@return dbc.row.v335.WorldMapArea self
function row:SetLocBottom(value) end

---Gets the value of field 'DisplayMapID'.
---@return integer value
function row:GetDisplayMapID() end

---Sets the value of field 'DisplayMapID'.
---@param value integer
---@return dbc.row.v335.WorldMapArea self
function row:SetDisplayMapID(value) end

---Navigates foreign relationship to 'Map' via 'DisplayMapID'.
---@return dbc.row.v335.Map|nil
function row:GetDisplayMap() end

---Creates a related 'Map' row and automatically links 'DisplayMapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'DefaultDungeonFloor'.
---@return integer value
function row:GetDefaultDungeonFloor() end

---Sets the value of field 'DefaultDungeonFloor'.
---@param value integer
---@return dbc.row.v335.WorldMapArea self
function row:SetDefaultDungeonFloor(value) end

---Gets the value of field 'ParentWorldMapID'.
---@return integer value
function row:GetParentWorldMapID() end

---Sets the value of field 'ParentWorldMapID'.
---@param value integer
---@return dbc.row.v335.WorldMapArea self
function row:SetParentWorldMapID(value) end

---Navigates foreign relationship to 'WorldMapArea' via 'ParentWorldMapID'.
---@return dbc.row.v335.WorldMapArea|nil
function row:GetParentWorldMap() end

---Creates a related 'WorldMapArea' row and automatically links 'ParentWorldMapID'.
---@param data? table
---@return dbc.row.v335.WorldMapArea
function row:CreateRelated(data) end

---Table container for WorldMapArea (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldMapArea : DbcTable
---@field [integer] dbc.row.v335.WorldMapArea
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldMapArea
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldMapArea|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldMapArea
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldMapArea>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldMapArea[]
function tbl:GetByRelation(foreign_id) end

return {}
