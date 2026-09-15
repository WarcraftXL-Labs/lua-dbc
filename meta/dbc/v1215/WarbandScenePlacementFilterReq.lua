---@meta
-- Generated LuaLS annotations for WarbandScenePlacementFilterReq (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandScenePlacementFilterReq in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandScenePlacementFilterReq : RowProxy
---@field ID integer
---@field Field_11_1_0_58221_002 integer
---@field Field_11_1_0_58221_005 integer
---@field RaceMasks integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacementFilterReq self
function row:SetID(value) end

---Gets the value of field 'Field_11_1_0_58221_002'.
---@return integer value
function row:GetField_11_1_0_58221_002() end

---Sets the value of field 'Field_11_1_0_58221_002'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacementFilterReq self
function row:SetField_11_1_0_58221_002(value) end

---Gets the value of field 'Field_11_1_0_58221_005'.
---@return integer value
function row:GetField_11_1_0_58221_005() end

---Sets the value of field 'Field_11_1_0_58221_005'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacementFilterReq self
function row:SetField_11_1_0_58221_005(value) end

---Gets the value of field 'RaceMasks'.
---@return integer[] value
function row:GetRaceMasks() end

---Sets the value of field 'RaceMasks'.
---@param value integer[]
---@return dbc.row.v1215.WarbandScenePlacementFilterReq self
function row:SetRaceMasks(value) end

---Gets element at 1-based index in 'RaceMasks'.
---@param index integer
---@return integer value
function row:GetRaceMasksItem(index) end

---Table container for WarbandScenePlacementFilterReq (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandScenePlacementFilterReq : DbcTable
---@field [integer] dbc.row.v1215.WarbandScenePlacementFilterReq
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandScenePlacementFilterReq
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScenePlacementFilterReq|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScenePlacementFilterReq
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandScenePlacementFilterReq>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandScenePlacementFilterReq[]
function tbl:GetByRelation(foreign_id) end

return {}
