---@meta
-- Generated LuaLS annotations for TraitNodeXTraitCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeXTraitCost in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeXTraitCost : RowProxy
---@field ID integer
---@field TraitNodeID integer
---@field TraitCostID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitCost self
function row:SetID(value) end

---Gets the value of field 'TraitNodeID'.
---@return integer value
function row:GetTraitNodeID() end

---Sets the value of field 'TraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitCost self
function row:SetTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'TraitCostID'.
---@return integer value
function row:GetTraitCostID() end

---Sets the value of field 'TraitCostID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitCost self
function row:SetTraitCostID(value) end

---Navigates foreign relationship to 'TraitCost' via 'TraitCostID'.
---@return dbc.row.v1215.TraitCost|nil
function row:GetTraitCost() end

---Creates a related 'TraitCost' row and automatically links 'TraitCostID'.
---@param data? table
---@return dbc.row.v1215.TraitCost
function row:CreateRelated(data) end

---Table container for TraitNodeXTraitCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeXTraitCost : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeXTraitCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeXTraitCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeXTraitCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeXTraitCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeXTraitCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeXTraitCost[]
function tbl:GetByRelation(foreign_id) end

return {}
