---@meta
-- Generated LuaLS annotations for SpellDescriptionVariables (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellDescriptionVariables in build 3.3.5.12340.
---@class dbc.row.v335.SpellDescriptionVariables : RowProxy
---@field ID integer
---@field Variables string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellDescriptionVariables self
function row:SetID(value) end

---Gets the value of field 'Variables'.
---@return string value
function row:GetVariables() end

---Sets the value of field 'Variables'.
---@param value string
---@return dbc.row.v335.SpellDescriptionVariables self
function row:SetVariables(value) end

---Table container for SpellDescriptionVariables (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellDescriptionVariables : DbcTable
---@field [integer] dbc.row.v335.SpellDescriptionVariables
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellDescriptionVariables
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellDescriptionVariables|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellDescriptionVariables
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellDescriptionVariables>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellDescriptionVariables[]
function tbl:GetByRelation(foreign_id) end

return {}
