---@meta
-- Generated LuaLS annotations for ObjectEffectModifier (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ObjectEffectModifier in build 3.3.5.12340.
---@class dbc.row.v335.ObjectEffectModifier : RowProxy
---@field ID integer
---@field InputType integer
---@field MapType integer
---@field OutputType integer
---@field Param number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ObjectEffectModifier self
function row:SetID(value) end

---Gets the value of field 'InputType'.
---@return integer value
function row:GetInputType() end

---Sets the value of field 'InputType'.
---@param value integer
---@return dbc.row.v335.ObjectEffectModifier self
function row:SetInputType(value) end

---Gets the value of field 'MapType'.
---@return integer value
function row:GetMapType() end

---Sets the value of field 'MapType'.
---@param value integer
---@return dbc.row.v335.ObjectEffectModifier self
function row:SetMapType(value) end

---Gets the value of field 'OutputType'.
---@return integer value
function row:GetOutputType() end

---Sets the value of field 'OutputType'.
---@param value integer
---@return dbc.row.v335.ObjectEffectModifier self
function row:SetOutputType(value) end

---Gets the value of field 'Param'.
---@return number[] value
function row:GetParam() end

---Sets the value of field 'Param'.
---@param value number[]
---@return dbc.row.v335.ObjectEffectModifier self
function row:SetParam(value) end

---Gets element at 1-based index in 'Param'.
---@param index integer
---@return number value
function row:GetParamItem(index) end

---Table container for ObjectEffectModifier (Build 3.3.5.12340).
---@class dbc.Table.v335.ObjectEffectModifier : DbcTable
---@field [integer] dbc.row.v335.ObjectEffectModifier
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ObjectEffectModifier
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffectModifier|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffectModifier
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ObjectEffectModifier>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ObjectEffectModifier[]
function tbl:GetByRelation(foreign_id) end

return {}
