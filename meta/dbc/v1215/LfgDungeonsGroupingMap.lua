---@meta
-- Generated LuaLS annotations for LfgDungeonsGroupingMap (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LfgDungeonsGroupingMap in build 12.1.5.69594.
---@class dbc.row.v1215.LfgDungeonsGroupingMap : RowProxy
---@field ID integer
---@field Random_lfgDungeonsID integer
---@field Group_ID integer
---@field LfgDungeonsID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LfgDungeonsGroupingMap self
function row:SetID(value) end

---Gets the value of field 'Random_lfgDungeonsID'.
---@return integer value
function row:GetRandom_lfgDungeonsID() end

---Sets the value of field 'Random_lfgDungeonsID'.
---@param value integer
---@return dbc.row.v1215.LfgDungeonsGroupingMap self
function row:SetRandom_lfgDungeonsID(value) end

---Navigates foreign relationship to 'LFGDungeons' via 'Random_lfgDungeonsID'.
---@return dbc.row.v1215.LFGDungeons|nil
function row:GetRandom_lfgDungeons() end

---Creates a related 'LFGDungeons' row and automatically links 'Random_lfgDungeonsID'.
---@param data? table
---@return dbc.row.v1215.LFGDungeons
function row:CreateRelated(data) end

---Gets the value of field 'Group_ID'.
---@return integer value
function row:GetGroup_ID() end

---Sets the value of field 'Group_ID'.
---@param value integer
---@return dbc.row.v1215.LfgDungeonsGroupingMap self
function row:SetGroup_ID(value) end

---Navigates foreign relationship to 'Group_' via 'Group_ID'.
---@return dbc.row.v1215.Group_|nil
function row:GetGroup_() end

---Creates a related 'Group_' row and automatically links 'Group_ID'.
---@param data? table
---@return dbc.row.v1215.Group_
function row:CreateRelated(data) end

---Gets the value of field 'LfgDungeonsID'.
---@return integer value
function row:GetLfgDungeonsID() end

---Sets the value of field 'LfgDungeonsID'.
---@param value integer
---@return dbc.row.v1215.LfgDungeonsGroupingMap self
function row:SetLfgDungeonsID(value) end

---Navigates foreign relationship to 'LFGDungeons' via 'LfgDungeonsID'.
---@return dbc.row.v1215.LFGDungeons|nil
function row:GetLfgDungeons() end

---Creates a related 'LFGDungeons' row and automatically links 'LfgDungeonsID'.
---@param data? table
---@return dbc.row.v1215.LFGDungeons
function row:CreateRelated(data) end

---Table container for LfgDungeonsGroupingMap (Build 12.1.5.69594).
---@class dbc.Table.v1215.LfgDungeonsGroupingMap : DbcTable
---@field [integer] dbc.row.v1215.LfgDungeonsGroupingMap
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LfgDungeonsGroupingMap
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LfgDungeonsGroupingMap|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LfgDungeonsGroupingMap
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LfgDungeonsGroupingMap>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LfgDungeonsGroupingMap[]
function tbl:GetByRelation(foreign_id) end

return {}
