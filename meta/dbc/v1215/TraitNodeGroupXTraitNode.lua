---@meta
-- Generated LuaLS annotations for TraitNodeGroupXTraitNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeGroupXTraitNode in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeGroupXTraitNode : RowProxy
---@field ID integer
---@field TraitNodeGroupID integer
---@field TraitNodeID integer
---@field Index integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitNode self
function row:SetID(value) end

---Gets the value of field 'TraitNodeGroupID'.
---@return integer value
function row:GetTraitNodeGroupID() end

---Sets the value of field 'TraitNodeGroupID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitNode self
function row:SetTraitNodeGroupID(value) end

---Navigates foreign relationship to 'TraitNodeGroup' via 'TraitNodeGroupID'.
---@return dbc.row.v1215.TraitNodeGroup|nil
function row:GetTraitNodeGroup() end

---Creates a related 'TraitNodeGroup' row and automatically links 'TraitNodeGroupID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeGroup
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeID'.
---@return integer value
function row:GetTraitNodeID() end

---Sets the value of field 'TraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitNode self
function row:SetTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'Index'.
---@return integer value
function row:GetIndex() end

---Sets the value of field 'Index'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitNode self
function row:SetIndex(value) end

---Table container for TraitNodeGroupXTraitNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeGroupXTraitNode : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeGroupXTraitNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeGroupXTraitNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeGroupXTraitNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitNode[]
function tbl:GetByRelation(foreign_id) end

return {}
