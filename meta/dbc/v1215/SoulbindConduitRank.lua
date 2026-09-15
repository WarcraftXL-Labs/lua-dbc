---@meta
-- Generated LuaLS annotations for SoulbindConduitRank (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SoulbindConduitRank in build 12.1.5.69594.
---@class dbc.row.v1215.SoulbindConduitRank : RowProxy
---@field ID integer
---@field RankIndex integer
---@field SpellID integer
---@field AuraPointsOverride number
---@field SoulbindConduitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRank self
function row:SetID(value) end

---Gets the value of field 'RankIndex'.
---@return integer value
function row:GetRankIndex() end

---Sets the value of field 'RankIndex'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRank self
function row:SetRankIndex(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRank self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'AuraPointsOverride'.
---@return number value
function row:GetAuraPointsOverride() end

---Sets the value of field 'AuraPointsOverride'.
---@param value number
---@return dbc.row.v1215.SoulbindConduitRank self
function row:SetAuraPointsOverride(value) end

---Gets the value of field 'SoulbindConduitID'.
---@return integer value
function row:GetSoulbindConduitID() end

---Sets the value of field 'SoulbindConduitID'.
---@param value integer
---@return dbc.row.v1215.SoulbindConduitRank self
function row:SetSoulbindConduitID(value) end

---Navigates foreign relationship to 'SoulbindConduit' via 'SoulbindConduitID'.
---@return dbc.row.v1215.SoulbindConduit|nil
function row:GetSoulbindConduit() end

---Creates a related 'SoulbindConduit' row and automatically links 'SoulbindConduitID'.
---@param data? table
---@return dbc.row.v1215.SoulbindConduit
function row:CreateRelated(data) end

---Table container for SoulbindConduitRank (Build 12.1.5.69594).
---@class dbc.Table.v1215.SoulbindConduitRank : DbcTable
---@field [integer] dbc.row.v1215.SoulbindConduitRank
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SoulbindConduitRank
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitRank|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SoulbindConduitRank
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SoulbindConduitRank>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SoulbindConduitRank[]
function tbl:GetByRelation(foreign_id) end

return {}
