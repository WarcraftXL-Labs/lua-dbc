---@meta
-- Generated LuaLS annotations for ProfTraitTree (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfTraitTree in build 12.1.5.69594.
---@class dbc.row.v1215.ProfTraitTree : RowProxy
---@field ID integer
---@field TraitTreeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitTree self
function row:SetID(value) end

---Gets the value of field 'TraitTreeID'.
---@return integer value
function row:GetTraitTreeID() end

---Sets the value of field 'TraitTreeID'.
---@param value integer
---@return dbc.row.v1215.ProfTraitTree self
function row:SetTraitTreeID(value) end

---Navigates foreign relationship to 'TraitTree' via 'TraitTreeID'.
---@return dbc.row.v1215.TraitTree|nil
function row:GetTraitTree() end

---Creates a related 'TraitTree' row and automatically links 'TraitTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitTree
function row:CreateRelated(data) end

---Table container for ProfTraitTree (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfTraitTree : DbcTable
---@field [integer] dbc.row.v1215.ProfTraitTree
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfTraitTree
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfTraitTree|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfTraitTree
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfTraitTree>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfTraitTree[]
function tbl:GetByRelation(foreign_id) end

return {}
