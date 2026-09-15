---@meta
-- Generated LuaLS annotations for OccluderCurtain (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of OccluderCurtain in build 12.1.5.69594.
---@class dbc.row.v1215.OccluderCurtain : RowProxy
---@field ID integer
---@field MapID integer
---@field Field_2_5_1_38043_001 integer
---@field Field_2_5_1_38043_002 integer
---@field Field_2_5_1_38043_003 integer
---@field Field_2_5_1_38043_004 integer
---@field Field_2_5_1_38043_005 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.OccluderCurtain self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.OccluderCurtain self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'Field_2_5_1_38043_001'.
---@return integer value
function row:GetField_2_5_1_38043_001() end

---Sets the value of field 'Field_2_5_1_38043_001'.
---@param value integer
---@return dbc.row.v1215.OccluderCurtain self
function row:SetField_2_5_1_38043_001(value) end

---Gets the value of field 'Field_2_5_1_38043_002'.
---@return integer value
function row:GetField_2_5_1_38043_002() end

---Sets the value of field 'Field_2_5_1_38043_002'.
---@param value integer
---@return dbc.row.v1215.OccluderCurtain self
function row:SetField_2_5_1_38043_002(value) end

---Gets the value of field 'Field_2_5_1_38043_003'.
---@return integer value
function row:GetField_2_5_1_38043_003() end

---Sets the value of field 'Field_2_5_1_38043_003'.
---@param value integer
---@return dbc.row.v1215.OccluderCurtain self
function row:SetField_2_5_1_38043_003(value) end

---Gets the value of field 'Field_2_5_1_38043_004'.
---@return integer value
function row:GetField_2_5_1_38043_004() end

---Sets the value of field 'Field_2_5_1_38043_004'.
---@param value integer
---@return dbc.row.v1215.OccluderCurtain self
function row:SetField_2_5_1_38043_004(value) end

---Gets the value of field 'Field_2_5_1_38043_005'.
---@return integer value
function row:GetField_2_5_1_38043_005() end

---Sets the value of field 'Field_2_5_1_38043_005'.
---@param value integer
---@return dbc.row.v1215.OccluderCurtain self
function row:SetField_2_5_1_38043_005(value) end

---Table container for OccluderCurtain (Build 12.1.5.69594).
---@class dbc.Table.v1215.OccluderCurtain : DbcTable
---@field [integer] dbc.row.v1215.OccluderCurtain
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.OccluderCurtain
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.OccluderCurtain|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.OccluderCurtain
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.OccluderCurtain>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.OccluderCurtain[]
function tbl:GetByRelation(foreign_id) end

return {}
