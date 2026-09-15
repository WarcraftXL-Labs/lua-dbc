---@meta
-- Generated LuaLS annotations for OccluderLocation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of OccluderLocation in build 12.1.5.69594.
---@class dbc.row.v1215.OccluderLocation : RowProxy
---@field ID integer
---@field Pos number[]
---@field Rot number[]
---@field MapID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.OccluderLocation self
function row:SetID(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.OccluderLocation self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'Rot'.
---@return number[] value
function row:GetRot() end

---Sets the value of field 'Rot'.
---@param value number[]
---@return dbc.row.v1215.OccluderLocation self
function row:SetRot(value) end

---Gets element at 1-based index in 'Rot'.
---@param index integer
---@return number value
function row:GetRotItem(index) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.OccluderLocation self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Table container for OccluderLocation (Build 12.1.5.69594).
---@class dbc.Table.v1215.OccluderLocation : DbcTable
---@field [integer] dbc.row.v1215.OccluderLocation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.OccluderLocation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.OccluderLocation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.OccluderLocation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.OccluderLocation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.OccluderLocation[]
function tbl:GetByRelation(foreign_id) end

return {}
