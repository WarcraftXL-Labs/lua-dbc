---@meta
-- Generated LuaLS annotations for WorldMapTransforms (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of WorldMapTransforms in build 3.3.5.12340.
---@class dbc.row.v335.WorldMapTransforms : RowProxy
---@field ID integer
---@field MapID integer
---@field RegionMin number[]
---@field RegionMax number[]
---@field NewMapID integer
---@field RegionOffset number[]
---@field NewDungeonMapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.WorldMapTransforms self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v335.WorldMapTransforms self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v335.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'RegionMin'.
---@return number[] value
function row:GetRegionMin() end

---Sets the value of field 'RegionMin'.
---@param value number[]
---@return dbc.row.v335.WorldMapTransforms self
function row:SetRegionMin(value) end

---Gets element at 1-based index in 'RegionMin'.
---@param index integer
---@return number value
function row:GetRegionMinItem(index) end

---Gets the value of field 'RegionMax'.
---@return number[] value
function row:GetRegionMax() end

---Sets the value of field 'RegionMax'.
---@param value number[]
---@return dbc.row.v335.WorldMapTransforms self
function row:SetRegionMax(value) end

---Gets element at 1-based index in 'RegionMax'.
---@param index integer
---@return number value
function row:GetRegionMaxItem(index) end

---Gets the value of field 'NewMapID'.
---@return integer value
function row:GetNewMapID() end

---Sets the value of field 'NewMapID'.
---@param value integer
---@return dbc.row.v335.WorldMapTransforms self
function row:SetNewMapID(value) end

---Navigates foreign relationship to 'Map' via 'NewMapID'.
---@return dbc.row.v335.Map|nil
function row:GetNewMap() end

---Creates a related 'Map' row and automatically links 'NewMapID'.
---@param data? table
---@return dbc.row.v335.Map
function row:CreateRelated(data) end

---Gets the value of field 'RegionOffset'.
---@return number[] value
function row:GetRegionOffset() end

---Sets the value of field 'RegionOffset'.
---@param value number[]
---@return dbc.row.v335.WorldMapTransforms self
function row:SetRegionOffset(value) end

---Gets element at 1-based index in 'RegionOffset'.
---@param index integer
---@return number value
function row:GetRegionOffsetItem(index) end

---Gets the value of field 'NewDungeonMapID'.
---@return integer value
function row:GetNewDungeonMapID() end

---Sets the value of field 'NewDungeonMapID'.
---@param value integer
---@return dbc.row.v335.WorldMapTransforms self
function row:SetNewDungeonMapID(value) end

---Navigates foreign relationship to 'DungeonMap' via 'NewDungeonMapID'.
---@return dbc.row.v335.DungeonMap|nil
function row:GetNewDungeonMap() end

---Creates a related 'DungeonMap' row and automatically links 'NewDungeonMapID'.
---@param data? table
---@return dbc.row.v335.DungeonMap
function row:CreateRelated(data) end

---Table container for WorldMapTransforms (Build 3.3.5.12340).
---@class dbc.Table.v335.WorldMapTransforms : DbcTable
---@field [integer] dbc.row.v335.WorldMapTransforms
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.WorldMapTransforms
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.WorldMapTransforms|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.WorldMapTransforms
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.WorldMapTransforms>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.WorldMapTransforms[]
function tbl:GetByRelation(foreign_id) end

return {}
