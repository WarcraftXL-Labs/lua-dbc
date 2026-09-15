---@meta
-- Generated LuaLS annotations for RoomComponentOption (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RoomComponentOption in build 12.1.5.69594.
---@class dbc.row.v1215.RoomComponentOption : RowProxy
---@field ID integer
---@field Type integer
---@field Field_12_0_0_63534_002 integer
---@field ModelFileDataID integer
---@field SubType integer
---@field MeshStyleFilterID integer
---@field Theme integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetType(value) end

---Gets the value of field 'Field_12_0_0_63534_002'.
---@return integer value
function row:GetField_12_0_0_63534_002() end

---Sets the value of field 'Field_12_0_0_63534_002'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetField_12_0_0_63534_002(value) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'SubType'.
---@return integer value
function row:GetSubType() end

---Sets the value of field 'SubType'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetSubType(value) end

---Gets the value of field 'MeshStyleFilterID'.
---@return integer value
function row:GetMeshStyleFilterID() end

---Sets the value of field 'MeshStyleFilterID'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetMeshStyleFilterID(value) end

---Navigates foreign relationship to 'MeshStyleFilter' via 'MeshStyleFilterID'.
---@return dbc.row.v1215.MeshStyleFilter|nil
function row:GetMeshStyleFilter() end

---Creates a related 'MeshStyleFilter' row and automatically links 'MeshStyleFilterID'.
---@param data? table
---@return dbc.row.v1215.MeshStyleFilter
function row:CreateRelated(data) end

---Gets the value of field 'Theme'.
---@return integer value
function row:GetTheme() end

---Sets the value of field 'Theme'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetTheme(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.RoomComponentOption self
function row:SetFlags(value) end

---Table container for RoomComponentOption (Build 12.1.5.69594).
---@class dbc.Table.v1215.RoomComponentOption : DbcTable
---@field [integer] dbc.row.v1215.RoomComponentOption
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RoomComponentOption
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RoomComponentOption|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RoomComponentOption
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RoomComponentOption>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RoomComponentOption[]
function tbl:GetByRelation(foreign_id) end

return {}
