---@meta
-- Generated LuaLS annotations for GarrFollSupportSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollSupportSpell in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollSupportSpell : RowProxy
---@field ID integer
---@field HordeSpellID integer
---@field AllianceSpellID integer
---@field OrderIndex integer
---@field GarrFollowerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollSupportSpell self
function row:SetID(value) end

---Gets the value of field 'HordeSpellID'.
---@return integer value
function row:GetHordeSpellID() end

---Sets the value of field 'HordeSpellID'.
---@param value integer
---@return dbc.row.v1215.GarrFollSupportSpell self
function row:SetHordeSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'HordeSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetHordeSpell() end

---Creates a related 'Spell' row and automatically links 'HordeSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'AllianceSpellID'.
---@return integer value
function row:GetAllianceSpellID() end

---Sets the value of field 'AllianceSpellID'.
---@param value integer
---@return dbc.row.v1215.GarrFollSupportSpell self
function row:SetAllianceSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'AllianceSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetAllianceSpell() end

---Creates a related 'Spell' row and automatically links 'AllianceSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.GarrFollSupportSpell self
function row:SetOrderIndex(value) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.GarrFollSupportSpell self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Table container for GarrFollSupportSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollSupportSpell : DbcTable
---@field [integer] dbc.row.v1215.GarrFollSupportSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollSupportSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollSupportSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollSupportSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollSupportSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollSupportSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
