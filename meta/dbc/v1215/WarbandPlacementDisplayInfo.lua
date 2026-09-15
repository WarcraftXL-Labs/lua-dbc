---@meta
-- Generated LuaLS annotations for WarbandPlacementDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandPlacementDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandPlacementDisplayInfo : RowProxy
---@field ID integer
---@field WarbandScenePlacementID integer
---@field Field_11_2_0_61476_001 integer
---@field Field_11_2_0_61476_002 integer
---@field Field_11_2_0_61476_003 integer
---@field Field_11_2_0_61476_004 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'WarbandScenePlacementID'.
---@return integer value
function row:GetWarbandScenePlacementID() end

---Sets the value of field 'WarbandScenePlacementID'.
---@param value integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo self
function row:SetWarbandScenePlacementID(value) end

---Navigates foreign relationship to 'WarbandScenePlacement' via 'WarbandScenePlacementID'.
---@return dbc.row.v1215.WarbandScenePlacement|nil
function row:GetWarbandScenePlacement() end

---Creates a related 'WarbandScenePlacement' row and automatically links 'WarbandScenePlacementID'.
---@param data? table
---@return dbc.row.v1215.WarbandScenePlacement
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_2_0_61476_001'.
---@return integer value
function row:GetField_11_2_0_61476_001() end

---Sets the value of field 'Field_11_2_0_61476_001'.
---@param value integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo self
function row:SetField_11_2_0_61476_001(value) end

---Gets the value of field 'Field_11_2_0_61476_002'.
---@return integer value
function row:GetField_11_2_0_61476_002() end

---Sets the value of field 'Field_11_2_0_61476_002'.
---@param value integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo self
function row:SetField_11_2_0_61476_002(value) end

---Gets the value of field 'Field_11_2_0_61476_003'.
---@return integer value
function row:GetField_11_2_0_61476_003() end

---Sets the value of field 'Field_11_2_0_61476_003'.
---@param value integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo self
function row:SetField_11_2_0_61476_003(value) end

---Gets the value of field 'Field_11_2_0_61476_004'.
---@return integer value
function row:GetField_11_2_0_61476_004() end

---Sets the value of field 'Field_11_2_0_61476_004'.
---@param value integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo self
function row:SetField_11_2_0_61476_004(value) end

---Table container for WarbandPlacementDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandPlacementDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.WarbandPlacementDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandPlacementDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandPlacementDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandPlacementDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
