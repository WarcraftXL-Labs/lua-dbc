---@meta
-- Generated LuaLS annotations for TraitNodeXTraitNodeEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeXTraitNodeEntry in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeXTraitNodeEntry : RowProxy
---@field ID integer
---@field TraitNodeID integer
---@field TraitNodeEntryID integer
---@field Index integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry self
function row:SetID(value) end

---Gets the value of field 'TraitNodeID'.
---@return integer value
function row:GetTraitNodeID() end

---Sets the value of field 'TraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry self
function row:SetTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeEntryID'.
---@return integer value
function row:GetTraitNodeEntryID() end

---Sets the value of field 'TraitNodeEntryID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry self
function row:SetTraitNodeEntryID(value) end

---Navigates foreign relationship to 'TraitNodeEntry' via 'TraitNodeEntryID'.
---@return dbc.row.v1215.TraitNodeEntry|nil
function row:GetTraitNodeEntry() end

---Creates a related 'TraitNodeEntry' row and automatically links 'TraitNodeEntryID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeEntry
function row:CreateRelated(data) end

---Gets the value of field 'Index'.
---@return integer value
function row:GetIndex() end

---Sets the value of field 'Index'.
---@param value integer
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry self
function row:SetIndex(value) end

---Table container for TraitNodeXTraitNodeEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeXTraitNodeEntry : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeXTraitNodeEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeXTraitNodeEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeXTraitNodeEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
