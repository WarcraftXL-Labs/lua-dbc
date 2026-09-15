---@meta
-- Generated LuaLS annotations for GradientEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GradientEffect in build 12.1.5.69594.
---@class dbc.row.v1215.GradientEffect : RowProxy
---@field ID integer
---@field Colors0_r number
---@field Colors0_g number
---@field Colors0_b number
---@field Colors1_r number
---@field Colors1_g number
---@field Colors1_b number
---@field Colors2_r number
---@field Colors2_g number
---@field Colors2_b number
---@field Alpha1 number
---@field Alpha2 number
---@field EdgeColor_r number
---@field EdgeColor_g number
---@field EdgeColor_b number
---@field Field_8_1_0_28440_014 integer
---@field Field_8_1_0_28440_015 integer
---@field Field_10_0_5_47118_016 number
---@field Field_10_0_5_47118_017 number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GradientEffect self
function row:SetID(value) end

---Gets the value of field 'Colors0_r'.
---@return number value
function row:GetColors0_r() end

---Sets the value of field 'Colors0_r'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors0_r(value) end

---Gets the value of field 'Colors0_g'.
---@return number value
function row:GetColors0_g() end

---Sets the value of field 'Colors0_g'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors0_g(value) end

---Gets the value of field 'Colors0_b'.
---@return number value
function row:GetColors0_b() end

---Sets the value of field 'Colors0_b'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors0_b(value) end

---Gets the value of field 'Colors1_r'.
---@return number value
function row:GetColors1_r() end

---Sets the value of field 'Colors1_r'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors1_r(value) end

---Gets the value of field 'Colors1_g'.
---@return number value
function row:GetColors1_g() end

---Sets the value of field 'Colors1_g'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors1_g(value) end

---Gets the value of field 'Colors1_b'.
---@return number value
function row:GetColors1_b() end

---Sets the value of field 'Colors1_b'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors1_b(value) end

---Gets the value of field 'Colors2_r'.
---@return number value
function row:GetColors2_r() end

---Sets the value of field 'Colors2_r'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors2_r(value) end

---Gets the value of field 'Colors2_g'.
---@return number value
function row:GetColors2_g() end

---Sets the value of field 'Colors2_g'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors2_g(value) end

---Gets the value of field 'Colors2_b'.
---@return number value
function row:GetColors2_b() end

---Sets the value of field 'Colors2_b'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetColors2_b(value) end

---Gets the value of field 'Alpha1'.
---@return number value
function row:GetAlpha1() end

---Sets the value of field 'Alpha1'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetAlpha1(value) end

---Gets the value of field 'Alpha2'.
---@return number value
function row:GetAlpha2() end

---Sets the value of field 'Alpha2'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetAlpha2(value) end

---Gets the value of field 'EdgeColor_r'.
---@return number value
function row:GetEdgeColor_r() end

---Sets the value of field 'EdgeColor_r'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetEdgeColor_r(value) end

---Gets the value of field 'EdgeColor_g'.
---@return number value
function row:GetEdgeColor_g() end

---Sets the value of field 'EdgeColor_g'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetEdgeColor_g(value) end

---Gets the value of field 'EdgeColor_b'.
---@return number value
function row:GetEdgeColor_b() end

---Sets the value of field 'EdgeColor_b'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetEdgeColor_b(value) end

---Gets the value of field 'Field_8_1_0_28440_014'.
---@return integer value
function row:GetField_8_1_0_28440_014() end

---Sets the value of field 'Field_8_1_0_28440_014'.
---@param value integer
---@return dbc.row.v1215.GradientEffect self
function row:SetField_8_1_0_28440_014(value) end

---Gets the value of field 'Field_8_1_0_28440_015'.
---@return integer value
function row:GetField_8_1_0_28440_015() end

---Sets the value of field 'Field_8_1_0_28440_015'.
---@param value integer
---@return dbc.row.v1215.GradientEffect self
function row:SetField_8_1_0_28440_015(value) end

---Gets the value of field 'Field_10_0_5_47118_016'.
---@return number value
function row:GetField_10_0_5_47118_016() end

---Sets the value of field 'Field_10_0_5_47118_016'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetField_10_0_5_47118_016(value) end

---Gets the value of field 'Field_10_0_5_47118_017'.
---@return number value
function row:GetField_10_0_5_47118_017() end

---Sets the value of field 'Field_10_0_5_47118_017'.
---@param value number
---@return dbc.row.v1215.GradientEffect self
function row:SetField_10_0_5_47118_017(value) end

---Table container for GradientEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.GradientEffect : DbcTable
---@field [integer] dbc.row.v1215.GradientEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GradientEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GradientEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GradientEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GradientEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GradientEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
