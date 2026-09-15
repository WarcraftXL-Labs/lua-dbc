---@meta
-- Generated LuaLS annotations for TraitNodeEntryXTraitCost (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeEntryXTraitCost in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeEntryXTraitCost : RowProxy
---@field ID integer
---@field TraitNodeEntryID integer
---@field TraitCostID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCost self
function row:SetID(value) end

---Gets the value of field 'TraitNodeEntryID'.
---@return integer value
function row:GetTraitNodeEntryID() end

---Sets the value of field 'TraitNodeEntryID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCost self
function row:SetTraitNodeEntryID(value) end

---Navigates foreign relationship to 'TraitNodeEntry' via 'TraitNodeEntryID'.
---@return dbc.row.v1215.TraitNodeEntry|nil
function row:GetTraitNodeEntry() end

---Creates a related 'TraitNodeEntry' row and automatically links 'TraitNodeEntryID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeEntry
function row:CreateRelated(data) end

---Gets the value of field 'TraitCostID'.
---@return integer value
function row:GetTraitCostID() end

---Sets the value of field 'TraitCostID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCost self
function row:SetTraitCostID(value) end

---Navigates foreign relationship to 'TraitCost' via 'TraitCostID'.
---@return dbc.row.v1215.TraitCost|nil
function row:GetTraitCost() end

---Creates a related 'TraitCost' row and automatically links 'TraitCostID'.
---@param data? table
---@return dbc.row.v1215.TraitCost
function row:CreateRelated(data) end

---Table container for TraitNodeEntryXTraitCost (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeEntryXTraitCost : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeEntryXTraitCost
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeEntryXTraitCost
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCost|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCost
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeEntryXTraitCost>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCost[]
function tbl:GetByRelation(foreign_id) end

return {}
