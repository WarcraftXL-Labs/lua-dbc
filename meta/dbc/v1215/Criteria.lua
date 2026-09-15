---@meta
-- Generated LuaLS annotations for Criteria (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Criteria in build 12.1.5.69594.
---@class dbc.row.v1215.Criteria : RowProxy
---@field ID integer
---@field Type integer
---@field Asset integer
---@field Modifier_tree_ID integer
---@field Start_event integer
---@field Start_asset integer
---@field Start_timer integer
---@field Fail_event integer
---@field Fail_asset integer
---@field Flags integer
---@field Eligibility_world_state_ID integer
---@field Eligibility_world_state_value integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetType(value) end

---Gets the value of field 'Asset'.
---@return integer value
function row:GetAsset() end

---Sets the value of field 'Asset'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetAsset(value) end

---Gets the value of field 'Modifier_tree_ID'.
---@return integer value
function row:GetModifier_tree_ID() end

---Sets the value of field 'Modifier_tree_ID'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetModifier_tree_ID(value) end

---Navigates foreign relationship to 'ModifierTree' via 'Modifier_tree_ID'.
---@return dbc.row.v1215.ModifierTree|nil
function row:GetModifier_tree_() end

---Creates a related 'ModifierTree' row and automatically links 'Modifier_tree_ID'.
---@param data? table
---@return dbc.row.v1215.ModifierTree
function row:CreateRelated(data) end

---Gets the value of field 'Start_event'.
---@return integer value
function row:GetStart_event() end

---Sets the value of field 'Start_event'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetStart_event(value) end

---Gets the value of field 'Start_asset'.
---@return integer value
function row:GetStart_asset() end

---Sets the value of field 'Start_asset'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetStart_asset(value) end

---Gets the value of field 'Start_timer'.
---@return integer value
function row:GetStart_timer() end

---Sets the value of field 'Start_timer'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetStart_timer(value) end

---Gets the value of field 'Fail_event'.
---@return integer value
function row:GetFail_event() end

---Sets the value of field 'Fail_event'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetFail_event(value) end

---Gets the value of field 'Fail_asset'.
---@return integer value
function row:GetFail_asset() end

---Sets the value of field 'Fail_asset'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetFail_asset(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetFlags(value) end

---Gets the value of field 'Eligibility_world_state_ID'.
---@return integer value
function row:GetEligibility_world_state_ID() end

---Sets the value of field 'Eligibility_world_state_ID'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetEligibility_world_state_ID(value) end

---Navigates foreign relationship to 'WorldState' via 'Eligibility_world_state_ID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetEligibility_world_state_() end

---Creates a related 'WorldState' row and automatically links 'Eligibility_world_state_ID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'Eligibility_world_state_value'.
---@return integer value
function row:GetEligibility_world_state_value() end

---Sets the value of field 'Eligibility_world_state_value'.
---@param value integer
---@return dbc.row.v1215.Criteria self
function row:SetEligibility_world_state_value(value) end

---Table container for Criteria (Build 12.1.5.69594).
---@class dbc.Table.v1215.Criteria : DbcTable
---@field [integer] dbc.row.v1215.Criteria
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Criteria
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Criteria|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Criteria
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Criteria>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Criteria[]
function tbl:GetByRelation(foreign_id) end

return {}
