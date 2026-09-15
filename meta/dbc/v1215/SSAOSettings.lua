---@meta
-- Generated LuaLS annotations for SSAOSettings (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SSAOSettings in build 12.1.5.69594.
---@class dbc.row.v1215.SSAOSettings : RowProxy
---@field ID integer
---@field Field_8_2_0_30080_001 number
---@field Field_8_2_0_30080_002 number
---@field Field_8_2_0_30080_003 number
---@field Radius number default 1.85, World (view) space size of the occlusion sphere
---@field ShadowMult number default 1.1, Shadow Multiplier [0.0, 5.0] Effect strength linear multiplier
---@field ShadowPower number default 1.34, Shadow Power [0.5, 5.0] Effect strength pow modifier
---@field ShadowClamp number default 0.98, Shadow Clamp [0.0, 1.0]
---@field Field_12_0_0_63534_007 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SSAOSettings self
function row:SetID(value) end

---Gets the value of field 'Field_8_2_0_30080_001'.
---@return number value
function row:GetField_8_2_0_30080_001() end

---Sets the value of field 'Field_8_2_0_30080_001'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetField_8_2_0_30080_001(value) end

---Gets the value of field 'Field_8_2_0_30080_002'.
---@return number value
function row:GetField_8_2_0_30080_002() end

---Sets the value of field 'Field_8_2_0_30080_002'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetField_8_2_0_30080_002(value) end

---Gets the value of field 'Field_8_2_0_30080_003'.
---@return number value
function row:GetField_8_2_0_30080_003() end

---Sets the value of field 'Field_8_2_0_30080_003'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetField_8_2_0_30080_003(value) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetRadius(value) end

---Gets the value of field 'ShadowMult'.
---@return number value
function row:GetShadowMult() end

---Sets the value of field 'ShadowMult'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetShadowMult(value) end

---Gets the value of field 'ShadowPower'.
---@return number value
function row:GetShadowPower() end

---Sets the value of field 'ShadowPower'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetShadowPower(value) end

---Gets the value of field 'ShadowClamp'.
---@return number value
function row:GetShadowClamp() end

---Sets the value of field 'ShadowClamp'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetShadowClamp(value) end

---Gets the value of field 'Field_12_0_0_63534_007'.
---@return number value
function row:GetField_12_0_0_63534_007() end

---Sets the value of field 'Field_12_0_0_63534_007'.
---@param value number
---@return dbc.row.v1215.SSAOSettings self
function row:SetField_12_0_0_63534_007(value) end

---Table container for SSAOSettings (Build 12.1.5.69594).
---@class dbc.Table.v1215.SSAOSettings : DbcTable
---@field [integer] dbc.row.v1215.SSAOSettings
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SSAOSettings
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SSAOSettings|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SSAOSettings
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SSAOSettings>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SSAOSettings[]
function tbl:GetByRelation(foreign_id) end

return {}
