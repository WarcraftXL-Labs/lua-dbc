---@meta
-- Generated LuaLS annotations for AzeritePower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AzeritePower in build 12.1.5.69594.
---@class dbc.row.v1215.AzeritePower : RowProxy
---@field ID integer
---@field SpellID integer
---@field ItemBonusListID integer
---@field SpecSetID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AzeritePower self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.AzeritePower self
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
---@return dbc.row.v1215.AzeritePower self
function row:SetItemBonusListID(value) end

---Navigates foreign relationship to 'ItemBonusList' via 'ItemBonusListID'.
---@return dbc.row.v1215.ItemBonusList|nil
function row:GetItemBonusList() end

---Creates a related 'ItemBonusList' row and automatically links 'ItemBonusListID'.
---@param data? table
---@return dbc.row.v1215.ItemBonusList
function row:CreateRelated(data) end

---Gets the value of field 'SpecSetID'.
---@return integer value
function row:GetSpecSetID() end

---Sets the value of field 'SpecSetID'.
---@param value integer
---@return dbc.row.v1215.AzeritePower self
function row:SetSpecSetID(value) end

---Navigates foreign relationship to 'SpecSetMember' via 'SpecSetID'.
---@return dbc.row.v1215.SpecSetMember|nil
function row:GetSpecSet() end

---Creates a related 'SpecSetMember' row and automatically links 'SpecSetID'.
---@param data? table
---@return dbc.row.v1215.SpecSetMember
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.AzeritePower self
function row:SetFlags(value) end

---Table container for AzeritePower (Build 12.1.5.69594).
---@class dbc.Table.v1215.AzeritePower : DbcTable
---@field [integer] dbc.row.v1215.AzeritePower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AzeritePower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AzeritePower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AzeritePower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AzeritePower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AzeritePower[]
function tbl:GetByRelation(foreign_id) end

return {}
