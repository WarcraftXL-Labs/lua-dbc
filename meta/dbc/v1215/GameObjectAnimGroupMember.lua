---@meta
-- Generated LuaLS annotations for GameObjectAnimGroupMember (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GameObjectAnimGroupMember in build 12.1.5.69594.
---@class dbc.row.v1215.GameObjectAnimGroupMember : RowProxy
---@field ID integer
---@field GameObjectAnimGroupID integer
---@field GameObjectID integer
---@field Flags integer &1: IsParentOfThisGroup; there has to be exactly one parent per group
---@field AnimationID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GameObjectAnimGroupMember self
function row:SetID(value) end

---Gets the value of field 'GameObjectAnimGroupID'.
---@return integer value
function row:GetGameObjectAnimGroupID() end

---Sets the value of field 'GameObjectAnimGroupID'.
---@param value integer
---@return dbc.row.v1215.GameObjectAnimGroupMember self
function row:SetGameObjectAnimGroupID(value) end

---Navigates foreign relationship to 'GameObjectAnimGroup' via 'GameObjectAnimGroupID'.
---@return dbc.row.v1215.GameObjectAnimGroup|nil
function row:GetGameObjectAnimGroup() end

---Creates a related 'GameObjectAnimGroup' row and automatically links 'GameObjectAnimGroupID'.
---@param data? table
---@return dbc.row.v1215.GameObjectAnimGroup
function row:CreateRelated(data) end

---Gets the value of field 'GameObjectID'.
---@return integer value
function row:GetGameObjectID() end

---Sets the value of field 'GameObjectID'.
---@param value integer
---@return dbc.row.v1215.GameObjectAnimGroupMember self
function row:SetGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'GameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetGameObject() end

---Creates a related 'GameObjects' row and automatically links 'GameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GameObjectAnimGroupMember self
function row:SetFlags(value) end

---Gets the value of field 'AnimationID'.
---@return integer value
function row:GetAnimationID() end

---Sets the value of field 'AnimationID'.
---@param value integer
---@return dbc.row.v1215.GameObjectAnimGroupMember self
function row:SetAnimationID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimationID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnimation() end

---Creates a related 'AnimationData' row and automatically links 'AnimationID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Table container for GameObjectAnimGroupMember (Build 12.1.5.69594).
---@class dbc.Table.v1215.GameObjectAnimGroupMember : DbcTable
---@field [integer] dbc.row.v1215.GameObjectAnimGroupMember
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GameObjectAnimGroupMember
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectAnimGroupMember|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GameObjectAnimGroupMember
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GameObjectAnimGroupMember>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GameObjectAnimGroupMember[]
function tbl:GetByRelation(foreign_id) end

return {}
