---@meta
-- Generated LuaLS annotations for AnimKitBoneSetAlias (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimKitBoneSetAlias in build 12.1.5.69594.
---@class dbc.row.v1215.AnimKitBoneSetAlias : RowProxy
---@field ID integer
---@field BoneDataID integer
---@field AnimKitBoneSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSetAlias self
function row:SetID(value) end

---Gets the value of field 'BoneDataID'.
---@return integer value
function row:GetBoneDataID() end

---Sets the value of field 'BoneDataID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSetAlias self
function row:SetBoneDataID(value) end

---Navigates foreign relationship to 'BoneData' via 'BoneDataID'.
---@return dbc.row.v1215.BoneData|nil
function row:GetBoneData() end

---Creates a related 'BoneData' row and automatically links 'BoneDataID'.
---@param data? table
---@return dbc.row.v1215.BoneData
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitBoneSetID'.
---@return integer value
function row:GetAnimKitBoneSetID() end

---Sets the value of field 'AnimKitBoneSetID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSetAlias self
function row:SetAnimKitBoneSetID(value) end

---Navigates foreign relationship to 'AnimKitBoneSet' via 'AnimKitBoneSetID'.
---@return dbc.row.v1215.AnimKitBoneSet|nil
function row:GetAnimKitBoneSet() end

---Creates a related 'AnimKitBoneSet' row and automatically links 'AnimKitBoneSetID'.
---@param data? table
---@return dbc.row.v1215.AnimKitBoneSet
function row:CreateRelated(data) end

---Table container for AnimKitBoneSetAlias (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimKitBoneSetAlias : DbcTable
---@field [integer] dbc.row.v1215.AnimKitBoneSetAlias
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimKitBoneSetAlias
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitBoneSetAlias|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitBoneSetAlias
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimKitBoneSetAlias>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimKitBoneSetAlias[]
function tbl:GetByRelation(foreign_id) end

return {}
