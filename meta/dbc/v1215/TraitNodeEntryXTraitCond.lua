---@meta
-- Generated LuaLS annotations for TraitNodeEntryXTraitCond (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeEntryXTraitCond in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeEntryXTraitCond : RowProxy
---@field ID integer
---@field TraitCondID integer
---@field TraitNodeEntryID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCond self
function row:SetID(value) end

---Gets the value of field 'TraitCondID'.
---@return integer value
function row:GetTraitCondID() end

---Sets the value of field 'TraitCondID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCond self
function row:SetTraitCondID(value) end

---Navigates foreign relationship to 'TraitCond' via 'TraitCondID'.
---@return dbc.row.v1215.TraitCond|nil
function row:GetTraitCond() end

---Creates a related 'TraitCond' row and automatically links 'TraitCondID'.
---@param data? table
---@return dbc.row.v1215.TraitCond
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeEntryID'.
---@return integer value
function row:GetTraitNodeEntryID() end

---Sets the value of field 'TraitNodeEntryID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCond self
function row:SetTraitNodeEntryID(value) end

---Navigates foreign relationship to 'TraitNodeEntry' via 'TraitNodeEntryID'.
---@return dbc.row.v1215.TraitNodeEntry|nil
function row:GetTraitNodeEntry() end

---Creates a related 'TraitNodeEntry' row and automatically links 'TraitNodeEntryID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeEntry
function row:CreateRelated(data) end

---Table container for TraitNodeEntryXTraitCond (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeEntryXTraitCond : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeEntryXTraitCond
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeEntryXTraitCond
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCond|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCond
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeEntryXTraitCond>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeEntryXTraitCond[]
function tbl:GetByRelation(foreign_id) end

return {}
