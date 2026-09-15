---@meta
-- Generated LuaLS annotations for RelicTalent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RelicTalent in build 12.1.5.69594.
---@class dbc.row.v1215.RelicTalent : RowProxy
---@field ID integer
---@field Type integer
---@field ArtifactPowerID integer
---@field ArtifactPowerLabel integer
---@field PVal integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RelicTalent self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.RelicTalent self
function row:SetType(value) end

---Gets the value of field 'ArtifactPowerID'.
---@return integer value
function row:GetArtifactPowerID() end

---Sets the value of field 'ArtifactPowerID'.
---@param value integer
---@return dbc.row.v1215.RelicTalent self
function row:SetArtifactPowerID(value) end

---Navigates foreign relationship to 'ArtifactPower' via 'ArtifactPowerID'.
---@return dbc.row.v1215.ArtifactPower|nil
function row:GetArtifactPower() end

---Creates a related 'ArtifactPower' row and automatically links 'ArtifactPowerID'.
---@param data? table
---@return dbc.row.v1215.ArtifactPower
function row:CreateRelated(data) end

---Gets the value of field 'ArtifactPowerLabel'.
---@return integer value
function row:GetArtifactPowerLabel() end

---Sets the value of field 'ArtifactPowerLabel'.
---@param value integer
---@return dbc.row.v1215.RelicTalent self
function row:SetArtifactPowerLabel(value) end

---Gets the value of field 'PVal'.
---@return integer value
function row:GetPVal() end

---Sets the value of field 'PVal'.
---@param value integer
---@return dbc.row.v1215.RelicTalent self
function row:SetPVal(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.RelicTalent self
function row:SetFlags(value) end

---Table container for RelicTalent (Build 12.1.5.69594).
---@class dbc.Table.v1215.RelicTalent : DbcTable
---@field [integer] dbc.row.v1215.RelicTalent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RelicTalent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RelicTalent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RelicTalent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RelicTalent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RelicTalent[]
function tbl:GetByRelation(foreign_id) end

return {}
