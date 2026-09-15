---@meta
-- Generated LuaLS annotations for UiModelSceneActorDisplay (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiModelSceneActorDisplay in build 12.1.5.69594.
---@class dbc.row.v1215.UiModelSceneActorDisplay : RowProxy
---@field ID integer
---@field AnimationID integer
---@field SequenceVariation integer index into the M2's sequences with the given animation id
---@field AnimKitID integer
---@field SpellVisualKitID integer
---@field Alpha number
---@field Scale number
---@field AnimSpeed number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetID(value) end

---Gets the value of field 'AnimationID'.
---@return integer value
function row:GetAnimationID() end

---Sets the value of field 'AnimationID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetAnimationID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimationID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnimation() end

---Creates a related 'AnimationData' row and automatically links 'AnimationID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'SequenceVariation'.
---@return integer value
function row:GetSequenceVariation() end

---Sets the value of field 'SequenceVariation'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetSequenceVariation(value) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Alpha'.
---@return number value
function row:GetAlpha() end

---Sets the value of field 'Alpha'.
---@param value number
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetAlpha(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetScale(value) end

---Gets the value of field 'AnimSpeed'.
---@return number value
function row:GetAnimSpeed() end

---Sets the value of field 'AnimSpeed'.
---@param value number
---@return dbc.row.v1215.UiModelSceneActorDisplay self
function row:SetAnimSpeed(value) end

---Table container for UiModelSceneActorDisplay (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiModelSceneActorDisplay : DbcTable
---@field [integer] dbc.row.v1215.UiModelSceneActorDisplay
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiModelSceneActorDisplay
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiModelSceneActorDisplay|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiModelSceneActorDisplay
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiModelSceneActorDisplay>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiModelSceneActorDisplay[]
function tbl:GetByRelation(foreign_id) end

return {}
