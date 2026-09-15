---@meta
-- Generated LuaLS annotations for AnimReplacement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimReplacement in build 12.1.5.69594.
---@class dbc.row.v1215.AnimReplacement : RowProxy
---@field ID integer
---@field SrcAnimID integer
---@field DstAnimID integer
---@field ConditionalFlags integer
---@field ParentAnimReplacementSetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimReplacement self
function row:SetID(value) end

---Gets the value of field 'SrcAnimID'.
---@return integer value
function row:GetSrcAnimID() end

---Sets the value of field 'SrcAnimID'.
---@param value integer
---@return dbc.row.v1215.AnimReplacement self
function row:SetSrcAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'SrcAnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetSrcAnim() end

---Creates a related 'AnimationData' row and automatically links 'SrcAnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'DstAnimID'.
---@return integer value
function row:GetDstAnimID() end

---Sets the value of field 'DstAnimID'.
---@param value integer
---@return dbc.row.v1215.AnimReplacement self
function row:SetDstAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'DstAnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetDstAnim() end

---Creates a related 'AnimationData' row and automatically links 'DstAnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'ConditionalFlags'.
---@return integer value
function row:GetConditionalFlags() end

---Sets the value of field 'ConditionalFlags'.
---@param value integer
---@return dbc.row.v1215.AnimReplacement self
function row:SetConditionalFlags(value) end

---Gets the value of field 'ParentAnimReplacementSetID'.
---@return integer value
function row:GetParentAnimReplacementSetID() end

---Sets the value of field 'ParentAnimReplacementSetID'.
---@param value integer
---@return dbc.row.v1215.AnimReplacement self
function row:SetParentAnimReplacementSetID(value) end

---Navigates foreign relationship to 'AnimReplacementSet' via 'ParentAnimReplacementSetID'.
---@return dbc.row.v1215.AnimReplacementSet|nil
function row:GetParentAnimReplacementSet() end

---Creates a related 'AnimReplacementSet' row and automatically links 'ParentAnimReplacementSetID'.
---@param data? table
---@return dbc.row.v1215.AnimReplacementSet
function row:CreateRelated(data) end

---Table container for AnimReplacement (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimReplacement : DbcTable
---@field [integer] dbc.row.v1215.AnimReplacement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimReplacement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimReplacement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimReplacement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimReplacement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimReplacement[]
function tbl:GetByRelation(foreign_id) end

return {}
