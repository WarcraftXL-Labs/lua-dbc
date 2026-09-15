---@meta
-- Generated LuaLS annotations for WarbandScenePlacementOption (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandScenePlacementOption in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandScenePlacementOption : RowProxy
---@field Position number[]
---@field ID integer
---@field WarbandScenePlacementID integer
---@field Orientation number
---@field Scale number Speculation
---@field Field_11_1_0_58221_005 integer
---@field Field_11_1_0_58221_006 integer

local row = {}

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.WarbandScenePlacementOption self
function row:SetPosition(value) end

---Gets element at 1-based index in 'Position'.
---@param index integer
---@return number value
function row:GetPositionItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacementOption self
function row:SetID(value) end

---Gets the value of field 'WarbandScenePlacementID'.
---@return integer value
function row:GetWarbandScenePlacementID() end

---Sets the value of field 'WarbandScenePlacementID'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacementOption self
function row:SetWarbandScenePlacementID(value) end

---Navigates foreign relationship to 'WarbandScenePlacement' via 'WarbandScenePlacementID'.
---@return dbc.row.v1215.WarbandScenePlacement|nil
function row:GetWarbandScenePlacement() end

---Creates a related 'WarbandScenePlacement' row and automatically links 'WarbandScenePlacementID'.
---@param data? table
---@return dbc.row.v1215.WarbandScenePlacement
function row:CreateRelated(data) end

---Gets the value of field 'Orientation'.
---@return number value
function row:GetOrientation() end

---Sets the value of field 'Orientation'.
---@param value number
---@return dbc.row.v1215.WarbandScenePlacementOption self
function row:SetOrientation(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.WarbandScenePlacementOption self
function row:SetScale(value) end

---Gets the value of field 'Field_11_1_0_58221_005'.
---@return integer value
function row:GetField_11_1_0_58221_005() end

---Sets the value of field 'Field_11_1_0_58221_005'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacementOption self
function row:SetField_11_1_0_58221_005(value) end

---Gets the value of field 'Field_11_1_0_58221_006'.
---@return integer value
function row:GetField_11_1_0_58221_006() end

---Sets the value of field 'Field_11_1_0_58221_006'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacementOption self
function row:SetField_11_1_0_58221_006(value) end

---Table container for WarbandScenePlacementOption (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandScenePlacementOption : DbcTable
---@field [integer] dbc.row.v1215.WarbandScenePlacementOption
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandScenePlacementOption
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScenePlacementOption|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScenePlacementOption
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandScenePlacementOption>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandScenePlacementOption[]
function tbl:GetByRelation(foreign_id) end

return {}
