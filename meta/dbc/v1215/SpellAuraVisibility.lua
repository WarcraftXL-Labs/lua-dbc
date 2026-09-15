---@meta
-- Generated LuaLS annotations for SpellAuraVisibility (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellAuraVisibility in build 12.1.5.69594.
---@class dbc.row.v1215.SpellAuraVisibility : RowProxy
---@field ID integer
---@field Type integer 0: RAID_INCOMBAT; 1: RAID_OUTOFCOMBAT; 2: ENEMY_TARGET
---@field Flags integer &0x1: alwaysShowMine
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraVisibility self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.SpellAuraVisibility self
function row:SetType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellAuraVisibility self
function row:SetFlags(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellAuraVisibility self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellAuraVisibility (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellAuraVisibility : DbcTable
---@field [integer] dbc.row.v1215.SpellAuraVisibility
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellAuraVisibility
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraVisibility|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellAuraVisibility
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellAuraVisibility>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellAuraVisibility[]
function tbl:GetByRelation(foreign_id) end

return {}
