---@meta
-- Generated LuaLS annotations for DataTagInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DataTagInfo in build 12.1.5.69594.
---@class dbc.row.v1215.DataTagInfo : RowProxy
---@field Description_lang string
---@field ID integer
---@field DataTag integer

local row = {}

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.DataTagInfo self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DataTagInfo self
function row:SetID(value) end

---Gets the value of field 'DataTag'.
---@return integer value
function row:GetDataTag() end

---Sets the value of field 'DataTag'.
---@param value integer
---@return dbc.row.v1215.DataTagInfo self
function row:SetDataTag(value) end

---Table container for DataTagInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.DataTagInfo : DbcTable
---@field [integer] dbc.row.v1215.DataTagInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DataTagInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DataTagInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DataTagInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DataTagInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DataTagInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
