---@meta
-- Generated LuaLS annotations for ZoneLightPoint (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ZoneLightPoint in build 12.1.5.69594.
---@class dbc.row.v1215.ZoneLightPoint : RowProxy
---@field ID integer
---@field Pos number[]
---@field PointOrder integer
---@field ZoneLightID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ZoneLightPoint self
function row:SetID(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.ZoneLightPoint self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'PointOrder'.
---@return integer value
function row:GetPointOrder() end

---Sets the value of field 'PointOrder'.
---@param value integer
---@return dbc.row.v1215.ZoneLightPoint self
function row:SetPointOrder(value) end

---Gets the value of field 'ZoneLightID'.
---@return integer value
function row:GetZoneLightID() end

---Sets the value of field 'ZoneLightID'.
---@param value integer
---@return dbc.row.v1215.ZoneLightPoint self
function row:SetZoneLightID(value) end

---Navigates foreign relationship to 'ZoneLight' via 'ZoneLightID'.
---@return dbc.row.v1215.ZoneLight|nil
function row:GetZoneLight() end

---Creates a related 'ZoneLight' row and automatically links 'ZoneLightID'.
---@param data? table
---@return dbc.row.v1215.ZoneLight
function row:CreateRelated(data) end

---Table container for ZoneLightPoint (Build 12.1.5.69594).
---@class dbc.Table.v1215.ZoneLightPoint : DbcTable
---@field [integer] dbc.row.v1215.ZoneLightPoint
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ZoneLightPoint
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ZoneLightPoint|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ZoneLightPoint
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ZoneLightPoint>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ZoneLightPoint[]
function tbl:GetByRelation(foreign_id) end

return {}
