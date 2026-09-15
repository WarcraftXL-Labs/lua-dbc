---@meta
-- Generated LuaLS annotations for MountType (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MountType in build 12.1.5.69594.
---@class dbc.row.v1215.MountType : RowProxy
---@field ID integer
---@field Type integer 0: Ground, 1: Flying, 2: Aquatic
---@field Capability integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MountType self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.MountType self
function row:SetType(value) end

---Gets the value of field 'Capability'.
---@return integer[] value
function row:GetCapability() end

---Sets the value of field 'Capability'.
---@param value integer[]
---@return dbc.row.v1215.MountType self
function row:SetCapability(value) end

---Gets element at 1-based index in 'Capability'.
---@param index integer
---@return integer value
function row:GetCapabilityItem(index) end

---Navigates foreign relationship to 'MountCapability' via 'Capability'.
---@return dbc.row.v1215.MountCapability|nil
function row:GetCapability() end

---Creates a related 'MountCapability' row and automatically links 'Capability'.
---@param data? table
---@return dbc.row.v1215.MountCapability
function row:CreateRelated(data) end

---Table container for MountType (Build 12.1.5.69594).
---@class dbc.Table.v1215.MountType : DbcTable
---@field [integer] dbc.row.v1215.MountType
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MountType
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MountType|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MountType
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MountType>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MountType[]
function tbl:GetByRelation(foreign_id) end

return {}
