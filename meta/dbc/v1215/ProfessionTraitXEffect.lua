---@meta
-- Generated LuaLS annotations for ProfessionTraitXEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ProfessionTraitXEffect in build 12.1.5.69594.
---@class dbc.row.v1215.ProfessionTraitXEffect : RowProxy
---@field ID integer
---@field ProfessionTraitID integer
---@field ProfessionEffectID integer
---@field Field_10_0_0_44649_003 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTraitXEffect self
function row:SetID(value) end

---Gets the value of field 'ProfessionTraitID'.
---@return integer value
function row:GetProfessionTraitID() end

---Sets the value of field 'ProfessionTraitID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTraitXEffect self
function row:SetProfessionTraitID(value) end

---Navigates foreign relationship to 'ProfessionTrait' via 'ProfessionTraitID'.
---@return dbc.row.v1215.ProfessionTrait|nil
function row:GetProfessionTrait() end

---Creates a related 'ProfessionTrait' row and automatically links 'ProfessionTraitID'.
---@param data? table
---@return dbc.row.v1215.ProfessionTrait
function row:CreateRelated(data) end

---Gets the value of field 'ProfessionEffectID'.
---@return integer value
function row:GetProfessionEffectID() end

---Sets the value of field 'ProfessionEffectID'.
---@param value integer
---@return dbc.row.v1215.ProfessionTraitXEffect self
function row:SetProfessionEffectID(value) end

---Navigates foreign relationship to 'ProfessionEffect' via 'ProfessionEffectID'.
---@return dbc.row.v1215.ProfessionEffect|nil
function row:GetProfessionEffect() end

---Creates a related 'ProfessionEffect' row and automatically links 'ProfessionEffectID'.
---@param data? table
---@return dbc.row.v1215.ProfessionEffect
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_44649_003'.
---@return integer value
function row:GetField_10_0_0_44649_003() end

---Sets the value of field 'Field_10_0_0_44649_003'.
---@param value integer
---@return dbc.row.v1215.ProfessionTraitXEffect self
function row:SetField_10_0_0_44649_003(value) end

---Table container for ProfessionTraitXEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.ProfessionTraitXEffect : DbcTable
---@field [integer] dbc.row.v1215.ProfessionTraitXEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ProfessionTraitXEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionTraitXEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ProfessionTraitXEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ProfessionTraitXEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ProfessionTraitXEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
