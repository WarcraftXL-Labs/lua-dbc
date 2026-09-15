---@meta
-- Generated LuaLS annotations for BattlemasterListXMap (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BattlemasterListXMap in build 12.1.5.69594.
---@class dbc.row.v1215.BattlemasterListXMap : RowProxy
---@field ID integer
---@field MapID integer
---@field BattlemasterListID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BattlemasterListXMap self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.BattlemasterListXMap self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'BattlemasterListID'.
---@return integer value
function row:GetBattlemasterListID() end

---Sets the value of field 'BattlemasterListID'.
---@param value integer
---@return dbc.row.v1215.BattlemasterListXMap self
function row:SetBattlemasterListID(value) end

---Navigates foreign relationship to 'BattlemasterList' via 'BattlemasterListID'.
---@return dbc.row.v1215.BattlemasterList|nil
function row:GetBattlemasterList() end

---Creates a related 'BattlemasterList' row and automatically links 'BattlemasterListID'.
---@param data? table
---@return dbc.row.v1215.BattlemasterList
function row:CreateRelated(data) end

---Table container for BattlemasterListXMap (Build 12.1.5.69594).
---@class dbc.Table.v1215.BattlemasterListXMap : DbcTable
---@field [integer] dbc.row.v1215.BattlemasterListXMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BattlemasterListXMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BattlemasterListXMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BattlemasterListXMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BattlemasterListXMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BattlemasterListXMap[]
function tbl:GetByRelation(foreign_id) end

return {}
