---@meta
-- Generated LuaLS annotations for SpellMissileMotion (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellMissileMotion in build 3.3.5.12340.
---@class dbc.row.v335.SpellMissileMotion : RowProxy
---@field ID integer
---@field Name string
---@field ScriptBody string
---@field Flags integer
---@field MissileCount integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellMissileMotion self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.SpellMissileMotion self
function row:SetName(value) end

---Gets the value of field 'ScriptBody'.
---@return string value
function row:GetScriptBody() end

---Sets the value of field 'ScriptBody'.
---@param value string
---@return dbc.row.v335.SpellMissileMotion self
function row:SetScriptBody(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.SpellMissileMotion self
function row:SetFlags(value) end

---Gets the value of field 'MissileCount'.
---@return integer value
function row:GetMissileCount() end

---Sets the value of field 'MissileCount'.
---@param value integer
---@return dbc.row.v335.SpellMissileMotion self
function row:SetMissileCount(value) end

---Table container for SpellMissileMotion (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellMissileMotion : DbcTable
---@field [integer] dbc.row.v335.SpellMissileMotion
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellMissileMotion
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellMissileMotion|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellMissileMotion
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellMissileMotion>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellMissileMotion[]
function tbl:GetByRelation(foreign_id) end

return {}
