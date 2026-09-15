---@meta
-- Generated LuaLS annotations for SpellClutterKitDistances (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellClutterKitDistances in build 12.1.5.69594.
---@class dbc.row.v1215.SpellClutterKitDistances : RowProxy
---@field ID integer
---@field Level integer
---@field Min number
---@field Max number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellClutterKitDistances self
function row:SetID(value) end

---Gets the value of field 'Level'.
---@return integer value
function row:GetLevel() end

---Sets the value of field 'Level'.
---@param value integer
---@return dbc.row.v1215.SpellClutterKitDistances self
function row:SetLevel(value) end

---Gets the value of field 'Min'.
---@return number value
function row:GetMin() end

---Sets the value of field 'Min'.
---@param value number
---@return dbc.row.v1215.SpellClutterKitDistances self
function row:SetMin(value) end

---Gets the value of field 'Max'.
---@return number value
function row:GetMax() end

---Sets the value of field 'Max'.
---@param value number
---@return dbc.row.v1215.SpellClutterKitDistances self
function row:SetMax(value) end

---Table container for SpellClutterKitDistances (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellClutterKitDistances : DbcTable
---@field [integer] dbc.row.v1215.SpellClutterKitDistances
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellClutterKitDistances
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellClutterKitDistances|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellClutterKitDistances
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellClutterKitDistances>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellClutterKitDistances[]
function tbl:GetByRelation(foreign_id) end

return {}
