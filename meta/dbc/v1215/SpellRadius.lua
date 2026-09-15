---@meta
-- Generated LuaLS annotations for SpellRadius (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellRadius in build 12.1.5.69594.
---@class dbc.row.v1215.SpellRadius : RowProxy
---@field ID integer
---@field Radius number
---@field RadiusPerLevel number
---@field RadiusMin number
---@field RadiusMax number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellRadius self
function row:SetID(value) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.SpellRadius self
function row:SetRadius(value) end

---Gets the value of field 'RadiusPerLevel'.
---@return number value
function row:GetRadiusPerLevel() end

---Sets the value of field 'RadiusPerLevel'.
---@param value number
---@return dbc.row.v1215.SpellRadius self
function row:SetRadiusPerLevel(value) end

---Gets the value of field 'RadiusMin'.
---@return number value
function row:GetRadiusMin() end

---Sets the value of field 'RadiusMin'.
---@param value number
---@return dbc.row.v1215.SpellRadius self
function row:SetRadiusMin(value) end

---Gets the value of field 'RadiusMax'.
---@return number value
function row:GetRadiusMax() end

---Sets the value of field 'RadiusMax'.
---@param value number
---@return dbc.row.v1215.SpellRadius self
function row:SetRadiusMax(value) end

---Table container for SpellRadius (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellRadius : DbcTable
---@field [integer] dbc.row.v1215.SpellRadius
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellRadius
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellRadius|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellRadius
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellRadius>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellRadius[]
function tbl:GetByRelation(foreign_id) end

return {}
