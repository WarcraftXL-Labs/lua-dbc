---@meta
-- Generated LuaLS annotations for ArtifactTier (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactTier in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactTier : RowProxy
---@field ID integer
---@field ArtifactTier integer
---@field MaxNumTraits integer
---@field MaxArtifactKnowledge integer
---@field KnowledgePlayerCondition integer
---@field MinimumEmpowerKnowledge integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactTier self
function row:SetID(value) end

---Gets the value of field 'ArtifactTier'.
---@return integer value
function row:GetArtifactTier() end

---Sets the value of field 'ArtifactTier'.
---@param value integer
---@return dbc.row.v1215.ArtifactTier self
function row:SetArtifactTier(value) end

---Gets the value of field 'MaxNumTraits'.
---@return integer value
function row:GetMaxNumTraits() end

---Sets the value of field 'MaxNumTraits'.
---@param value integer
---@return dbc.row.v1215.ArtifactTier self
function row:SetMaxNumTraits(value) end

---Gets the value of field 'MaxArtifactKnowledge'.
---@return integer value
function row:GetMaxArtifactKnowledge() end

---Sets the value of field 'MaxArtifactKnowledge'.
---@param value integer
---@return dbc.row.v1215.ArtifactTier self
function row:SetMaxArtifactKnowledge(value) end

---Gets the value of field 'KnowledgePlayerCondition'.
---@return integer value
function row:GetKnowledgePlayerCondition() end

---Sets the value of field 'KnowledgePlayerCondition'.
---@param value integer
---@return dbc.row.v1215.ArtifactTier self
function row:SetKnowledgePlayerCondition(value) end

---Gets the value of field 'MinimumEmpowerKnowledge'.
---@return integer value
function row:GetMinimumEmpowerKnowledge() end

---Sets the value of field 'MinimumEmpowerKnowledge'.
---@param value integer
---@return dbc.row.v1215.ArtifactTier self
function row:SetMinimumEmpowerKnowledge(value) end

---Table container for ArtifactTier (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactTier : DbcTable
---@field [integer] dbc.row.v1215.ArtifactTier
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactTier
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactTier|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactTier
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactTier>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactTier[]
function tbl:GetByRelation(foreign_id) end

return {}
