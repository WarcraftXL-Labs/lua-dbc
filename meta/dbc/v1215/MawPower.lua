---@meta
-- Generated LuaLS annotations for MawPower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MawPower in build 12.1.5.69594.
---@class dbc.row.v1215.MawPower : RowProxy
---@field ID integer
---@field SpellID integer
---@field MawPowerRarityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MawPower self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.MawPower self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MawPowerRarityID'.
---@return integer value
function row:GetMawPowerRarityID() end

---Sets the value of field 'MawPowerRarityID'.
---@param value integer
---@return dbc.row.v1215.MawPower self
function row:SetMawPowerRarityID(value) end

---Navigates foreign relationship to 'MawPowerRarity' via 'MawPowerRarityID'.
---@return dbc.row.v1215.MawPowerRarity|nil
function row:GetMawPowerRarity() end

---Creates a related 'MawPowerRarity' row and automatically links 'MawPowerRarityID'.
---@param data? table
---@return dbc.row.v1215.MawPowerRarity
function row:CreateRelated(data) end

---Table container for MawPower (Build 12.1.5.69594).
---@class dbc.Table.v1215.MawPower : DbcTable
---@field [integer] dbc.row.v1215.MawPower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MawPower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MawPower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MawPower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MawPower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MawPower[]
function tbl:GetByRelation(foreign_id) end

return {}
