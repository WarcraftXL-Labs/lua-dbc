---@meta
-- Generated LuaLS annotations for MountTypeXCapability (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MountTypeXCapability in build 12.1.5.69594.
---@class dbc.row.v1215.MountTypeXCapability : RowProxy
---@field ID integer
---@field MountTypeID integer
---@field MountCapabilityID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MountTypeXCapability self
function row:SetID(value) end

---Gets the value of field 'MountTypeID'.
---@return integer value
function row:GetMountTypeID() end

---Sets the value of field 'MountTypeID'.
---@param value integer
---@return dbc.row.v1215.MountTypeXCapability self
function row:SetMountTypeID(value) end

---Navigates foreign relationship to 'MountType' via 'MountTypeID'.
---@return dbc.row.v1215.MountType|nil
function row:GetMountType() end

---Creates a related 'MountType' row and automatically links 'MountTypeID'.
---@param data? table
---@return dbc.row.v1215.MountType
function row:CreateRelated(data) end

---Gets the value of field 'MountCapabilityID'.
---@return integer value
function row:GetMountCapabilityID() end

---Sets the value of field 'MountCapabilityID'.
---@param value integer
---@return dbc.row.v1215.MountTypeXCapability self
function row:SetMountCapabilityID(value) end

---Navigates foreign relationship to 'MountCapability' via 'MountCapabilityID'.
---@return dbc.row.v1215.MountCapability|nil
function row:GetMountCapability() end

---Creates a related 'MountCapability' row and automatically links 'MountCapabilityID'.
---@param data? table
---@return dbc.row.v1215.MountCapability
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.MountTypeXCapability self
function row:SetOrderIndex(value) end

---Table container for MountTypeXCapability (Build 12.1.5.69594).
---@class dbc.Table.v1215.MountTypeXCapability : DbcTable
---@field [integer] dbc.row.v1215.MountTypeXCapability
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MountTypeXCapability
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MountTypeXCapability|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MountTypeXCapability
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MountTypeXCapability>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MountTypeXCapability[]
function tbl:GetByRelation(foreign_id) end

return {}
