---@meta
-- Generated LuaLS annotations for UiMapAssignment (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiMapAssignment in build 12.1.5.69594.
---@class dbc.row.v1215.UiMapAssignment : RowProxy
---@field UiMin number[]
---@field UiMax number[]
---@field Region number[]
---@field ID integer
---@field UiMapID integer
---@field OrderIndex integer
---@field MapID integer
---@field AreaID integer
---@field WMODoodadPlacementID integer ADT's MODS uniqueId
---@field WMOGroupID integer WMO's group ID
---@field Field_11_2_5_62687_010 integer

local row = {}

---Gets the value of field 'UiMin'.
---@return number[] value
function row:GetUiMin() end

---Sets the value of field 'UiMin'.
---@param value number[]
---@return dbc.row.v1215.UiMapAssignment self
function row:SetUiMin(value) end

---Gets element at 1-based index in 'UiMin'.
---@param index integer
---@return number value
function row:GetUiMinItem(index) end

---Gets the value of field 'UiMax'.
---@return number[] value
function row:GetUiMax() end

---Sets the value of field 'UiMax'.
---@param value number[]
---@return dbc.row.v1215.UiMapAssignment self
function row:SetUiMax(value) end

---Gets element at 1-based index in 'UiMax'.
---@param index integer
---@return number value
function row:GetUiMaxItem(index) end

---Gets the value of field 'Region'.
---@return number[] value
function row:GetRegion() end

---Sets the value of field 'Region'.
---@param value number[]
---@return dbc.row.v1215.UiMapAssignment self
function row:SetRegion(value) end

---Gets element at 1-based index in 'Region'.
---@param index integer
---@return number value
function row:GetRegionItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetID(value) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetOrderIndex(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'WMODoodadPlacementID'.
---@return integer value
function row:GetWMODoodadPlacementID() end

---Sets the value of field 'WMODoodadPlacementID'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetWMODoodadPlacementID(value) end

---Navigates foreign relationship to 'WMODoodadPlacement' via 'WMODoodadPlacementID'.
---@return dbc.row.v1215.WMODoodadPlacement|nil
function row:GetWMODoodadPlacement() end

---Creates a related 'WMODoodadPlacement' row and automatically links 'WMODoodadPlacementID'.
---@param data? table
---@return dbc.row.v1215.WMODoodadPlacement
function row:CreateRelated(data) end

---Gets the value of field 'WMOGroupID'.
---@return integer value
function row:GetWMOGroupID() end

---Sets the value of field 'WMOGroupID'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetWMOGroupID(value) end

---Navigates foreign relationship to 'WMOAreaTable' via 'WMOGroupID'.
---@return dbc.row.v1215.WMOAreaTable|nil
function row:GetWMOGroup() end

---Creates a related 'WMOAreaTable' row and automatically links 'WMOGroupID'.
---@param data? table
---@return dbc.row.v1215.WMOAreaTable
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_2_5_62687_010'.
---@return integer value
function row:GetField_11_2_5_62687_010() end

---Sets the value of field 'Field_11_2_5_62687_010'.
---@param value integer
---@return dbc.row.v1215.UiMapAssignment self
function row:SetField_11_2_5_62687_010(value) end

---Table container for UiMapAssignment (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiMapAssignment : DbcTable
---@field [integer] dbc.row.v1215.UiMapAssignment
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiMapAssignment
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiMapAssignment|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiMapAssignment
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiMapAssignment>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiMapAssignment[]
function tbl:GetByRelation(foreign_id) end

return {}
