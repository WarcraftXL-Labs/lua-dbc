---@meta
-- Generated LuaLS annotations for WarbandScenePlacement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandScenePlacement in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandScenePlacement : RowProxy
---@field Position number[]
---@field ID integer
---@field WarbandSceneID integer
---@field SlotType integer CharacterSelectionConstants.WarbandSceneSlotType, 0: Character, 1: Pet, 2: Chair
---@field Rotation number
---@field Scale number
---@field Field_11_0_0_54210_004 integer
---@field Field_11_0_0_54210_005 integer
---@field Field_12_0_0_63534_008 integer
---@field SlotID integer
---@field Field_12_0_0_63534_010 integer

local row = {}

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.WarbandScenePlacement self
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
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetID(value) end

---Gets the value of field 'WarbandSceneID'.
---@return integer value
function row:GetWarbandSceneID() end

---Sets the value of field 'WarbandSceneID'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetWarbandSceneID(value) end

---Navigates foreign relationship to 'WarbandScene' via 'WarbandSceneID'.
---@return dbc.row.v1215.WarbandScene|nil
function row:GetWarbandScene() end

---Creates a related 'WarbandScene' row and automatically links 'WarbandSceneID'.
---@param data? table
---@return dbc.row.v1215.WarbandScene
function row:CreateRelated(data) end

---Gets the value of field 'SlotType'.
---@return integer value
function row:GetSlotType() end

---Sets the value of field 'SlotType'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetSlotType(value) end

---Gets the value of field 'Rotation'.
---@return number value
function row:GetRotation() end

---Sets the value of field 'Rotation'.
---@param value number
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetRotation(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetScale(value) end

---Gets the value of field 'Field_11_0_0_54210_004'.
---@return integer value
function row:GetField_11_0_0_54210_004() end

---Sets the value of field 'Field_11_0_0_54210_004'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetField_11_0_0_54210_004(value) end

---Gets the value of field 'Field_11_0_0_54210_005'.
---@return integer value
function row:GetField_11_0_0_54210_005() end

---Sets the value of field 'Field_11_0_0_54210_005'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetField_11_0_0_54210_005(value) end

---Gets the value of field 'Field_12_0_0_63534_008'.
---@return integer value
function row:GetField_12_0_0_63534_008() end

---Sets the value of field 'Field_12_0_0_63534_008'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetField_12_0_0_63534_008(value) end

---Gets the value of field 'SlotID'.
---@return integer value
function row:GetSlotID() end

---Sets the value of field 'SlotID'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetSlotID(value) end

---Navigates foreign relationship to 'Slot' via 'SlotID'.
---@return dbc.row.v1215.Slot|nil
function row:GetSlot() end

---Creates a related 'Slot' row and automatically links 'SlotID'.
---@param data? table
---@return dbc.row.v1215.Slot
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_010'.
---@return integer value
function row:GetField_12_0_0_63534_010() end

---Sets the value of field 'Field_12_0_0_63534_010'.
---@param value integer
---@return dbc.row.v1215.WarbandScenePlacement self
function row:SetField_12_0_0_63534_010(value) end

---Table container for WarbandScenePlacement (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandScenePlacement : DbcTable
---@field [integer] dbc.row.v1215.WarbandScenePlacement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandScenePlacement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScenePlacement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandScenePlacement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandScenePlacement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandScenePlacement[]
function tbl:GetByRelation(foreign_id) end

return {}
