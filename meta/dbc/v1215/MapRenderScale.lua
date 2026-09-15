---@meta
-- Generated LuaLS annotations for MapRenderScale (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MapRenderScale in build 12.1.5.69594.
---@class dbc.row.v1215.MapRenderScale : RowProxy
---@field ID integer
---@field MapID integer
---@field Field_10_0_0_44795_001 number 1…10, default 1
---@field Field_10_0_0_44795_002 number 1…10, default 1
---@field Field_10_0_0_44795_003 number 0.1…10
---@field Field_10_0_0_44795_004 number 0.1…10
---@field Field_10_0_0_44795_005 number 0…1000
---@field Field_10_0_0_44795_006 number 1…1000
---@field Field_10_0_0_44795_007 number 0.5…10
---@field Field_11_0_0_54675_008 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MapRenderScale self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.MapRenderScale self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_44795_001'.
---@return number value
function row:GetField_10_0_0_44795_001() end

---Sets the value of field 'Field_10_0_0_44795_001'.
---@param value number
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_10_0_0_44795_001(value) end

---Gets the value of field 'Field_10_0_0_44795_002'.
---@return number value
function row:GetField_10_0_0_44795_002() end

---Sets the value of field 'Field_10_0_0_44795_002'.
---@param value number
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_10_0_0_44795_002(value) end

---Gets the value of field 'Field_10_0_0_44795_003'.
---@return number value
function row:GetField_10_0_0_44795_003() end

---Sets the value of field 'Field_10_0_0_44795_003'.
---@param value number
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_10_0_0_44795_003(value) end

---Gets the value of field 'Field_10_0_0_44795_004'.
---@return number value
function row:GetField_10_0_0_44795_004() end

---Sets the value of field 'Field_10_0_0_44795_004'.
---@param value number
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_10_0_0_44795_004(value) end

---Gets the value of field 'Field_10_0_0_44795_005'.
---@return number value
function row:GetField_10_0_0_44795_005() end

---Sets the value of field 'Field_10_0_0_44795_005'.
---@param value number
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_10_0_0_44795_005(value) end

---Gets the value of field 'Field_10_0_0_44795_006'.
---@return number value
function row:GetField_10_0_0_44795_006() end

---Sets the value of field 'Field_10_0_0_44795_006'.
---@param value number
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_10_0_0_44795_006(value) end

---Gets the value of field 'Field_10_0_0_44795_007'.
---@return number value
function row:GetField_10_0_0_44795_007() end

---Sets the value of field 'Field_10_0_0_44795_007'.
---@param value number
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_10_0_0_44795_007(value) end

---Gets the value of field 'Field_11_0_0_54675_008'.
---@return integer value
function row:GetField_11_0_0_54675_008() end

---Sets the value of field 'Field_11_0_0_54675_008'.
---@param value integer
---@return dbc.row.v1215.MapRenderScale self
function row:SetField_11_0_0_54675_008(value) end

---Table container for MapRenderScale (Build 12.1.5.69594).
---@class dbc.Table.v1215.MapRenderScale : DbcTable
---@field [integer] dbc.row.v1215.MapRenderScale
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MapRenderScale
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MapRenderScale|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MapRenderScale
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MapRenderScale>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MapRenderScale[]
function tbl:GetByRelation(foreign_id) end

return {}
