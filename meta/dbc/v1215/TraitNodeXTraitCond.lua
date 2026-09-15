---@meta
-- Generated LuaLS annotations for TraitNodeXTraitCond (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeXTraitCond in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeXTraitCond : RowProxy
---@field ID integer
---@field TraitCondID integer
---@field TraitNodeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitCond self
function row:SetID(value) end

---Gets the value of field 'TraitCondID'.
---@return integer value
function row:GetTraitCondID() end

---Sets the value of field 'TraitCondID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitCond self
function row:SetTraitCondID(value) end

---Navigates foreign relationship to 'TraitCond' via 'TraitCondID'.
---@return dbc.row.v1215.TraitCond|nil
function row:GetTraitCond() end

---Creates a related 'TraitCond' row and automatically links 'TraitCondID'.
---@param data? table
---@return dbc.row.v1215.TraitCond
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeID'.
---@return integer value
function row:GetTraitNodeID() end

---Sets the value of field 'TraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitCond self
function row:SetTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Table container for TraitNodeXTraitCond (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeXTraitCond : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeXTraitCond
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeXTraitCond
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeXTraitCond|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeXTraitCond
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeXTraitCond>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeXTraitCond[]
function tbl:GetByRelation(foreign_id) end

return {}
