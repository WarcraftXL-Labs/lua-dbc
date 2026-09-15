---@meta
-- Generated LuaLS annotations for TraitDefinitionEffectPoints (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitDefinitionEffectPoints in build 12.1.5.69594.
---@class dbc.row.v1215.TraitDefinitionEffectPoints : RowProxy
---@field ID integer
---@field TraitDefinitionID integer
---@field EffectIndex integer
---@field OperationType integer
---@field CurveID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints self
function row:SetID(value) end

---Gets the value of field 'TraitDefinitionID'.
---@return integer value
function row:GetTraitDefinitionID() end

---Sets the value of field 'TraitDefinitionID'.
---@param value integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints self
function row:SetTraitDefinitionID(value) end

---Navigates foreign relationship to 'TraitDefinition' via 'TraitDefinitionID'.
---@return dbc.row.v1215.TraitDefinition|nil
function row:GetTraitDefinition() end

---Creates a related 'TraitDefinition' row and automatically links 'TraitDefinitionID'.
---@param data? table
---@return dbc.row.v1215.TraitDefinition
function row:CreateRelated(data) end

---Gets the value of field 'EffectIndex'.
---@return integer value
function row:GetEffectIndex() end

---Sets the value of field 'EffectIndex'.
---@param value integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints self
function row:SetEffectIndex(value) end

---Gets the value of field 'OperationType'.
---@return integer value
function row:GetOperationType() end

---Sets the value of field 'OperationType'.
---@param value integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints self
function row:SetOperationType(value) end

---Gets the value of field 'CurveID'.
---@return integer value
function row:GetCurveID() end

---Sets the value of field 'CurveID'.
---@param value integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints self
function row:SetCurveID(value) end

---Navigates foreign relationship to 'Curve' via 'CurveID'.
---@return dbc.row.v1215.Curve|nil
function row:GetCurve() end

---Creates a related 'Curve' row and automatically links 'CurveID'.
---@param data? table
---@return dbc.row.v1215.Curve
function row:CreateRelated(data) end

---Table container for TraitDefinitionEffectPoints (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitDefinitionEffectPoints : DbcTable
---@field [integer] dbc.row.v1215.TraitDefinitionEffectPoints
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitDefinitionEffectPoints
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitDefinitionEffectPoints>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitDefinitionEffectPoints[]
function tbl:GetByRelation(foreign_id) end

return {}
