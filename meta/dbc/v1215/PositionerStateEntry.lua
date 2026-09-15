---@meta
-- Generated LuaLS annotations for PositionerStateEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PositionerStateEntry in build 12.1.5.69594.
---@class dbc.row.v1215.PositionerStateEntry : RowProxy
---@field ID integer
---@field ParamA number
---@field ParamB number
---@field CurveID integer
---@field SrcValType integer
---@field SrcVal integer
---@field DstValType integer
---@field DstVal integer
---@field EntryType integer
---@field Style integer
---@field SrcType integer
---@field DstType integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetID(value) end

---Gets the value of field 'ParamA'.
---@return number value
function row:GetParamA() end

---Sets the value of field 'ParamA'.
---@param value number
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetParamA(value) end

---Gets the value of field 'ParamB'.
---@return number value
function row:GetParamB() end

---Sets the value of field 'ParamB'.
---@param value number
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetParamB(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Gets the value of field 'SrcValType'.
---@return integer value
function row:GetSrcValType() end

---Sets the value of field 'SrcValType'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetSrcValType(value) end

---Gets the value of field 'SrcVal'.
---@return integer value
function row:GetSrcVal() end

---Sets the value of field 'SrcVal'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetSrcVal(value) end

---Gets the value of field 'DstValType'.
---@return integer value
function row:GetDstValType() end

---Sets the value of field 'DstValType'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetDstValType(value) end

---Gets the value of field 'DstVal'.
---@return integer value
function row:GetDstVal() end

---Sets the value of field 'DstVal'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetDstVal(value) end

---Gets the value of field 'EntryType'.
---@return integer value
function row:GetEntryType() end

---Sets the value of field 'EntryType'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetEntryType(value) end

---Gets the value of field 'Style'.
---@return integer value
function row:GetStyle() end

---Sets the value of field 'Style'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetStyle(value) end

---Gets the value of field 'SrcType'.
---@return integer value
function row:GetSrcType() end

---Sets the value of field 'SrcType'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetSrcType(value) end

---Gets the value of field 'DstType'.
---@return integer value
function row:GetDstType() end

---Sets the value of field 'DstType'.
---@param value integer
---@return dbc.row.v1215.PositionerStateEntry self
function row:SetDstType(value) end

---Table container for PositionerStateEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.PositionerStateEntry : DbcTable
---@field [integer] dbc.row.v1215.PositionerStateEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PositionerStateEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PositionerStateEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PositionerStateEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PositionerStateEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PositionerStateEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
