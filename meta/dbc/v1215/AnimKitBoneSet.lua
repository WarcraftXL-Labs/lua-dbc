---@meta
-- Generated LuaLS annotations for AnimKitBoneSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimKitBoneSet in build 12.1.5.69594.
---@class dbc.row.v1215.AnimKitBoneSet : RowProxy
---@field ID integer
---@field Name string
---@field BoneDataID integer
---@field ParentAnimKitBoneSetID integer
---@field AltAnimKitBoneSetID integer
---@field AltBoneDataID integer If BoneDataID does not exist in model, use this instead.

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSet self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v1215.AnimKitBoneSet self
function row:SetName(value) end

---Gets the value of field 'BoneDataID'.
---@return integer value
function row:GetBoneDataID() end

---Sets the value of field 'BoneDataID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSet self
function row:SetBoneDataID(value) end

---Navigates foreign relationship to 'BoneData' via 'BoneDataID'.
---@return dbc.row.v1215.BoneData|nil
function row:GetBoneData() end

---Creates a related 'BoneData' row and automatically links 'BoneDataID'.
---@param data? table
---@return dbc.row.v1215.BoneData
function row:CreateRelated(data) end

---Gets the value of field 'ParentAnimKitBoneSetID'.
---@return integer value
function row:GetParentAnimKitBoneSetID() end

---Sets the value of field 'ParentAnimKitBoneSetID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSet self
function row:SetParentAnimKitBoneSetID(value) end

---Navigates foreign relationship to 'AnimKitBoneSet' via 'ParentAnimKitBoneSetID'.
---@return dbc.row.v1215.AnimKitBoneSet|nil
function row:GetParentAnimKitBoneSet() end

---Creates a related 'AnimKitBoneSet' row and automatically links 'ParentAnimKitBoneSetID'.
---@param data? table
---@return dbc.row.v1215.AnimKitBoneSet
function row:CreateRelated(data) end

---Gets the value of field 'AltAnimKitBoneSetID'.
---@return integer value
function row:GetAltAnimKitBoneSetID() end

---Sets the value of field 'AltAnimKitBoneSetID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSet self
function row:SetAltAnimKitBoneSetID(value) end

---Navigates foreign relationship to 'AnimKitBoneSet' via 'AltAnimKitBoneSetID'.
---@return dbc.row.v1215.AnimKitBoneSet|nil
function row:GetAltAnimKitBoneSet() end

---Creates a related 'AnimKitBoneSet' row and automatically links 'AltAnimKitBoneSetID'.
---@param data? table
---@return dbc.row.v1215.AnimKitBoneSet
function row:CreateRelated(data) end

---Gets the value of field 'AltBoneDataID'.
---@return integer value
function row:GetAltBoneDataID() end

---Sets the value of field 'AltBoneDataID'.
---@param value integer
---@return dbc.row.v1215.AnimKitBoneSet self
function row:SetAltBoneDataID(value) end

---Navigates foreign relationship to 'AltBoneData' via 'AltBoneDataID'.
---@return dbc.row.v1215.AltBoneData|nil
function row:GetAltBoneData() end

---Creates a related 'AltBoneData' row and automatically links 'AltBoneDataID'.
---@param data? table
---@return dbc.row.v1215.AltBoneData
function row:CreateRelated(data) end

---Table container for AnimKitBoneSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimKitBoneSet : DbcTable
---@field [integer] dbc.row.v1215.AnimKitBoneSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimKitBoneSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitBoneSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitBoneSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimKitBoneSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimKitBoneSet[]
function tbl:GetByRelation(foreign_id) end

return {}
