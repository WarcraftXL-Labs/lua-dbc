---@meta
-- Generated LuaLS annotations for CurvePoint (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CurvePoint in build 12.1.5.69594.
---@class dbc.row.v1215.CurvePoint : RowProxy
---@field Pos number[]
---@field PosPreSquish number[]
---@field ID integer
---@field CurveID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.CurvePoint self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'PosPreSquish'.
---@return number[] value
function row:GetPosPreSquish() end

---Sets the value of field 'PosPreSquish'.
---@param value number[]
---@return dbc.row.v1215.CurvePoint self
function row:SetPosPreSquish(value) end

---Gets element at 1-based index in 'PosPreSquish'.
---@param index integer
---@return number value
function row:GetPosPreSquishItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CurvePoint self
function row:SetID(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.CurvePoint self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CurvePoint self
function row:SetOrderIndex(value) end

---Table container for CurvePoint (Build 12.1.5.69594).
---@class dbc.Table.v1215.CurvePoint : DbcTable
---@field [integer] dbc.row.v1215.CurvePoint
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CurvePoint
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CurvePoint|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CurvePoint
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CurvePoint>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CurvePoint[]
function tbl:GetByRelation(foreign_id) end

return {}
