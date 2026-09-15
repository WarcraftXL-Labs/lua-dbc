---@meta
-- Generated LuaLS annotations for TraitTreeLoadoutEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitTreeLoadoutEntry in build 12.1.5.69594.
---@class dbc.row.v1215.TraitTreeLoadoutEntry : RowProxy
---@field ID integer
---@field TraitTreeLoadoutID integer
---@field SelectedTraitNodeID integer
---@field SelectedTraitNodeEntryID integer
---@field NumPoints integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry self
function row:SetID(value) end

---Gets the value of field 'TraitTreeLoadoutID'.
---@return integer value
function row:GetTraitTreeLoadoutID() end

---Sets the value of field 'TraitTreeLoadoutID'.
---@param value integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry self
function row:SetTraitTreeLoadoutID(value) end

---Navigates foreign relationship to 'TraitTreeLoadout' via 'TraitTreeLoadoutID'.
---@return dbc.row.v1215.TraitTreeLoadout|nil
function row:GetTraitTreeLoadout() end

---Creates a related 'TraitTreeLoadout' row and automatically links 'TraitTreeLoadoutID'.
---@param data? table
---@return dbc.row.v1215.TraitTreeLoadout
function row:CreateRelated(data) end

---Gets the value of field 'SelectedTraitNodeID'.
---@return integer value
function row:GetSelectedTraitNodeID() end

---Sets the value of field 'SelectedTraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry self
function row:SetSelectedTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'SelectedTraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetSelectedTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'SelectedTraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'SelectedTraitNodeEntryID'.
---@return integer value
function row:GetSelectedTraitNodeEntryID() end

---Sets the value of field 'SelectedTraitNodeEntryID'.
---@param value integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry self
function row:SetSelectedTraitNodeEntryID(value) end

---Navigates foreign relationship to 'TraitNodeEntry' via 'SelectedTraitNodeEntryID'.
---@return dbc.row.v1215.TraitNodeEntry|nil
function row:GetSelectedTraitNodeEntry() end

---Creates a related 'TraitNodeEntry' row and automatically links 'SelectedTraitNodeEntryID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeEntry
function row:CreateRelated(data) end

---Gets the value of field 'NumPoints'.
---@return integer value
function row:GetNumPoints() end

---Sets the value of field 'NumPoints'.
---@param value integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry self
function row:SetNumPoints(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry self
function row:SetOrderIndex(value) end

---Table container for TraitTreeLoadoutEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitTreeLoadoutEntry : DbcTable
---@field [integer] dbc.row.v1215.TraitTreeLoadoutEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitTreeLoadoutEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitTreeLoadoutEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitTreeLoadoutEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
