---@meta
-- Generated LuaLS annotations for CooldownViewerItemSpell (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CooldownViewerItemSpell in build 12.1.5.69594.
---@class dbc.row.v1215.CooldownViewerItemSpell : RowProxy
---@field ID integer
---@field SpellID integer
---@field OrderIndex integer Can also be named Priority depending on what the Client does with this.
---@field Field_12_1_0_68209_002 integer
---@field ItemID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CooldownViewerItemSpell self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.CooldownViewerItemSpell self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CooldownViewerItemSpell self
function row:SetOrderIndex(value) end

---Gets the value of field 'Field_12_1_0_68209_002'.
---@return integer value
function row:GetField_12_1_0_68209_002() end

---Sets the value of field 'Field_12_1_0_68209_002'.
---@param value integer
---@return dbc.row.v1215.CooldownViewerItemSpell self
function row:SetField_12_1_0_68209_002(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.CooldownViewerItemSpell self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Table container for CooldownViewerItemSpell (Build 12.1.5.69594).
---@class dbc.Table.v1215.CooldownViewerItemSpell : DbcTable
---@field [integer] dbc.row.v1215.CooldownViewerItemSpell
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CooldownViewerItemSpell
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CooldownViewerItemSpell|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CooldownViewerItemSpell
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CooldownViewerItemSpell>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CooldownViewerItemSpell[]
function tbl:GetByRelation(foreign_id) end

return {}
