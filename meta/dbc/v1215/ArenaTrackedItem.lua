---@meta
-- Generated LuaLS annotations for ArenaTrackedItem (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArenaTrackedItem in build 12.1.5.69594.
---@class dbc.row.v1215.ArenaTrackedItem : RowProxy
---@field ID integer
---@field ItemID integer
---@field SpellID integer
---@field ItemType integer 0 = NONE, 1 = CC REMOVER, 2 = OFFENSIVE, 3 = DEFENSIVE

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArenaTrackedItem self
function row:SetID(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.ArenaTrackedItem self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.ArenaTrackedItem self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'ItemType'.
---@return integer value
function row:GetItemType() end

---Sets the value of field 'ItemType'.
---@param value integer
---@return dbc.row.v1215.ArenaTrackedItem self
function row:SetItemType(value) end

---Table container for ArenaTrackedItem (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArenaTrackedItem : DbcTable
---@field [integer] dbc.row.v1215.ArenaTrackedItem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArenaTrackedItem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArenaTrackedItem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArenaTrackedItem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArenaTrackedItem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArenaTrackedItem[]
function tbl:GetByRelation(foreign_id) end

return {}
