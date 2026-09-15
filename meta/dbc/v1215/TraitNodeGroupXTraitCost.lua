---@meta
-- Generated LuaLS annotations for TraitNodeGroupXTraitCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeGroupXTraitCost in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeGroupXTraitCost : RowProxy
---@field ID integer
---@field TraitNodeGroupID integer
---@field TraitCostID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCost self
function row:SetID(value) end

---Gets the value of field 'TraitNodeGroupID'.
---@return integer value
function row:GetTraitNodeGroupID() end

---Sets the value of field 'TraitNodeGroupID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCost self
function row:SetTraitNodeGroupID(value) end

---Navigates foreign relationship to 'TraitNodeGroup' via 'TraitNodeGroupID'.
---@return dbc.row.v1215.TraitNodeGroup|nil
function row:GetTraitNodeGroup() end

---Creates a related 'TraitNodeGroup' row and automatically links 'TraitNodeGroupID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeGroup
function row:CreateRelated(data) end

---Gets the value of field 'TraitCostID'.
---@return integer value
function row:GetTraitCostID() end

---Sets the value of field 'TraitCostID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCost self
function row:SetTraitCostID(value) end

---Navigates foreign relationship to 'TraitCost' via 'TraitCostID'.
---@return dbc.row.v1215.TraitCost|nil
function row:GetTraitCost() end

---Creates a related 'TraitCost' row and automatically links 'TraitCostID'.
---@param data? table
---@return dbc.row.v1215.TraitCost
function row:CreateRelated(data) end

---Table container for TraitNodeGroupXTraitCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeGroupXTraitCost : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeGroupXTraitCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeGroupXTraitCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeGroupXTraitCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCost[]
function tbl:GetByRelation(foreign_id) end

return {}
