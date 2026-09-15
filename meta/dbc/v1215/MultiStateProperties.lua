---@meta
-- Generated LuaLS annotations for MultiStateProperties (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of MultiStateProperties in build 12.1.5.69594.
---@class dbc.row.v1215.MultiStateProperties : RowProxy
---@field ID integer
---@field Offset number[]
---@field GameObjectID integer
---@field StateIndex integer
---@field GameEventID integer
---@field Facing number
---@field TransitionInID integer
---@field TransitionOutID integer
---@field CollisionHull integer
---@field Flags integer
---@field SpellVisualKitID integer
---@field MultiPropertiesID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetID(value) end

---Gets the value of field 'Offset'.
---@return number[] value
function row:GetOffset() end

---Sets the value of field 'Offset'.
---@param value number[]
---@return dbc.row.v1215.MultiStateProperties self
function row:SetOffset(value) end

---Gets element at 1-based index in 'Offset'.
---@param index integer
---@return number value
function row:GetOffsetItem(index) end

---Gets the value of field 'GameObjectID'.
---@return integer value
function row:GetGameObjectID() end

---Sets the value of field 'GameObjectID'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetGameObjectID(value) end

---Navigates foreign relationship to 'GameObject' via 'GameObjectID'.
---@return dbc.row.v1215.GameObject|nil
function row:GetGameObject() end

---Creates a related 'GameObject' row and automatically links 'GameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObject
function row:CreateRelated(data) end

---Gets the value of field 'StateIndex'.
---@return integer value
function row:GetStateIndex() end

---Sets the value of field 'StateIndex'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetStateIndex(value) end

---Gets the value of field 'GameEventID'.
---@return integer value
function row:GetGameEventID() end

---Sets the value of field 'GameEventID'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetGameEventID(value) end

---Navigates foreign relationship to 'GameEvent' via 'GameEventID'.
---@return dbc.row.v1215.GameEvent|nil
function row:GetGameEvent() end

---Creates a related 'GameEvent' row and automatically links 'GameEventID'.
---@param data? table
---@return dbc.row.v1215.GameEvent
function row:CreateRelated(data) end

---Gets the value of field 'Facing'.
---@return number value
function row:GetFacing() end

---Sets the value of field 'Facing'.
---@param value number
---@return dbc.row.v1215.MultiStateProperties self
function row:SetFacing(value) end

---Gets the value of field 'TransitionInID'.
---@return integer value
function row:GetTransitionInID() end

---Sets the value of field 'TransitionInID'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetTransitionInID(value) end

---Navigates foreign relationship to 'MultiTransitionProperties' via 'TransitionInID'.
---@return dbc.row.v1215.MultiTransitionProperties|nil
function row:GetTransitionIn() end

---Creates a related 'MultiTransitionProperties' row and automatically links 'TransitionInID'.
---@param data? table
---@return dbc.row.v1215.MultiTransitionProperties
function row:CreateRelated(data) end

---Gets the value of field 'TransitionOutID'.
---@return integer value
function row:GetTransitionOutID() end

---Sets the value of field 'TransitionOutID'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetTransitionOutID(value) end

---Navigates foreign relationship to 'MultiTransitionProperties' via 'TransitionOutID'.
---@return dbc.row.v1215.MultiTransitionProperties|nil
function row:GetTransitionOut() end

---Creates a related 'MultiTransitionProperties' row and automatically links 'TransitionOutID'.
---@param data? table
---@return dbc.row.v1215.MultiTransitionProperties
function row:CreateRelated(data) end

---Gets the value of field 'CollisionHull'.
---@return integer value
function row:GetCollisionHull() end

---Sets the value of field 'CollisionHull'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetCollisionHull(value) end

---Navigates foreign relationship to 'FileData' via 'CollisionHull'.
---@return dbc.row.v1215.FileData|nil
function row:GetCollisionHull() end

---Creates a related 'FileData' row and automatically links 'CollisionHull'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetFlags(value) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'MultiPropertiesID'.
---@return integer value
function row:GetMultiPropertiesID() end

---Sets the value of field 'MultiPropertiesID'.
---@param value integer
---@return dbc.row.v1215.MultiStateProperties self
function row:SetMultiPropertiesID(value) end

---Navigates foreign relationship to 'MultiProperties' via 'MultiPropertiesID'.
---@return dbc.row.v1215.MultiProperties|nil
function row:GetMultiProperties() end

---Creates a related 'MultiProperties' row and automatically links 'MultiPropertiesID'.
---@param data? table
---@return dbc.row.v1215.MultiProperties
function row:CreateRelated(data) end

---Table container for MultiStateProperties (Build 12.1.5.69594).
---@class dbc.Table.v1215.MultiStateProperties : DbcTable
---@field [integer] dbc.row.v1215.MultiStateProperties
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.MultiStateProperties
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.MultiStateProperties|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.MultiStateProperties
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.MultiStateProperties>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.MultiStateProperties[]
function tbl:GetByRelation(foreign_id) end

return {}
