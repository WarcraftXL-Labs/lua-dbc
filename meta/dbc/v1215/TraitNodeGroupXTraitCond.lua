---@meta
-- Generated LuaLS annotations for TraitNodeGroupXTraitCond (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeGroupXTraitCond in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeGroupXTraitCond : RowProxy
---@field ID integer
---@field TraitCondID integer
---@field TraitNodeGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCond self
function row:SetID(value) end

---Gets the value of field 'TraitCondID'.
---@return integer value
function row:GetTraitCondID() end

---Sets the value of field 'TraitCondID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCond self
function row:SetTraitCondID(value) end

---Navigates foreign relationship to 'TraitCond' via 'TraitCondID'.
---@return dbc.row.v1215.TraitCond|nil
function row:GetTraitCond() end

---Creates a related 'TraitCond' row and automatically links 'TraitCondID'.
---@param data? table
---@return dbc.row.v1215.TraitCond
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeGroupID'.
---@return integer value
function row:GetTraitNodeGroupID() end

---Sets the value of field 'TraitNodeGroupID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCond self
function row:SetTraitNodeGroupID(value) end

---Navigates foreign relationship to 'TraitNodeGroup' via 'TraitNodeGroupID'.
---@return dbc.row.v1215.TraitNodeGroup|nil
function row:GetTraitNodeGroup() end

---Creates a related 'TraitNodeGroup' row and automatically links 'TraitNodeGroupID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeGroup
function row:CreateRelated(data) end

---Table container for TraitNodeGroupXTraitCond (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeGroupXTraitCond : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeGroupXTraitCond
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeGroupXTraitCond
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCond|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCond
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeGroupXTraitCond>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeGroupXTraitCond[]
function tbl:GetByRelation(foreign_id) end

return {}
