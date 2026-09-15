---@meta
-- Generated LuaLS annotations for ChrCustGeoComponentLink (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustGeoComponentLink in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustGeoComponentLink : RowProxy
---@field ID integer
---@field AttachmentID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustGeoComponentLink self
function row:SetID(value) end

---Gets the value of field 'AttachmentID'.
---@return integer value
function row:GetAttachmentID() end

---Sets the value of field 'AttachmentID'.
---@param value integer
---@return dbc.row.v1215.ChrCustGeoComponentLink self
function row:SetAttachmentID(value) end

---Navigates foreign relationship to 'Attachment' via 'AttachmentID'.
---@return dbc.row.v1215.Attachment|nil
function row:GetAttachment() end

---Creates a related 'Attachment' row and automatically links 'AttachmentID'.
---@param data? table
---@return dbc.row.v1215.Attachment
function row:CreateRelated(data) end

---Table container for ChrCustGeoComponentLink (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustGeoComponentLink : DbcTable
---@field [integer] dbc.row.v1215.ChrCustGeoComponentLink
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustGeoComponentLink
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustGeoComponentLink|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustGeoComponentLink
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustGeoComponentLink>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustGeoComponentLink[]
function tbl:GetByRelation(foreign_id) end

return {}
