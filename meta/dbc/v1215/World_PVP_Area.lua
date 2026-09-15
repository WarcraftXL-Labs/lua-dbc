---@meta
-- Generated LuaLS annotations for World_PVP_Area (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of World_PVP_Area in build 12.1.5.69594.
---@class dbc.row.v1215.World_PVP_Area : RowProxy
---@field ID integer
---@field Area_ID integer
---@field Next_time_worldstate integer
---@field Game_time_worldstate integer
---@field Battle_populate_time integer
---@field Min_level integer
---@field Max_level integer
---@field Map_ID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetID(value) end

---Gets the value of field 'Area_ID'.
---@return integer value
function row:GetArea_ID() end

---Sets the value of field 'Area_ID'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetArea_ID(value) end

---Navigates foreign relationship to 'AreaTable' via 'Area_ID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea_() end

---Creates a related 'AreaTable' row and automatically links 'Area_ID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'Next_time_worldstate'.
---@return integer value
function row:GetNext_time_worldstate() end

---Sets the value of field 'Next_time_worldstate'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetNext_time_worldstate(value) end

---Navigates foreign relationship to 'WorldState' via 'Next_time_worldstate'.
---@return dbc.row.v1215.WorldState|nil
function row:GetNext_time_worldstate() end

---Creates a related 'WorldState' row and automatically links 'Next_time_worldstate'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'Game_time_worldstate'.
---@return integer value
function row:GetGame_time_worldstate() end

---Sets the value of field 'Game_time_worldstate'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetGame_time_worldstate(value) end

---Navigates foreign relationship to 'WorldState' via 'Game_time_worldstate'.
---@return dbc.row.v1215.WorldState|nil
function row:GetGame_time_worldstate() end

---Creates a related 'WorldState' row and automatically links 'Game_time_worldstate'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'Battle_populate_time'.
---@return integer value
function row:GetBattle_populate_time() end

---Sets the value of field 'Battle_populate_time'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetBattle_populate_time(value) end

---Gets the value of field 'Min_level'.
---@return integer value
function row:GetMin_level() end

---Sets the value of field 'Min_level'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetMin_level(value) end

---Gets the value of field 'Max_level'.
---@return integer value
function row:GetMax_level() end

---Sets the value of field 'Max_level'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetMax_level(value) end

---Gets the value of field 'Map_ID'.
---@return integer value
function row:GetMap_ID() end

---Sets the value of field 'Map_ID'.
---@param value integer
---@return dbc.row.v1215.World_PVP_Area self
function row:SetMap_ID(value) end

---Navigates foreign relationship to 'Map_' via 'Map_ID'.
---@return dbc.row.v1215.Map_|nil
function row:GetMap_() end

---Creates a related 'Map_' row and automatically links 'Map_ID'.
---@param data? table
---@return dbc.row.v1215.Map_
function row:CreateRelated(data) end

---Table container for World_PVP_Area (Build 12.1.5.69594).
---@class dbc.Table.v1215.World_PVP_Area : DbcTable
---@field [integer] dbc.row.v1215.World_PVP_Area
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.World_PVP_Area
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.World_PVP_Area|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.World_PVP_Area
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.World_PVP_Area>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.World_PVP_Area[]
function tbl:GetByRelation(foreign_id) end

return {}
