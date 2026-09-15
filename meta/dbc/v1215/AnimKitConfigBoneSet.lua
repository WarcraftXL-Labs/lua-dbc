---@meta
-- Generated LuaLS annotations for AnimKitConfigBoneSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimKitConfigBoneSet in build 12.1.5.69594.
---@class dbc.row.v1215.AnimKitConfigBoneSet : RowProxy
---@field ID integer
---@field AnimKitBoneSetID integer
---@field AnimKitPriorityID integer
---@field ParentAnimKitConfigID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimKitConfigBoneSet self
function row:SetID(value) end

---Gets the value of field 'AnimKitBoneSetID'.
---@return integer value
function row:GetAnimKitBoneSetID() end

---Sets the value of field 'AnimKitBoneSetID'.
---@param value integer
---@return dbc.row.v1215.AnimKitConfigBoneSet self
function row:SetAnimKitBoneSetID(value) end

---Navigates foreign relationship to 'AnimKitBoneSet' via 'AnimKitBoneSetID'.
---@return dbc.row.v1215.AnimKitBoneSet|nil
function row:GetAnimKitBoneSet() end

---Creates a related 'AnimKitBoneSet' row and automatically links 'AnimKitBoneSetID'.
---@param data? table
---@return dbc.row.v1215.AnimKitBoneSet
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitPriorityID'.
---@return integer value
function row:GetAnimKitPriorityID() end

---Sets the value of field 'AnimKitPriorityID'.
---@param value integer
---@return dbc.row.v1215.AnimKitConfigBoneSet self
function row:SetAnimKitPriorityID(value) end

---Navigates foreign relationship to 'AnimKitPriority' via 'AnimKitPriorityID'.
---@return dbc.row.v1215.AnimKitPriority|nil
function row:GetAnimKitPriority() end

---Creates a related 'AnimKitPriority' row and automatically links 'AnimKitPriorityID'.
---@param data? table
---@return dbc.row.v1215.AnimKitPriority
function row:CreateRelated(data) end

---Gets the value of field 'ParentAnimKitConfigID'.
---@return integer value
function row:GetParentAnimKitConfigID() end

---Sets the value of field 'ParentAnimKitConfigID'.
---@param value integer
---@return dbc.row.v1215.AnimKitConfigBoneSet self
function row:SetParentAnimKitConfigID(value) end

---Navigates foreign relationship to 'AnimKitConfig' via 'ParentAnimKitConfigID'.
---@return dbc.row.v1215.AnimKitConfig|nil
function row:GetParentAnimKitConfig() end

---Creates a related 'AnimKitConfig' row and automatically links 'ParentAnimKitConfigID'.
---@param data? table
---@return dbc.row.v1215.AnimKitConfig
function row:CreateRelated(data) end

---Table container for AnimKitConfigBoneSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimKitConfigBoneSet : DbcTable
---@field [integer] dbc.row.v1215.AnimKitConfigBoneSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimKitConfigBoneSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitConfigBoneSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitConfigBoneSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimKitConfigBoneSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimKitConfigBoneSet[]
function tbl:GetByRelation(foreign_id) end

return {}
