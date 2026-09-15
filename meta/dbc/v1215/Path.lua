---@meta
-- Generated LuaLS annotations for Path (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Path in build 12.1.5.69594.
---@class dbc.row.v1215.Path : RowProxy
---@field ID integer
---@field Type integer
---@field SplineType integer
---@field Red integer
---@field Green integer
---@field Blue integer
---@field Alpha integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetType(value) end

---Gets the value of field 'SplineType'.
---@return integer value
function row:GetSplineType() end

---Sets the value of field 'SplineType'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetSplineType(value) end

---Gets the value of field 'Red'.
---@return integer value
function row:GetRed() end

---Sets the value of field 'Red'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetRed(value) end

---Gets the value of field 'Green'.
---@return integer value
function row:GetGreen() end

---Sets the value of field 'Green'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetGreen(value) end

---Gets the value of field 'Blue'.
---@return integer value
function row:GetBlue() end

---Sets the value of field 'Blue'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetBlue(value) end

---Gets the value of field 'Alpha'.
---@return integer value
function row:GetAlpha() end

---Sets the value of field 'Alpha'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetAlpha(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Path self
function row:SetFlags(value) end

---Table container for Path (Build 12.1.5.69594).
---@class dbc.Table.v1215.Path : DbcTable
---@field [integer] dbc.row.v1215.Path
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Path
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Path|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Path
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Path>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Path[]
function tbl:GetByRelation(foreign_id) end

return {}
