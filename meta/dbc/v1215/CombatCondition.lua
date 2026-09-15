---@meta
-- Generated LuaLS annotations for CombatCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CombatCondition in build 12.1.5.69594.
---@class dbc.row.v1215.CombatCondition : RowProxy
---@field ID integer
---@field WorldStateExpressionID integer
---@field SelfConditionID integer
---@field TargetConditionID integer
---@field FriendConditionLogic integer
---@field EnemyConditionLogic integer
---@field FriendConditionID integer[]
---@field FriendConditionOp integer[]
---@field FriendConditionCount integer[]
---@field EnemyConditionID integer[]
---@field EnemyConditionOp integer[]
---@field EnemyConditionCount integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CombatCondition self
function row:SetID(value) end

---Gets the value of field 'WorldStateExpressionID'.
---@return integer value
function row:GetWorldStateExpressionID() end

---Sets the value of field 'WorldStateExpressionID'.
---@param value integer
---@return dbc.row.v1215.CombatCondition self
function row:SetWorldStateExpressionID(value) end

---Navigates foreign relationship to 'WorldStateExpression' via 'WorldStateExpressionID'.
---@return dbc.row.v1215.WorldStateExpression|nil
function row:GetWorldStateExpression() end

---Creates a related 'WorldStateExpression' row and automatically links 'WorldStateExpressionID'.
---@param data? table
---@return dbc.row.v1215.WorldStateExpression
function row:CreateRelated(data) end

---Gets the value of field 'SelfConditionID'.
---@return integer value
function row:GetSelfConditionID() end

---Sets the value of field 'SelfConditionID'.
---@param value integer
---@return dbc.row.v1215.CombatCondition self
function row:SetSelfConditionID(value) end

---Navigates foreign relationship to 'UnitCondition' via 'SelfConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetSelfCondition() end

---Creates a related 'UnitCondition' row and automatically links 'SelfConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Gets the value of field 'TargetConditionID'.
---@return integer value
function row:GetTargetConditionID() end

---Sets the value of field 'TargetConditionID'.
---@param value integer
---@return dbc.row.v1215.CombatCondition self
function row:SetTargetConditionID(value) end

---Navigates foreign relationship to 'UnitCondition' via 'TargetConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetTargetCondition() end

---Creates a related 'UnitCondition' row and automatically links 'TargetConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Gets the value of field 'FriendConditionLogic'.
---@return integer value
function row:GetFriendConditionLogic() end

---Sets the value of field 'FriendConditionLogic'.
---@param value integer
---@return dbc.row.v1215.CombatCondition self
function row:SetFriendConditionLogic(value) end

---Gets the value of field 'EnemyConditionLogic'.
---@return integer value
function row:GetEnemyConditionLogic() end

---Sets the value of field 'EnemyConditionLogic'.
---@param value integer
---@return dbc.row.v1215.CombatCondition self
function row:SetEnemyConditionLogic(value) end

---Gets the value of field 'FriendConditionID'.
---@return integer[] value
function row:GetFriendConditionID() end

---Sets the value of field 'FriendConditionID'.
---@param value integer[]
---@return dbc.row.v1215.CombatCondition self
function row:SetFriendConditionID(value) end

---Gets element at 1-based index in 'FriendConditionID'.
---@param index integer
---@return integer value
function row:GetFriendConditionIDItem(index) end

---Navigates foreign relationship to 'UnitCondition' via 'FriendConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetFriendCondition() end

---Creates a related 'UnitCondition' row and automatically links 'FriendConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Gets the value of field 'FriendConditionOp'.
---@return integer[] value
function row:GetFriendConditionOp() end

---Sets the value of field 'FriendConditionOp'.
---@param value integer[]
---@return dbc.row.v1215.CombatCondition self
function row:SetFriendConditionOp(value) end

---Gets element at 1-based index in 'FriendConditionOp'.
---@param index integer
---@return integer value
function row:GetFriendConditionOpItem(index) end

---Gets the value of field 'FriendConditionCount'.
---@return integer[] value
function row:GetFriendConditionCount() end

---Sets the value of field 'FriendConditionCount'.
---@param value integer[]
---@return dbc.row.v1215.CombatCondition self
function row:SetFriendConditionCount(value) end

---Gets element at 1-based index in 'FriendConditionCount'.
---@param index integer
---@return integer value
function row:GetFriendConditionCountItem(index) end

---Gets the value of field 'EnemyConditionID'.
---@return integer[] value
function row:GetEnemyConditionID() end

---Sets the value of field 'EnemyConditionID'.
---@param value integer[]
---@return dbc.row.v1215.CombatCondition self
function row:SetEnemyConditionID(value) end

---Gets element at 1-based index in 'EnemyConditionID'.
---@param index integer
---@return integer value
function row:GetEnemyConditionIDItem(index) end

---Navigates foreign relationship to 'UnitCondition' via 'EnemyConditionID'.
---@return dbc.row.v1215.UnitCondition|nil
function row:GetEnemyCondition() end

---Creates a related 'UnitCondition' row and automatically links 'EnemyConditionID'.
---@param data? table
---@return dbc.row.v1215.UnitCondition
function row:CreateRelated(data) end

---Gets the value of field 'EnemyConditionOp'.
---@return integer[] value
function row:GetEnemyConditionOp() end

---Sets the value of field 'EnemyConditionOp'.
---@param value integer[]
---@return dbc.row.v1215.CombatCondition self
function row:SetEnemyConditionOp(value) end

---Gets element at 1-based index in 'EnemyConditionOp'.
---@param index integer
---@return integer value
function row:GetEnemyConditionOpItem(index) end

---Gets the value of field 'EnemyConditionCount'.
---@return integer[] value
function row:GetEnemyConditionCount() end

---Sets the value of field 'EnemyConditionCount'.
---@param value integer[]
---@return dbc.row.v1215.CombatCondition self
function row:SetEnemyConditionCount(value) end

---Gets element at 1-based index in 'EnemyConditionCount'.
---@param index integer
---@return integer value
function row:GetEnemyConditionCountItem(index) end

---Table container for CombatCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.CombatCondition : DbcTable
---@field [integer] dbc.row.v1215.CombatCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CombatCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CombatCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CombatCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CombatCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CombatCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
