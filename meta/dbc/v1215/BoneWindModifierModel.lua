---@meta
-- Generated LuaLS annotations for BoneWindModifierModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BoneWindModifierModel in build 12.1.5.69594.
---@class dbc.row.v1215.BoneWindModifierModel : RowProxy
---@field ID integer
---@field FileDataID integer
---@field BoneWindModifierID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BoneWindModifierModel self
function row:SetID(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.BoneWindModifierModel self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'BoneWindModifierID'.
---@return integer value
function row:GetBoneWindModifierID() end

---Sets the value of field 'BoneWindModifierID'.
---@param value integer
---@return dbc.row.v1215.BoneWindModifierModel self
function row:SetBoneWindModifierID(value) end

---Navigates foreign relationship to 'BoneWindModifiers' via 'BoneWindModifierID'.
---@return dbc.row.v1215.BoneWindModifiers|nil
function row:GetBoneWindModifier() end

---Creates a related 'BoneWindModifiers' row and automatically links 'BoneWindModifierID'.
---@param data? table
---@return dbc.row.v1215.BoneWindModifiers
function row:CreateRelated(data) end

---Table container for BoneWindModifierModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.BoneWindModifierModel : DbcTable
---@field [integer] dbc.row.v1215.BoneWindModifierModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BoneWindModifierModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BoneWindModifierModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BoneWindModifierModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BoneWindModifierModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BoneWindModifierModel[]
function tbl:GetByRelation(foreign_id) end

return {}
