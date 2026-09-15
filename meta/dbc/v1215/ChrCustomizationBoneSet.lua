---@meta
-- Generated LuaLS annotations for ChrCustomizationBoneSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationBoneSet in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationBoneSet : RowProxy
---@field ID integer
---@field BoneFileDataID integer
---@field ModelFileDataID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationBoneSet self
function row:SetID(value) end

---Gets the value of field 'BoneFileDataID'.
---@return integer value
function row:GetBoneFileDataID() end

---Sets the value of field 'BoneFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationBoneSet self
function row:SetBoneFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'BoneFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetBoneFileData() end

---Creates a related 'FileData' row and automatically links 'BoneFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ModelFileDataID'.
---@return integer value
function row:GetModelFileDataID() end

---Sets the value of field 'ModelFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationBoneSet self
function row:SetModelFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'ModelFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetModelFileData() end

---Creates a related 'FileData' row and automatically links 'ModelFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Table container for ChrCustomizationBoneSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationBoneSet : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationBoneSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationBoneSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationBoneSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationBoneSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationBoneSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationBoneSet[]
function tbl:GetByRelation(foreign_id) end

return {}
