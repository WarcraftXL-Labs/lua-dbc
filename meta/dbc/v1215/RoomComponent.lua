---@meta
-- Generated LuaLS annotations for RoomComponent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RoomComponent in build 12.1.5.69594.
---@class dbc.row.v1215.RoomComponent : RowProxy
---@field OffsetPos number[]
---@field OffsetRot number[]
---@field ID integer
---@field RoomWmoDataID integer
---@field ModelFileDataID integer
---@field Type integer
---@field MeshStyleFilterID integer
---@field ConnectionType integer
---@field Flags integer

local row = {}

---Gets the value of field 'OffsetPos'.
---@return number[] value
function row:GetOffsetPos() end

---Sets the value of field 'OffsetPos'.
---@param value number[]
---@return dbc.row.v1215.RoomComponent self
function row:SetOffsetPos(value) end

---Gets element at 1-based index in 'OffsetPos'.
---@param index integer
---@return number value
function row:GetOffsetPosItem(index) end

---Gets the value of field 'OffsetRot'.
---@return number[] value
function row:GetOffsetRot() end

---Sets the value of field 'OffsetRot'.
---@param value number[]
---@return dbc.row.v1215.RoomComponent self
function row:SetOffsetRot(value) end

---Gets element at 1-based index in 'OffsetRot'.
---@param index integer
---@return number value
function row:GetOffsetRotItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RoomComponent self
function row:SetID(value) end

---Gets the value of field 'RoomWmoDataID'.
---@return integer value
function row:GetRoomWmoDataID() end

---Sets the value of field 'RoomWmoDataID'.
---@param value integer
---@return dbc.row.v1215.RoomComponent self
function row:SetRoomWmoDataID(value) end

---Navigates foreign relationship to 'RoomWmoData' via 'RoomWmoDataID'.
---@return dbc.row.v1215.RoomWmoData|nil
function row:GetRoomWmoData() end

---Creates a related 'RoomWmoData' row and automatically links 'RoomWmoDataID'.
---@param data? table
---@return dbc.row.v1215.RoomWmoData
function row:CreateRelated(data) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.RoomComponent self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.RoomComponent self
function row:SetType(value) end

---Gets the value of field 'MeshStyleFilterID'.
---@return integer value
function row:GetMeshStyleFilterID() end

---Sets the value of field 'MeshStyleFilterID'.
---@param value integer
---@return dbc.row.v1215.RoomComponent self
function row:SetMeshStyleFilterID(value) end

---Navigates foreign relationship to 'MeshStyleFilter' via 'MeshStyleFilterID'.
---@return dbc.row.v1215.MeshStyleFilter|nil
function row:GetMeshStyleFilter() end

---Creates a related 'MeshStyleFilter' row and automatically links 'MeshStyleFilterID'.
---@param data? table
---@return dbc.row.v1215.MeshStyleFilter
function row:CreateRelated(data) end

---Gets the value of field 'ConnectionType'.
---@return integer value
function row:GetConnectionType() end

---Sets the value of field 'ConnectionType'.
---@param value integer
---@return dbc.row.v1215.RoomComponent self
function row:SetConnectionType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.RoomComponent self
function row:SetFlags(value) end

---Table container for RoomComponent (Build 12.1.5.69594).
---@class dbc.Table.v1215.RoomComponent : DbcTable
---@field [integer] dbc.row.v1215.RoomComponent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RoomComponent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RoomComponent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RoomComponent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RoomComponent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RoomComponent[]
function tbl:GetByRelation(foreign_id) end

return {}
