---@meta
-- Generated LuaLS annotations for VirtualAttachmentCustomization (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of VirtualAttachmentCustomization in build 12.1.5.69594.
---@class dbc.row.v1215.VirtualAttachmentCustomization : RowProxy
---@field ID integer
---@field VirtualAttachmentID integer
---@field FileDataID integer
---@field PositionerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.VirtualAttachmentCustomization self
function row:SetID(value) end

---Gets the value of field 'VirtualAttachmentID'.
---@return integer value
function row:GetVirtualAttachmentID() end

---Sets the value of field 'VirtualAttachmentID'.
---@param value integer
---@return dbc.row.v1215.VirtualAttachmentCustomization self
function row:SetVirtualAttachmentID(value) end

---Navigates foreign relationship to 'VirtualAttachment' via 'VirtualAttachmentID'.
---@return dbc.row.v1215.VirtualAttachment|nil
function row:GetVirtualAttachment() end

---Creates a related 'VirtualAttachment' row and automatically links 'VirtualAttachmentID'.
---@param data? table
---@return dbc.row.v1215.VirtualAttachment
function row:CreateRelated(data) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.VirtualAttachmentCustomization self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'PositionerID'.
---@return integer value
function row:GetPositionerID() end

---Sets the value of field 'PositionerID'.
---@param value integer
---@return dbc.row.v1215.VirtualAttachmentCustomization self
function row:SetPositionerID(value) end

---Navigates foreign relationship to 'Positioner' via 'PositionerID'.
---@return dbc.row.v1215.Positioner|nil
function row:GetPositioner() end

---Creates a related 'Positioner' row and automatically links 'PositionerID'.
---@param data? table
---@return dbc.row.v1215.Positioner
function row:CreateRelated(data) end

---Table container for VirtualAttachmentCustomization (Build 12.1.5.69594).
---@class dbc.Table.v1215.VirtualAttachmentCustomization : DbcTable
---@field [integer] dbc.row.v1215.VirtualAttachmentCustomization
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.VirtualAttachmentCustomization
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.VirtualAttachmentCustomization|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.VirtualAttachmentCustomization
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.VirtualAttachmentCustomization>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.VirtualAttachmentCustomization[]
function tbl:GetByRelation(foreign_id) end

return {}
