---@meta
-- Generated LuaLS annotations for PowerDisplay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PowerDisplay in build 12.1.5.69594.
---@class dbc.row.v1215.PowerDisplay : RowProxy
---@field ID integer
---@field GlobalStringBaseTag string
---@field ActualType integer
---@field Red integer
---@field Green integer
---@field Blue integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PowerDisplay self
function row:SetID(value) end

---Gets the value of field 'GlobalStringBaseTag'.
---@return string value
function row:GetGlobalStringBaseTag() end

---Sets the value of field 'GlobalStringBaseTag'.
---@param value string
---@return dbc.row.v1215.PowerDisplay self
function row:SetGlobalStringBaseTag(value) end

---Gets the value of field 'ActualType'.
---@return integer value
function row:GetActualType() end

---Sets the value of field 'ActualType'.
---@param value integer
---@return dbc.row.v1215.PowerDisplay self
function row:SetActualType(value) end

---Gets the value of field 'Red'.
---@return integer value
function row:GetRed() end

---Sets the value of field 'Red'.
---@param value integer
---@return dbc.row.v1215.PowerDisplay self
function row:SetRed(value) end

---Gets the value of field 'Green'.
---@return integer value
function row:GetGreen() end

---Sets the value of field 'Green'.
---@param value integer
---@return dbc.row.v1215.PowerDisplay self
function row:SetGreen(value) end

---Gets the value of field 'Blue'.
---@return integer value
function row:GetBlue() end

---Sets the value of field 'Blue'.
---@param value integer
---@return dbc.row.v1215.PowerDisplay self
function row:SetBlue(value) end

---Table container for PowerDisplay (Build 12.1.5.69594).
---@class dbc.Table.v1215.PowerDisplay : DbcTable
---@field [integer] dbc.row.v1215.PowerDisplay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PowerDisplay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PowerDisplay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PowerDisplay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PowerDisplay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PowerDisplay[]
function tbl:GetByRelation(foreign_id) end

return {}
