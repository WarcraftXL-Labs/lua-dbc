---@meta
-- Generated LuaLS annotations for ProfessionTrait (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionTrait in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionTrait : RowProxy
---@field ID integer
---@field TraitDefinitionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTrait self
function row:SetID(value) end

---Gets the value of field 'TraitDefinitionID'.
---@return integer value
function row:GetTraitDefinitionID() end

---Sets the value of field 'TraitDefinitionID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTrait self
function row:SetTraitDefinitionID(value) end

---Navigates foreign relationship to 'TraitDefinition' via 'TraitDefinitionID'.
---@return dbc.row.v1215.TraitDefinition|nil
function row:GetTraitDefinition() end

---Creates a related 'TraitDefinition' row and automatically links 'TraitDefinitionID'.
---@param data? table
---@return dbc.row.v1215.TraitDefinition
function row:CreateRelated(data) end

---Table container for ProfessionTrait (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionTrait : DbcTable
---@field [integer] dbc.row.v1215.ProfessionTrait
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionTrait
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionTrait|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionTrait
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionTrait>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionTrait[]
function tbl:GetByRelation(foreign_id) end

return {}
