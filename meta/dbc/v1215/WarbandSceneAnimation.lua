---@meta
-- Generated LuaLS annotations for WarbandSceneAnimation (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WarbandSceneAnimation in build 12.1.5.69594.
---@class dbc.row.v1215.WarbandSceneAnimation : RowProxy
---@field ID integer
---@field SpellVisualKitID integer
---@field Event integer CharacterSelectionConstants.WarbandSceneAnimationEvent, 0: StartingPose, 1: Idle, 2: Mouseover, 3: Select, 4: Deselect, 5: Insert, 6: EnterWorld, 7: Spin, 8: Poke
---@field AnimKitID integer Looks to be AnimKit::ID
---@field Field_11_0_0_54210_003 integer
---@field TimeIsh number
---@field Field_11_0_0_54935_005 integer
---@field Field_11_0_0_55000_006 integer
---@field Field_11_1_0_58221_008 integer
---@field Field_11_0_0_54210_005 integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetID(value) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Event'.
---@return integer value
function row:GetEvent() end

---Sets the value of field 'Event'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetEvent(value) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_11_0_0_54210_003'.
---@return integer value
function row:GetField_11_0_0_54210_003() end

---Sets the value of field 'Field_11_0_0_54210_003'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetField_11_0_0_54210_003(value) end

---Gets the value of field 'TimeIsh'.
---@return number value
function row:GetTimeIsh() end

---Sets the value of field 'TimeIsh'.
---@param value number
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetTimeIsh(value) end

---Gets the value of field 'Field_11_0_0_54935_005'.
---@return integer value
function row:GetField_11_0_0_54935_005() end

---Sets the value of field 'Field_11_0_0_54935_005'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetField_11_0_0_54935_005(value) end

---Gets the value of field 'Field_11_0_0_55000_006'.
---@return integer value
function row:GetField_11_0_0_55000_006() end

---Sets the value of field 'Field_11_0_0_55000_006'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetField_11_0_0_55000_006(value) end

---Gets the value of field 'Field_11_1_0_58221_008'.
---@return integer value
function row:GetField_11_1_0_58221_008() end

---Sets the value of field 'Field_11_1_0_58221_008'.
---@param value integer
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetField_11_1_0_58221_008(value) end

---Gets the value of field 'Field_11_0_0_54210_005'.
---@return integer[] value
function row:GetField_11_0_0_54210_005() end

---Sets the value of field 'Field_11_0_0_54210_005'.
---@param value integer[]
---@return dbc.row.v1215.WarbandSceneAnimation self
function row:SetField_11_0_0_54210_005(value) end

---Gets element at 1-based index in 'Field_11_0_0_54210_005'.
---@param index integer
---@return integer value
function row:GetField_11_0_0_54210_005Item(index) end

---Table container for WarbandSceneAnimation (Build 12.1.5.69594).
---@class dbc.Table.v1215.WarbandSceneAnimation : DbcTable
---@field [integer] dbc.row.v1215.WarbandSceneAnimation
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WarbandSceneAnimation
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WarbandSceneAnimation|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WarbandSceneAnimation
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WarbandSceneAnimation>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WarbandSceneAnimation[]
function tbl:GetByRelation(foreign_id) end

return {}
