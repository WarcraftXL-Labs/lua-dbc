---@meta
-- Generated LuaLS annotations for DataTagGroupXDataTag (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DataTagGroupXDataTag in build 12.1.5.69594.
---@class dbc.row.v1215.DataTagGroupXDataTag : RowProxy
---@field ID integer
---@field DataTagGroupID integer
---@field DataTag integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DataTagGroupXDataTag self
function row:SetID(value) end

---Gets the value of field 'DataTagGroupID'.
---@return integer value
function row:GetDataTagGroupID() end

---Sets the value of field 'DataTagGroupID'.
---@param value integer
---@return dbc.row.v1215.DataTagGroupXDataTag self
function row:SetDataTagGroupID(value) end

---Navigates foreign relationship to 'DataTagGroup' via 'DataTagGroupID'.
---@return dbc.row.v1215.DataTagGroup|nil
function row:GetDataTagGroup() end

---Creates a related 'DataTagGroup' row and automatically links 'DataTagGroupID'.
---@param data? table
---@return dbc.row.v1215.DataTagGroup
function row:CreateRelated(data) end

---Gets the value of field 'DataTag'.
---@return integer value
function row:GetDataTag() end

---Sets the value of field 'DataTag'.
---@param value integer
---@return dbc.row.v1215.DataTagGroupXDataTag self
function row:SetDataTag(value) end

---Table container for DataTagGroupXDataTag (Build 12.1.5.69594).
---@class dbc.Table.v1215.DataTagGroupXDataTag : DbcTable
---@field [integer] dbc.row.v1215.DataTagGroupXDataTag
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DataTagGroupXDataTag
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DataTagGroupXDataTag|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DataTagGroupXDataTag
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DataTagGroupXDataTag>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DataTagGroupXDataTag[]
function tbl:GetByRelation(foreign_id) end

return {}
