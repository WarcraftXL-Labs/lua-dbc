---@meta
-- Generated LuaLS annotations for MapLoadingScreen (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapLoadingScreen in build 12.1.5.69594.
---@class dbc.row.v1215.MapLoadingScreen : RowProxy
---@field ID integer
---@field Min number[]
---@field Max number[]
---@field LoadingScreenID integer
---@field OrderIndex integer
---@field MapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapLoadingScreen self
function row:SetID(value) end

---Gets the value of field 'Min'.
---@return number[] value
function row:GetMin() end

---Sets the value of field 'Min'.
---@param value number[]
---@return dbc.row.v1215.MapLoadingScreen self
function row:SetMin(value) end

---Gets element at 1-based index in 'Min'.
---@param index integer
---@return number value
function row:GetMinItem(index) end

---Gets the value of field 'Max'.
---@return number[] value
function row:GetMax() end

---Sets the value of field 'Max'.
---@param value number[]
---@return dbc.row.v1215.MapLoadingScreen self
function row:SetMax(value) end

---Gets element at 1-based index in 'Max'.
---@param index integer
---@return number value
function row:GetMaxItem(index) end

---Gets the value of field 'LoadingScreenID'.
---@return integer value
function row:GetLoadingScreenID() end

---Sets the value of field 'LoadingScreenID'.
---@param value integer
---@return dbc.row.v1215.MapLoadingScreen self
function row:SetLoadingScreenID(value) end

---Navigates foreign relationship to 'LoadingScreens' via 'LoadingScreenID'.
---@return dbc.row.v1215.LoadingScreens|nil
function row:GetLoadingScreen() end

---Creates a related 'LoadingScreens' row and automatically links 'LoadingScreenID'.
---@param data? table
---@return dbc.row.v1215.LoadingScreens
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.MapLoadingScreen self
function row:SetOrderIndex(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.MapLoadingScreen self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for MapLoadingScreen (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapLoadingScreen : DbcTable
---@field [integer] dbc.row.v1215.MapLoadingScreen
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapLoadingScreen
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapLoadingScreen|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapLoadingScreen
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapLoadingScreen>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapLoadingScreen[]
function tbl:GetByRelation(foreign_id) end

return {}
