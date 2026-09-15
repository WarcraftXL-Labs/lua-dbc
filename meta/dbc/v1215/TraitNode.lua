---@meta
-- Generated LuaLS annotations for TraitNode (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitNode in build 12.1.5.69594.
---@class dbc.row.v1215.TraitNode : RowProxy
---@field ID integer
---@field TraitTreeID integer
---@field PosX integer
---@field PosY integer
---@field Type integer 0: Single, 1: Tiered, 2: Selection
---@field Flags integer &1: ShowMultipleIcons
---@field TraitSubTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitNode self
function row:SetID(value) end

---Gets the value of field 'TraitTreeID'.
---@return integer value
function row:GetTraitTreeID() end

---Sets the value of field 'TraitTreeID'.
---@param value integer
---@return dbc.row.v1215.TraitNode self
function row:SetTraitTreeID(value) end

---Navigates foreign relationship to 'TraitTree' via 'TraitTreeID'.
---@return dbc.row.v1215.TraitTree|nil
function row:GetTraitTree() end

---Creates a related 'TraitTree' row and automatically links 'TraitTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitTree
function row:CreateRelated(data) end

---Gets the value of field 'PosX'.
---@return integer value
function row:GetPosX() end

---Sets the value of field 'PosX'.
---@param value integer
---@return dbc.row.v1215.TraitNode self
function row:SetPosX(value) end

---Gets the value of field 'PosY'.
---@return integer value
function row:GetPosY() end

---Sets the value of field 'PosY'.
---@param value integer
---@return dbc.row.v1215.TraitNode self
function row:SetPosY(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.TraitNode self
function row:SetType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TraitNode self
function row:SetFlags(value) end

---Gets the value of field 'TraitSubTreeID'.
---@return integer value
function row:GetTraitSubTreeID() end

---Sets the value of field 'TraitSubTreeID'.
---@param value integer
---@return dbc.row.v1215.TraitNode self
function row:SetTraitSubTreeID(value) end

---Navigates foreign relationship to 'TraitSubTree' via 'TraitSubTreeID'.
---@return dbc.row.v1215.TraitSubTree|nil
function row:GetTraitSubTree() end

---Creates a related 'TraitSubTree' row and automatically links 'TraitSubTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitSubTree
function row:CreateRelated(data) end

---Table container for TraitNode (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitNode : DbcTable
---@field [integer] dbc.row.v1215.TraitNode
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitNode
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitNode|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitNode
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitNode>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitNode[]
function tbl:GetByRelation(foreign_id) end

return {}
