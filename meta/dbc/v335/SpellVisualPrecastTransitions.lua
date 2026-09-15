---@meta
-- Generated LuaLS annotations for SpellVisualPrecastTransitions (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellVisualPrecastTransitions in build 3.3.5.12340.
---@class dbc.row.v335.SpellVisualPrecastTransitions : RowProxy
---@field ID integer
---@field PrecastLoadAnimName string todo: fk AnimationData by name?
---@field PrecastHoldAnimName string todo: fk AnimationData by name?

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellVisualPrecastTransitions self
function row:SetID(value) end

---Gets the value of field 'PrecastLoadAnimName'.
---@return string value
function row:GetPrecastLoadAnimName() end

---Sets the value of field 'PrecastLoadAnimName'.
---@param value string
---@return dbc.row.v335.SpellVisualPrecastTransitions self
function row:SetPrecastLoadAnimName(value) end

---Gets the value of field 'PrecastHoldAnimName'.
---@return string value
function row:GetPrecastHoldAnimName() end

---Sets the value of field 'PrecastHoldAnimName'.
---@param value string
---@return dbc.row.v335.SpellVisualPrecastTransitions self
function row:SetPrecastHoldAnimName(value) end

---Table container for SpellVisualPrecastTransitions (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellVisualPrecastTransitions : DbcTable
---@field [integer] dbc.row.v335.SpellVisualPrecastTransitions
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellVisualPrecastTransitions
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualPrecastTransitions|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualPrecastTransitions
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellVisualPrecastTransitions>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellVisualPrecastTransitions[]
function tbl:GetByRelation(foreign_id) end

return {}
