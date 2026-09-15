---@meta
-- Generated LuaLS annotations for DataTagXRecord (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DataTagXRecord in build 12.1.5.69594.
---@class dbc.row.v1215.DataTagXRecord : RowProxy
---@field RecordType string
---@field ID integer
---@field RecordID integer
---@field DataTag integer

local row = {}

---Gets the value of field 'RecordType'.
---@return string value
function row:GetRecordType() end

---Sets the value of field 'RecordType'.
---@param value string
---@return dbc.row.v1215.DataTagXRecord self
function row:SetRecordType(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DataTagXRecord self
function row:SetID(value) end

---Gets the value of field 'RecordID'.
---@return integer value
function row:GetRecordID() end

---Sets the value of field 'RecordID'.
---@param value integer
---@return dbc.row.v1215.DataTagXRecord self
function row:SetRecordID(value) end

---Navigates foreign relationship to 'Record' via 'RecordID'.
---@return dbc.row.v1215.Record|nil
function row:GetRecord() end

---Creates a related 'Record' row and automatically links 'RecordID'.
---@param data? table
---@return dbc.row.v1215.Record
function row:CreateRelated(data) end

---Gets the value of field 'DataTag'.
---@return integer value
function row:GetDataTag() end

---Sets the value of field 'DataTag'.
---@param value integer
---@return dbc.row.v1215.DataTagXRecord self
function row:SetDataTag(value) end

---Navigates foreign relationship to 'DataTagInfo' via 'DataTag'.
---@return dbc.row.v1215.DataTagInfo|nil
function row:GetDataTag() end

---Creates a related 'DataTagInfo' row and automatically links 'DataTag'.
---@param data? table
---@return dbc.row.v1215.DataTagInfo
function row:CreateRelated(data) end

---Table container for DataTagXRecord (Build 12.1.5.69594).
---@class dbc.Table.v1215.DataTagXRecord : DbcTable
---@field [integer] dbc.row.v1215.DataTagXRecord
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DataTagXRecord
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DataTagXRecord|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DataTagXRecord
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DataTagXRecord>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DataTagXRecord[]
function tbl:GetByRelation(foreign_id) end

return {}
