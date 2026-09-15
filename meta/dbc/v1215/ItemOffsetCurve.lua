---@meta
-- Generated LuaLS annotations for ItemOffsetCurve (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemOffsetCurve in build 12.1.5.69594.
---@class dbc.row.v1215.ItemOffsetCurve : RowProxy
---@field ID integer
---@field CurveID integer
---@field Offset integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemOffsetCurve self
function row:SetID(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.ItemOffsetCurve self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'Offset'.
---@return integer value
function row:GetOffset() end

---Sets the value of field 'Offset'.
---@param value integer
---@return dbc.row.v1215.ItemOffsetCurve self
function row:SetOffset(value) end

---Table container for ItemOffsetCurve (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemOffsetCurve : DbcTable
---@field [integer] dbc.row.v1215.ItemOffsetCurve
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemOffsetCurve
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemOffsetCurve|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemOffsetCurve
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemOffsetCurve>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemOffsetCurve[]
function tbl:GetByRelation(foreign_id) end

return {}
