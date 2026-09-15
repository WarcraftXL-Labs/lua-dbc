---@meta
-- Generated LuaLS annotations for ManagedWorldState (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ManagedWorldState in build 12.1.5.69594.
---@class dbc.row.v1215.ManagedWorldState : RowProxy
---@field ID integer
---@field CurrentStageWorldStateID integer
---@field ProgressWorldStateID integer
---@field UpTimeSecs integer
---@field DownTimeSecs integer
---@field AccumulationStateTargetValue integer
---@field DepletionStateTargetValue integer
---@field AccumulationAmountPerMinute integer
---@field DepletionAmountPerMinute integer
---@field Field_8_1_5_29418_009 integer Contribution State related, probably when to show or something (is active and under attack)
---@field OccurrencesWorldStateID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetID(value) end

---Gets the value of field 'CurrentStageWorldStateID'.
---@return integer value
function row:GetCurrentStageWorldStateID() end

---Sets the value of field 'CurrentStageWorldStateID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetCurrentStageWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'CurrentStageWorldStateID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetCurrentStageWorldState() end

---Creates a related 'WorldState' row and automatically links 'CurrentStageWorldStateID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'ProgressWorldStateID'.
---@return integer value
function row:GetProgressWorldStateID() end

---Sets the value of field 'ProgressWorldStateID'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetProgressWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'ProgressWorldStateID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetProgressWorldState() end

---Creates a related 'WorldState' row and automatically links 'ProgressWorldStateID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'UpTimeSecs'.
---@return integer value
function row:GetUpTimeSecs() end

---Sets the value of field 'UpTimeSecs'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetUpTimeSecs(value) end

---Gets the value of field 'DownTimeSecs'.
---@return integer value
function row:GetDownTimeSecs() end

---Sets the value of field 'DownTimeSecs'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetDownTimeSecs(value) end

---Gets the value of field 'AccumulationStateTargetValue'.
---@return integer value
function row:GetAccumulationStateTargetValue() end

---Sets the value of field 'AccumulationStateTargetValue'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetAccumulationStateTargetValue(value) end

---Gets the value of field 'DepletionStateTargetValue'.
---@return integer value
function row:GetDepletionStateTargetValue() end

---Sets the value of field 'DepletionStateTargetValue'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetDepletionStateTargetValue(value) end

---Gets the value of field 'AccumulationAmountPerMinute'.
---@return integer value
function row:GetAccumulationAmountPerMinute() end

---Sets the value of field 'AccumulationAmountPerMinute'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetAccumulationAmountPerMinute(value) end

---Gets the value of field 'DepletionAmountPerMinute'.
---@return integer value
function row:GetDepletionAmountPerMinute() end

---Sets the value of field 'DepletionAmountPerMinute'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetDepletionAmountPerMinute(value) end

---Gets the value of field 'Field_8_1_5_29418_009'.
---@return integer value
function row:GetField_8_1_5_29418_009() end

---Sets the value of field 'Field_8_1_5_29418_009'.
---@param value integer
---@return dbc.row.v1215.ManagedWorldState self
function row:SetField_8_1_5_29418_009(value) end

---Gets the value of field 'OccurrencesWorldStateID'.
---@return integer[] value
function row:GetOccurrencesWorldStateID() end

---Sets the value of field 'OccurrencesWorldStateID'.
---@param value integer[]
---@return dbc.row.v1215.ManagedWorldState self
function row:SetOccurrencesWorldStateID(value) end

---Gets element at 1-based index in 'OccurrencesWorldStateID'.
---@param index integer
---@return integer value
function row:GetOccurrencesWorldStateIDItem(index) end

---Navigates foreign relationship to 'WorldState' via 'OccurrencesWorldStateID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetOccurrencesWorldState() end

---Creates a related 'WorldState' row and automatically links 'OccurrencesWorldStateID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Table container for ManagedWorldState (Build 12.1.5.69594).
---@class dbc.Table.v1215.ManagedWorldState : DbcTable
---@field [integer] dbc.row.v1215.ManagedWorldState
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ManagedWorldState
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ManagedWorldState|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ManagedWorldState
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ManagedWorldState>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ManagedWorldState[]
function tbl:GetByRelation(foreign_id) end

return {}
