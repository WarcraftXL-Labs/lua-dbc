---@meta
-- Generated LuaLS annotations for TraitNodeEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNodeEntry in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNodeEntry : RowProxy
---@field ID integer
---@field TraitDefinitionID integer
---@field MaxRanks integer
---@field NodeEntryType integer
---@field TraitSubTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntry self
function row:SetID(value) end

---Gets the value of field 'TraitDefinitionID'.
---@return integer value
function row:GetTraitDefinitionID() end

---Sets the value of field 'TraitDefinitionID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntry self
function row:SetTraitDefinitionID(value) end

---Navigates foreign relationship to 'TraitDefinition' via 'TraitDefinitionID'.
---@return dbc.row.v1215.TraitDefinition|nil
function row:GetTraitDefinition() end

---Creates a related 'TraitDefinition' row and automatically links 'TraitDefinitionID'.
---@param data? table
---@return dbc.row.v1215.TraitDefinition
function row:CreateRelated(data) end

---Gets the value of field 'MaxRanks'.
---@return integer value
function row:GetMaxRanks() end

---Sets the value of field 'MaxRanks'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntry self
function row:SetMaxRanks(value) end

---Gets the value of field 'NodeEntryType'.
---@return integer value
function row:GetNodeEntryType() end

---Sets the value of field 'NodeEntryType'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntry self
function row:SetNodeEntryType(value) end

---Gets the value of field 'TraitSubTreeID'.
---@return integer value
function row:GetTraitSubTreeID() end

---Sets the value of field 'TraitSubTreeID'.
---@param value integer
---@return dbc.row.v1215.TraitNodeEntry self
function row:SetTraitSubTreeID(value) end

---Navigates foreign relationship to 'TraitSubTree' via 'TraitSubTreeID'.
---@return dbc.row.v1215.TraitSubTree|nil
function row:GetTraitSubTree() end

---Creates a related 'TraitSubTree' row and automatically links 'TraitSubTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitSubTree
function row:CreateRelated(data) end

---Table container for TraitNodeEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNodeEntry : DbcTable
---@field [integer] dbc.row.v1215.TraitNodeEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNodeEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNodeEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNodeEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNodeEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
