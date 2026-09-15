---@meta
-- Generated LuaLS annotations for ArtifactPowerRank (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactPowerRank in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactPowerRank : RowProxy
---@field ID integer
---@field RankIndex integer
---@field SpellID integer
---@field ItemBonusListID integer
---@field AuraPointsOverride number
---@field ArtifactPowerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactPowerRank self
function row:SetID(value) end

---Gets the value of field 'RankIndex'.
---@return integer value
function row:GetRankIndex() end

---Sets the value of field 'RankIndex'.
---@param value integer
---@return dbc.row.v1215.ArtifactPowerRank self
function row:SetRankIndex(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ArtifactPowerRank self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ItemBonusListID'.
---@return integer value
function row:GetItemBonusListID() end

---Sets the value of field 'ItemBonusListID'.
---@param value integer
---@return dbc.row.v1215.ArtifactPowerRank self
function row:SetItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'ItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'AuraPointsOverride'.
---@return number value
function row:GetAuraPointsOverride() end

---Sets the value of field 'AuraPointsOverride'.
---@param value number
---@return dbc.row.v1215.ArtifactPowerRank self
function row:SetAuraPointsOverride(value) end

---Gets the value of field 'ArtifactPowerID'.
---@return integer value
function row:GetArtifactPowerID() end

---Sets the value of field 'ArtifactPowerID'.
---@param value integer
---@return dbc.row.v1215.ArtifactPowerRank self
function row:SetArtifactPowerID(value) end

---Navigates foreign relationship to 'ArtifactPower' via 'ArtifactPowerID'.
---@return dbc.row.v1215.ArtifactPower|nil
function row:GetArtifactPower() end

---Creates a related 'ArtifactPower' row and automatically links 'ArtifactPowerID'.
---@param data? table
---@return dbc.row.v1215.ArtifactPower
function row:CreateRelated(data) end

---Table container for ArtifactPowerRank (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactPowerRank : DbcTable
---@field [integer] dbc.row.v1215.ArtifactPowerRank
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactPowerRank
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactPowerRank|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactPowerRank
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactPowerRank>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactPowerRank[]
function tbl:GetByRelation(foreign_id) end

return {}
