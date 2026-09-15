---@meta
-- Generated LuaLS annotations for SpellCastingRequirements (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellCastingRequirements in build 12.1.5.69594.
---@class dbc.row.v1215.SpellCastingRequirements : RowProxy
---@field ID integer
---@field SpellID integer
---@field FacingCasterFlags integer
---@field MinFactionID integer
---@field MinReputation integer
---@field RequiredAreasID integer
---@field RequiredAuraVision integer
---@field RequiresSpellFocus integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'FacingCasterFlags'.
---@return integer value
function row:GetFacingCasterFlags() end

---Sets the value of field 'FacingCasterFlags'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetFacingCasterFlags(value) end

---Gets the value of field 'MinFactionID'.
---@return integer value
function row:GetMinFactionID() end

---Sets the value of field 'MinFactionID'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetMinFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'MinFactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetMinFaction() end

---Creates a related 'Faction' row and automatically links 'MinFactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'MinReputation'.
---@return integer value
function row:GetMinReputation() end

---Sets the value of field 'MinReputation'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetMinReputation(value) end

---Gets the value of field 'RequiredAreasID'.
---@return integer value
function row:GetRequiredAreasID() end

---Sets the value of field 'RequiredAreasID'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetRequiredAreasID(value) end

---Navigates foreign relationship to 'AreaGroup' via 'RequiredAreasID'.
---@return dbc.row.v1215.AreaGroup|nil
function row:GetRequiredAreas() end

---Creates a related 'AreaGroup' row and automatically links 'RequiredAreasID'.
---@param data? table
---@return dbc.row.v1215.AreaGroup
function row:CreateRelated(data) end

---Gets the value of field 'RequiredAuraVision'.
---@return integer value
function row:GetRequiredAuraVision() end

---Sets the value of field 'RequiredAuraVision'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetRequiredAuraVision(value) end

---Gets the value of field 'RequiresSpellFocus'.
---@return integer value
function row:GetRequiresSpellFocus() end

---Sets the value of field 'RequiresSpellFocus'.
---@param value integer
---@return dbc.row.v1215.SpellCastingRequirements self
function row:SetRequiresSpellFocus(value) end

---Table container for SpellCastingRequirements (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellCastingRequirements : DbcTable
---@field [integer] dbc.row.v1215.SpellCastingRequirements
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellCastingRequirements
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellCastingRequirements|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellCastingRequirements
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellCastingRequirements>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellCastingRequirements[]
function tbl:GetByRelation(foreign_id) end

return {}
