---@meta
-- Generated LuaLS annotations for PathNodeProperty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PathNodeProperty in build 12.1.5.69594.
---@class dbc.row.v1215.PathNodeProperty : RowProxy
---@field ID integer
---@field PathID integer
---@field Sequence integer
---@field PropertyIndex integer
---@field Value integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PathNodeProperty self
function row:SetID(value) end

---Gets the value of field 'PathID'.
---@return integer value
function row:GetPathID() end

---Sets the value of field 'PathID'.
---@param value integer
---@return dbc.row.v1215.PathNodeProperty self
function row:SetPathID(value) end

---Navigates foreign relationship to 'Path' via 'PathID'.
---@return dbc.row.v1215.Path|nil
function row:GetPath() end

---Creates a related 'Path' row and automatically links 'PathID'.
---@param data? table
---@return dbc.row.v1215.Path
function row:CreateRelated(data) end

---Gets the value of field 'Sequence'.
---@return integer value
function row:GetSequence() end

---Sets the value of field 'Sequence'.
---@param value integer
---@return dbc.row.v1215.PathNodeProperty self
function row:SetSequence(value) end

---Gets the value of field 'PropertyIndex'.
---@return integer value
function row:GetPropertyIndex() end

---Sets the value of field 'PropertyIndex'.
---@param value integer
---@return dbc.row.v1215.PathNodeProperty self
function row:SetPropertyIndex(value) end

---Gets the value of field 'Value'.
---@return integer value
function row:GetValue() end

---Sets the value of field 'Value'.
---@param value integer
---@return dbc.row.v1215.PathNodeProperty self
function row:SetValue(value) end

---Table container for PathNodeProperty (Build 12.1.5.69594).
---@class dbc.Table.v1215.PathNodeProperty : DbcTable
---@field [integer] dbc.row.v1215.PathNodeProperty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PathNodeProperty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PathNodeProperty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PathNodeProperty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PathNodeProperty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PathNodeProperty[]
function tbl:GetByRelation(foreign_id) end

return {}
