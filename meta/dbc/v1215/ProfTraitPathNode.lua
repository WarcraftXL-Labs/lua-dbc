---@meta
-- Generated LuaLS annotations for ProfTraitPathNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfTraitPathNode in build 12.1.5.69594.
---@class dbc.row.v1215.ProfTraitPathNode : RowProxy
---@field ID integer
---@field TraitNodeID integer
---@field LeftTraitNodeGroupID integer
---@field RightTraitNodeGroupID integer
---@field TraitCurrencyID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitPathNode self
function row:SetID(value) end

---Gets the value of field 'TraitNodeID'.
---@return integer value
function row:GetTraitNodeID() end

---Sets the value of field 'TraitNodeID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitPathNode self
function row:SetTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'LeftTraitNodeGroupID'.
---@return integer value
function row:GetLeftTraitNodeGroupID() end

---Sets the value of field 'LeftTraitNodeGroupID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitPathNode self
function row:SetLeftTraitNodeGroupID(value) end

---Navigates foreign relationship to 'TraitNodeGroup' via 'LeftTraitNodeGroupID'.
---@return dbc.row.v1215.TraitNodeGroup|nil
function row:GetLeftTraitNodeGroup() end

---Creates a related 'TraitNodeGroup' row and automatically links 'LeftTraitNodeGroupID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeGroup
function row:CreateRelated(data) end

---Gets the value of field 'RightTraitNodeGroupID'.
---@return integer value
function row:GetRightTraitNodeGroupID() end

---Sets the value of field 'RightTraitNodeGroupID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitPathNode self
function row:SetRightTraitNodeGroupID(value) end

---Navigates foreign relationship to 'TraitNodeGroup' via 'RightTraitNodeGroupID'.
---@return dbc.row.v1215.TraitNodeGroup|nil
function row:GetRightTraitNodeGroup() end

---Creates a related 'TraitNodeGroup' row and automatically links 'RightTraitNodeGroupID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeGroup
function row:CreateRelated(data) end

---Gets the value of field 'TraitCurrencyID'.
---@return integer value
function row:GetTraitCurrencyID() end

---Sets the value of field 'TraitCurrencyID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitPathNode self
function row:SetTraitCurrencyID(value) end

---Navigates foreign relationship to 'TraitCurrency' via 'TraitCurrencyID'.
---@return dbc.row.v1215.TraitCurrency|nil
function row:GetTraitCurrency() end

---Creates a related 'TraitCurrency' row and automatically links 'TraitCurrencyID'.
---@param data? table
---@return dbc.row.v1215.TraitCurrency
function row:CreateRelated(data) end

---Table container for ProfTraitPathNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfTraitPathNode : DbcTable
---@field [integer] dbc.row.v1215.ProfTraitPathNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfTraitPathNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfTraitPathNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfTraitPathNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfTraitPathNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfTraitPathNode[]
function tbl:GetByRelation(foreign_id) end

return {}
