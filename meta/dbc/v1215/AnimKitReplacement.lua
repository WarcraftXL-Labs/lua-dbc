---@meta
-- Generated LuaLS annotations for AnimKitReplacement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimKitReplacement in build 12.1.5.69594.
---@class dbc.row.v1215.AnimKitReplacement : RowProxy
---@field ID integer
---@field SrcAnimKitID integer
---@field DstAnimKitID integer
---@field ConditionalFlags integer Same as AnimReplacement::ConditionalFlags.
---@field ParentAnimReplacementSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimKitReplacement self
function row:SetID(value) end

---Gets the value of field 'SrcAnimKitID'.
---@return integer value
function row:GetSrcAnimKitID() end

---Sets the value of field 'SrcAnimKitID'.
---@param value integer
---@return dbc.row.v1215.AnimKitReplacement self
function row:SetSrcAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'SrcAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetSrcAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'SrcAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'DstAnimKitID'.
---@return integer value
function row:GetDstAnimKitID() end

---Sets the value of field 'DstAnimKitID'.
---@param value integer
---@return dbc.row.v1215.AnimKitReplacement self
function row:SetDstAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'DstAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetDstAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'DstAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'ConditionalFlags'.
---@return integer value
function row:GetConditionalFlags() end

---Sets the value of field 'ConditionalFlags'.
---@param value integer
---@return dbc.row.v1215.AnimKitReplacement self
function row:SetConditionalFlags(value) end

---Gets the value of field 'ParentAnimReplacementSetID'.
---@return integer value
function row:GetParentAnimReplacementSetID() end

---Sets the value of field 'ParentAnimReplacementSetID'.
---@param value integer
---@return dbc.row.v1215.AnimKitReplacement self
function row:SetParentAnimReplacementSetID(value) end

---Navigates foreign relationship to 'AnimReplacementSet' via 'ParentAnimReplacementSetID'.
---@return dbc.row.v1215.AnimReplacementSet|nil
function row:GetParentAnimReplacementSet() end

---Creates a related 'AnimReplacementSet' row and automatically links 'ParentAnimReplacementSetID'.
---@param data? table
---@return dbc.row.v1215.AnimReplacementSet
function row:CreateRelated(data) end

---Table container for AnimKitReplacement (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimKitReplacement : DbcTable
---@field [integer] dbc.row.v1215.AnimKitReplacement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimKitReplacement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitReplacement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitReplacement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimKitReplacement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimKitReplacement[]
function tbl:GetByRelation(foreign_id) end

return {}
