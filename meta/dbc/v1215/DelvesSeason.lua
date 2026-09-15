---@meta
-- Generated LuaLS annotations for DelvesSeason (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DelvesSeason in build 12.1.5.69594.
---@class dbc.row.v1215.DelvesSeason : RowProxy
---@field ID integer
---@field FactionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DelvesSeason self
function row:SetID(value) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.DelvesSeason self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'FactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Table container for DelvesSeason (Build 12.1.5.69594).
---@class dbc.Table.v1215.DelvesSeason : DbcTable
---@field [integer] dbc.row.v1215.DelvesSeason
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DelvesSeason
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DelvesSeason|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DelvesSeason
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DelvesSeason>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DelvesSeason[]
function tbl:GetByRelation(foreign_id) end

return {}
