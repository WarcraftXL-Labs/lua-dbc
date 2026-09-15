---@meta
-- Generated LuaLS annotations for LightShaft (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LightShaft in build 12.1.5.69594.
---@class dbc.row.v1215.LightShaft : RowProxy
---@field ID integer
---@field Color integer
---@field Field_11_0_0_54210_001 number
---@field Field_11_0_0_54210_002 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LightShaft self
function row:SetID(value) end

---Gets the value of field 'Color'.
---@return integer value
function row:GetColor() end

---Sets the value of field 'Color'.
---@param value integer
---@return dbc.row.v1215.LightShaft self
function row:SetColor(value) end

---Gets the value of field 'Field_11_0_0_54210_001'.
---@return number value
function row:GetField_11_0_0_54210_001() end

---Sets the value of field 'Field_11_0_0_54210_001'.
---@param value number
---@return dbc.row.v1215.LightShaft self
function row:SetField_11_0_0_54210_001(value) end

---Gets the value of field 'Field_11_0_0_54210_002'.
---@return number value
function row:GetField_11_0_0_54210_002() end

---Sets the value of field 'Field_11_0_0_54210_002'.
---@param value number
---@return dbc.row.v1215.LightShaft self
function row:SetField_11_0_0_54210_002(value) end

---Table container for LightShaft (Build 12.1.5.69594).
---@class dbc.Table.v1215.LightShaft : DbcTable
---@field [integer] dbc.row.v1215.LightShaft
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LightShaft
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LightShaft|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LightShaft
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LightShaft>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LightShaft[]
function tbl:GetByRelation(foreign_id) end

return {}
