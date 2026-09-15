---@meta
-- Generated LuaLS annotations for GameParameter (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameParameter in build 12.1.5.69594.
---@class dbc.row.v1215.GameParameter : RowProxy
---@field ID integer
---@field Type integer
---@field Min number
---@field Max number
---@field IndexIntoXXX integer 0…3 as of 9.0.1.34365
---@field Field_9_0_1_33978_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameParameter self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.GameParameter self
function row:SetType(value) end

---Gets the value of field 'Min'.
---@return number value
function row:GetMin() end

---Sets the value of field 'Min'.
---@param value number
---@return dbc.row.v1215.GameParameter self
function row:SetMin(value) end

---Gets the value of field 'Max'.
---@return number value
function row:GetMax() end

---Sets the value of field 'Max'.
---@param value number
---@return dbc.row.v1215.GameParameter self
function row:SetMax(value) end

---Gets the value of field 'IndexIntoXXX'.
---@return integer value
function row:GetIndexIntoXXX() end

---Sets the value of field 'IndexIntoXXX'.
---@param value integer
---@return dbc.row.v1215.GameParameter self
function row:SetIndexIntoXXX(value) end

---Gets the value of field 'Field_9_0_1_33978_004'.
---@return integer value
function row:GetField_9_0_1_33978_004() end

---Sets the value of field 'Field_9_0_1_33978_004'.
---@param value integer
---@return dbc.row.v1215.GameParameter self
function row:SetField_9_0_1_33978_004(value) end

---Table container for GameParameter (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameParameter : DbcTable
---@field [integer] dbc.row.v1215.GameParameter
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameParameter
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameParameter|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameParameter
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameParameter>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameParameter[]
function tbl:GetByRelation(foreign_id) end

return {}
