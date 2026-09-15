---@meta
-- Generated LuaLS annotations for ObjectEffectPackage (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ObjectEffectPackage in build 3.3.5.12340.
---@class dbc.row.v335.ObjectEffectPackage : RowProxy
---@field ID integer
---@field Name string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ObjectEffectPackage self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.ObjectEffectPackage self
function row:SetName(value) end

---Table container for ObjectEffectPackage (Build 3.3.5.12340).
---@class dbc.Table.v335.ObjectEffectPackage : DbcTable
---@field [integer] dbc.row.v335.ObjectEffectPackage
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ObjectEffectPackage
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffectPackage|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffectPackage
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ObjectEffectPackage>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ObjectEffectPackage[]
function tbl:GetByRelation(foreign_id) end

return {}
