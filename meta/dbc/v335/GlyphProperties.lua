---@meta
-- Generated LuaLS annotations for GlyphProperties (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GlyphProperties in build 3.3.5.12340.
---@class dbc.row.v335.GlyphProperties : RowProxy
---@field ID integer
---@field SpellID integer
---@field GlyphSlotFlags integer
---@field SpellIconID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.GlyphProperties self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v335.GlyphProperties self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v335.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v335.Spell
function row:CreateRelated(data) end

---Gets the value of field 'GlyphSlotFlags'.
---@return integer value
function row:GetGlyphSlotFlags() end

---Sets the value of field 'GlyphSlotFlags'.
---@param value integer
---@return dbc.row.v335.GlyphProperties self
function row:SetGlyphSlotFlags(value) end

---Gets the value of field 'SpellIconID'.
---@return integer value
function row:GetSpellIconID() end

---Sets the value of field 'SpellIconID'.
---@param value integer
---@return dbc.row.v335.GlyphProperties self
function row:SetSpellIconID(value) end

---Navigates foreign relationship to 'SpellIcon' via 'SpellIconID'.
---@return dbc.row.v335.SpellIcon|nil
function row:GetSpellIcon() end

---Creates a related 'SpellIcon' row and automatically links 'SpellIconID'.
---@param data? table
---@return dbc.row.v335.SpellIcon
function row:CreateRelated(data) end

---Table container for GlyphProperties (Build 3.3.5.12340).
---@class dbc.Table.v335.GlyphProperties : DbcTable
---@field [integer] dbc.row.v335.GlyphProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GlyphProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GlyphProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GlyphProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GlyphProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GlyphProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
