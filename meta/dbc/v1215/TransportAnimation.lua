---@meta
-- Generated LuaLS annotations for TransportAnimation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransportAnimation in build 12.1.5.69594.
---@class dbc.row.v1215.TransportAnimation : RowProxy
---@field ID integer
---@field Pos number[]
---@field SequenceID integer
---@field TimeIndex integer
---@field TransportID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransportAnimation self
function row:SetID(value) end

---Gets the value of field 'Pos'.
---@return number[] value
function row:GetPos() end

---Sets the value of field 'Pos'.
---@param value number[]
---@return dbc.row.v1215.TransportAnimation self
function row:SetPos(value) end

---Gets element at 1-based index in 'Pos'.
---@param index integer
---@return number value
function row:GetPosItem(index) end

---Gets the value of field 'SequenceID'.
---@return integer value
function row:GetSequenceID() end

---Sets the value of field 'SequenceID'.
---@param value integer
---@return dbc.row.v1215.TransportAnimation self
function row:SetSequenceID(value) end

---Navigates foreign relationship to 'Sequence' via 'SequenceID'.
---@return dbc.row.v1215.Sequence|nil
function row:GetSequence() end

---Creates a related 'Sequence' row and automatically links 'SequenceID'.
---@param data? table
---@return dbc.row.v1215.Sequence
function row:CreateRelated(data) end

---Gets the value of field 'TimeIndex'.
---@return integer value
function row:GetTimeIndex() end

---Sets the value of field 'TimeIndex'.
---@param value integer
---@return dbc.row.v1215.TransportAnimation self
function row:SetTimeIndex(value) end

---Gets the value of field 'TransportID'.
---@return integer value
function row:GetTransportID() end

---Sets the value of field 'TransportID'.
---@param value integer
---@return dbc.row.v1215.TransportAnimation self
function row:SetTransportID(value) end

---Navigates foreign relationship to 'Transport' via 'TransportID'.
---@return dbc.row.v1215.Transport|nil
function row:GetTransport() end

---Creates a related 'Transport' row and automatically links 'TransportID'.
---@param data? table
---@return dbc.row.v1215.Transport
function row:CreateRelated(data) end

---Table container for TransportAnimation (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransportAnimation : DbcTable
---@field [integer] dbc.row.v1215.TransportAnimation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransportAnimation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransportAnimation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransportAnimation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransportAnimation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransportAnimation[]
function tbl:GetByRelation(foreign_id) end

return {}
