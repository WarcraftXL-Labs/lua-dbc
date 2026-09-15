---@meta
-- Generated LuaLS annotations for GameObjectDisplayCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjectDisplayCondition in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjectDisplayCondition : RowProxy
---@field ID integer
---@field GameObjectDisplayInfoID integer
---@field WorldStateExpressionID integer
---@field Field_10_2_7_54171_003 integer
---@field Field_10_2_7_54171_004 number
---@field GameObjectID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayCondition self
function row:SetID(value) end

---Gets the value of field 'GameObjectDisplayInfoID'.
---@return integer value
function row:GetGameObjectDisplayInfoID() end

---Sets the value of field 'GameObjectDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayCondition self
function row:SetGameObjectDisplayInfoID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'GameObjectDisplayInfoID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetGameObjectDisplayInfo() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'GameObjectDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateExpressionID'.
---@return integer value
function row:GetWorldStateExpressionID() end

---Sets the value of field 'WorldStateExpressionID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayCondition self
function row:SetWorldStateExpressionID(value) end

---Navigates foreign relationship to 'WorldStateExpression' via 'WorldStateExpressionID'.
---@return dbc.row.v1215.WorldStateExpression|nil
function row:GetWorldStateExpression() end

---Creates a related 'WorldStateExpression' row and automatically links 'WorldStateExpressionID'.
---@param data? table
---@return dbc.row.v1215.WorldStateExpression
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_7_54171_003'.
---@return integer value
function row:GetField_10_2_7_54171_003() end

---Sets the value of field 'Field_10_2_7_54171_003'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayCondition self
function row:SetField_10_2_7_54171_003(value) end

---Gets the value of field 'Field_10_2_7_54171_004'.
---@return number value
function row:GetField_10_2_7_54171_004() end

---Sets the value of field 'Field_10_2_7_54171_004'.
---@param value number
---@return dbc.row.v1215.GameObjectDisplayCondition self
function row:SetField_10_2_7_54171_004(value) end

---Gets the value of field 'GameObjectID'.
---@return integer value
function row:GetGameObjectID() end

---Sets the value of field 'GameObjectID'.
---@param value integer
---@return dbc.row.v1215.GameObjectDisplayCondition self
function row:SetGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'GameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetGameObject() end

---Creates a related 'GameObjects' row and automatically links 'GameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Table container for GameObjectDisplayCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjectDisplayCondition : DbcTable
---@field [integer] dbc.row.v1215.GameObjectDisplayCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjectDisplayCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDisplayCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectDisplayCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjectDisplayCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjectDisplayCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
