---@meta
-- Generated LuaLS annotations for ArtifactUnlock (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactUnlock in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactUnlock : RowProxy
---@field ID integer
---@field PowerID integer
---@field PowerRank integer
---@field ItemBonusListID integer
---@field PlayerConditionID integer
---@field ArtifactID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactUnlock self
function row:SetID(value) end

---Gets the value of field 'PowerID'.
---@return integer value
function row:GetPowerID() end

---Sets the value of field 'PowerID'.
---@param value integer
---@return dbc.row.v1215.ArtifactUnlock self
function row:SetPowerID(value) end

---Navigates foreign relationship to 'Power' via 'PowerID'.
---@return dbc.row.v1215.Power|nil
function row:GetPower() end

---Creates a related 'Power' row and automatically links 'PowerID'.
---@param data? table
---@return dbc.row.v1215.Power
function row:CreateRelated(data) end

---Gets the value of field 'PowerRank'.
---@return integer value
function row:GetPowerRank() end

---Sets the value of field 'PowerRank'.
---@param value integer
---@return dbc.row.v1215.ArtifactUnlock self
function row:SetPowerRank(value) end

---Gets the value of field 'ItemBonusListID'.
---@return integer value
function row:GetItemBonusListID() end

---Sets the value of field 'ItemBonusListID'.
---@param value integer
---@return dbc.row.v1215.ArtifactUnlock self
function row:SetItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'ItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ArtifactUnlock self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ArtifactID'.
---@return integer value
function row:GetArtifactID() end

---Sets the value of field 'ArtifactID'.
---@param value integer
---@return dbc.row.v1215.ArtifactUnlock self
function row:SetArtifactID(value) end

---Navigates foreign relationship to 'Artifact' via 'ArtifactID'.
---@return dbc.row.v1215.Artifact|nil
function row:GetArtifact() end

---Creates a related 'Artifact' row and automatically links 'ArtifactID'.
---@param data? table
---@return dbc.row.v1215.Artifact
function row:CreateRelated(data) end

---Table container for ArtifactUnlock (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactUnlock : DbcTable
---@field [integer] dbc.row.v1215.ArtifactUnlock
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactUnlock
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactUnlock|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactUnlock
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactUnlock>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactUnlock[]
function tbl:GetByRelation(foreign_id) end

return {}
