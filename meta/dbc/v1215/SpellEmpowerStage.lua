---@meta
-- Generated LuaLS annotations for SpellEmpowerStage (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellEmpowerStage in build 12.1.5.69594.
---@class dbc.row.v1215.SpellEmpowerStage : RowProxy
---@field ID integer
---@field Stage integer
---@field DurationMs integer
---@field SpellEmpowerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellEmpowerStage self
function row:SetID(value) end

---Gets the value of field 'Stage'.
---@return integer value
function row:GetStage() end

---Sets the value of field 'Stage'.
---@param value integer
---@return dbc.row.v1215.SpellEmpowerStage self
function row:SetStage(value) end

---Gets the value of field 'DurationMs'.
---@return integer value
function row:GetDurationMs() end

---Sets the value of field 'DurationMs'.
---@param value integer
---@return dbc.row.v1215.SpellEmpowerStage self
function row:SetDurationMs(value) end

---Gets the value of field 'SpellEmpowerID'.
---@return integer value
function row:GetSpellEmpowerID() end

---Sets the value of field 'SpellEmpowerID'.
---@param value integer
---@return dbc.row.v1215.SpellEmpowerStage self
function row:SetSpellEmpowerID(value) end

---Navigates foreign relationship to 'SpellEmpower' via 'SpellEmpowerID'.
---@return dbc.row.v1215.SpellEmpower|nil
function row:GetSpellEmpower() end

---Creates a related 'SpellEmpower' row and automatically links 'SpellEmpowerID'.
---@param data? table
---@return dbc.row.v1215.SpellEmpower
function row:CreateRelated(data) end

---Table container for SpellEmpowerStage (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellEmpowerStage : DbcTable
---@field [integer] dbc.row.v1215.SpellEmpowerStage
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellEmpowerStage
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellEmpowerStage|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellEmpowerStage
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellEmpowerStage>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellEmpowerStage[]
function tbl:GetByRelation(foreign_id) end

return {}
