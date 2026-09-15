---@meta
-- Generated LuaLS annotations for DriveCapabilityTier (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DriveCapabilityTier in build 12.1.5.69594.
---@class dbc.row.v1215.DriveCapabilityTier : RowProxy
---@field ID integer
---@field Field_11_1_0_58221_001 number
---@field Field_11_1_0_58221_002 number
---@field DriveCapabilityID integer
---@field Field_11_1_0_58221_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DriveCapabilityTier self
function row:SetID(value) end

---Gets the value of field 'Field_11_1_0_58221_001'.
---@return number value
function row:GetField_11_1_0_58221_001() end

---Sets the value of field 'Field_11_1_0_58221_001'.
---@param value number
---@return dbc.row.v1215.DriveCapabilityTier self
function row:SetField_11_1_0_58221_001(value) end

---Gets the value of field 'Field_11_1_0_58221_002'.
---@return number value
function row:GetField_11_1_0_58221_002() end

---Sets the value of field 'Field_11_1_0_58221_002'.
---@param value number
---@return dbc.row.v1215.DriveCapabilityTier self
function row:SetField_11_1_0_58221_002(value) end

---Gets the value of field 'DriveCapabilityID'.
---@return integer value
function row:GetDriveCapabilityID() end

---Sets the value of field 'DriveCapabilityID'.
---@param value integer
---@return dbc.row.v1215.DriveCapabilityTier self
function row:SetDriveCapabilityID(value) end

---Navigates foreign relationship to 'DriveCapability' via 'DriveCapabilityID'.
---@return dbc.row.v1215.DriveCapability|nil
function row:GetDriveCapability() end

---Creates a related 'DriveCapability' row and automatically links 'DriveCapabilityID'.
---@param data? table
---@return dbc.row.v1215.DriveCapability
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_1_0_58221_004'.
---@return integer value
function row:GetField_11_1_0_58221_004() end

---Sets the value of field 'Field_11_1_0_58221_004'.
---@param value integer
---@return dbc.row.v1215.DriveCapabilityTier self
function row:SetField_11_1_0_58221_004(value) end

---Table container for DriveCapabilityTier (Build 12.1.5.69594).
---@class dbc.Table.v1215.DriveCapabilityTier : DbcTable
---@field [integer] dbc.row.v1215.DriveCapabilityTier
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DriveCapabilityTier
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DriveCapabilityTier|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DriveCapabilityTier
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DriveCapabilityTier>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DriveCapabilityTier[]
function tbl:GetByRelation(foreign_id) end

return {}
