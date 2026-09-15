---@meta
-- Generated LuaLS annotations for GuildPerkSpells (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GuildPerkSpells in build 12.1.5.69594.
---@class dbc.row.v1215.GuildPerkSpells : RowProxy
---@field ID integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GuildPerkSpells self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.GuildPerkSpells self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for GuildPerkSpells (Build 12.1.5.69594).
---@class dbc.Table.v1215.GuildPerkSpells : DbcTable
---@field [integer] dbc.row.v1215.GuildPerkSpells
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GuildPerkSpells
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GuildPerkSpells|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GuildPerkSpells
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GuildPerkSpells>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GuildPerkSpells[]
function tbl:GetByRelation(foreign_id) end

return {}
