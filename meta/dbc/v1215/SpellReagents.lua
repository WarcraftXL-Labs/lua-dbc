---@meta
-- Generated LuaLS annotations for SpellReagents (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellReagents in build 12.1.5.69594.
---@class dbc.row.v1215.SpellReagents : RowProxy
---@field ID integer
---@field SpellID integer
---@field Reagent integer[]
---@field ReagentCount integer[]
---@field ReagentReCraftCount integer[]
---@field ReagentSource integer[] CraftingOrderReagentSource

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellReagents self
function row:SetID(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellReagents self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'Reagent'.
---@return integer[] value
function row:GetReagent() end

---Sets the value of field 'Reagent'.
---@param value integer[]
---@return dbc.row.v1215.SpellReagents self
function row:SetReagent(value) end

---Gets element at 1-based index in 'Reagent'.
---@param index integer
---@return integer value
function row:GetReagentItem(index) end

---Navigates foreign relationship to 'Item' via 'Reagent'.
---@return dbc.row.v1215.Item|nil
function row:GetReagent() end

---Creates a related 'Item' row and automatically links 'Reagent'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'ReagentCount'.
---@return integer[] value
function row:GetReagentCount() end

---Sets the value of field 'ReagentCount'.
---@param value integer[]
---@return dbc.row.v1215.SpellReagents self
function row:SetReagentCount(value) end

---Gets element at 1-based index in 'ReagentCount'.
---@param index integer
---@return integer value
function row:GetReagentCountItem(index) end

---Gets the value of field 'ReagentReCraftCount'.
---@return integer[] value
function row:GetReagentReCraftCount() end

---Sets the value of field 'ReagentReCraftCount'.
---@param value integer[]
---@return dbc.row.v1215.SpellReagents self
function row:SetReagentReCraftCount(value) end

---Gets element at 1-based index in 'ReagentReCraftCount'.
---@param index integer
---@return integer value
function row:GetReagentReCraftCountItem(index) end

---Gets the value of field 'ReagentSource'.
---@return integer[] value
function row:GetReagentSource() end

---Sets the value of field 'ReagentSource'.
---@param value integer[]
---@return dbc.row.v1215.SpellReagents self
function row:SetReagentSource(value) end

---Gets element at 1-based index in 'ReagentSource'.
---@param index integer
---@return integer value
function row:GetReagentSourceItem(index) end

---Table container for SpellReagents (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellReagents : DbcTable
---@field [integer] dbc.row.v1215.SpellReagents
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellReagents
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellReagents|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellReagents
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellReagents>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellReagents[]
function tbl:GetByRelation(foreign_id) end

return {}
