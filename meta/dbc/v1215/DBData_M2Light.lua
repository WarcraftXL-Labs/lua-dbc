---@meta
-- Generated LuaLS annotations for DBData_M2Light (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DBData_M2Light in build 12.1.5.69594.
---@class dbc.row.v1215.DBData_M2Light : RowProxy
---@field Position number[]
---@field ID integer
---@field FileDataID integer
---@field Index integer
---@field Type integer
---@field BoneID integer
---@field Radius number

local row = {}

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.DBData_M2Light self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DBData_M2Light self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.DBData_M2Light self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Index'.
---@return integer value
function row:GetIndex() end

---Sets the value of field 'Index'.
---@param value integer
---@return dbc.row.v1215.DBData_M2Light self
function row:SetIndex(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.DBData_M2Light self
function row:SetType(value) end

---Gets the value of field 'BoneID'.
---@return integer value
function row:GetBoneID() end

---Sets the value of field 'BoneID'.
---@param value integer
---@return dbc.row.v1215.DBData_M2Light self
function row:SetBoneID(value) end

---Navigates foreign relationship to 'Bone' via 'BoneID'.
---@return dbc.row.v1215.Bone|nil
function row:GetBone() end

---Creates a related 'Bone' row and automatically links 'BoneID'.
---@param data? table
---@return dbc.row.v1215.Bone
function row:CreateRelated(data) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.DBData_M2Light self
function row:SetRadius(value) end

---Table container for DBData_M2Light (Build 12.1.5.69594).
---@class dbc.Table.v1215.DBData_M2Light : DbcTable
---@field [integer] dbc.row.v1215.DBData_M2Light
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DBData_M2Light
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DBData_M2Light|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DBData_M2Light
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DBData_M2Light>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DBData_M2Light[]
function tbl:GetByRelation(foreign_id) end

return {}
