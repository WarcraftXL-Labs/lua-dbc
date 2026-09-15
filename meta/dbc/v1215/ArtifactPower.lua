---@meta
-- Generated LuaLS annotations for ArtifactPower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactPower in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactPower : RowProxy
---@field DisplayPos number[]
---@field ID integer
---@field ArtifactID integer
---@field MaxPurchasableRank integer
---@field Label integer
---@field Flags integer
---@field Tier integer

local row = {}

---Gets the value of field 'DisplayPos'.
---@return number[] value
function row:GetDisplayPos() end

---Sets the value of field 'DisplayPos'.
---@param value number[]
---@return dbc.row.v1215.ArtifactPower self
function row:SetDisplayPos(value) end

---Gets element at 1-based index in 'DisplayPos'.
---@param index integer
---@return number value
function row:GetDisplayPosItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactPower self
function row:SetID(value) end

---Gets the value of field 'ArtifactID'.
---@return integer value
function row:GetArtifactID() end

---Sets the value of field 'ArtifactID'.
---@param value integer
---@return dbc.row.v1215.ArtifactPower self
function row:SetArtifactID(value) end

---Navigates foreign relationship to 'Artifact' via 'ArtifactID'.
---@return dbc.row.v1215.Artifact|nil
function row:GetArtifact() end

---Creates a related 'Artifact' row and automatically links 'ArtifactID'.
---@param data? table
---@return dbc.row.v1215.Artifact
function row:CreateRelated(data) end

---Gets the value of field 'MaxPurchasableRank'.
---@return integer value
function row:GetMaxPurchasableRank() end

---Sets the value of field 'MaxPurchasableRank'.
---@param value integer
---@return dbc.row.v1215.ArtifactPower self
function row:SetMaxPurchasableRank(value) end

---Gets the value of field 'Label'.
---@return integer value
function row:GetLabel() end

---Sets the value of field 'Label'.
---@param value integer
---@return dbc.row.v1215.ArtifactPower self
function row:SetLabel(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ArtifactPower self
function row:SetFlags(value) end

---Gets the value of field 'Tier'.
---@return integer value
function row:GetTier() end

---Sets the value of field 'Tier'.
---@param value integer
---@return dbc.row.v1215.ArtifactPower self
function row:SetTier(value) end

---Table container for ArtifactPower (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactPower : DbcTable
---@field [integer] dbc.row.v1215.ArtifactPower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactPower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactPower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactPower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactPower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactPower[]
function tbl:GetByRelation(foreign_id) end

return {}
