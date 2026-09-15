---@meta
-- Generated LuaLS annotations for UiModelSceneActor (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiModelSceneActor in build 12.1.5.69594.
---@class dbc.row.v1215.UiModelSceneActor : RowProxy
---@field ScriptTag string
---@field Position number[]
---@field ID integer
---@field UiModelSceneID integer
---@field Flags integer
---@field UiModelSceneActorDisplayID integer
---@field OrientationYaw number
---@field OrientationPitch number
---@field OrientationRoll number
---@field NormalizedScale number

local row = {}

---Gets the value of field 'ScriptTag'.
---@return string value
function row:GetScriptTag() end

---Sets the value of field 'ScriptTag'.
---@param value string
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetScriptTag(value) end

---Gets the value of field 'Position'.
---@return number[] value
function row:GetPosition() end

---Sets the value of field 'Position'.
---@param value number[]
---@return dbc.row.v1215.UiModelSceneActor self
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
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetID(value) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetFlags(value) end

---Gets the value of field 'UiModelSceneActorDisplayID'.
---@return integer value
function row:GetUiModelSceneActorDisplayID() end

---Sets the value of field 'UiModelSceneActorDisplayID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetUiModelSceneActorDisplayID(value) end

---Navigates foreign relationship to 'UiModelSceneActorDisplay' via 'UiModelSceneActorDisplayID'.
---@return dbc.row.v1215.UiModelSceneActorDisplay|nil
function row:GetUiModelSceneActorDisplay() end

---Creates a related 'UiModelSceneActorDisplay' row and automatically links 'UiModelSceneActorDisplayID'.
---@param data? table
---@return dbc.row.v1215.UiModelSceneActorDisplay
function row:CreateRelated(data) end

---Gets the value of field 'OrientationYaw'.
---@return number value
function row:GetOrientationYaw() end

---Sets the value of field 'OrientationYaw'.
---@param value number
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetOrientationYaw(value) end

---Gets the value of field 'OrientationPitch'.
---@return number value
function row:GetOrientationPitch() end

---Sets the value of field 'OrientationPitch'.
---@param value number
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetOrientationPitch(value) end

---Gets the value of field 'OrientationRoll'.
---@return number value
function row:GetOrientationRoll() end

---Sets the value of field 'OrientationRoll'.
---@param value number
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetOrientationRoll(value) end

---Gets the value of field 'NormalizedScale'.
---@return number value
function row:GetNormalizedScale() end

---Sets the value of field 'NormalizedScale'.
---@param value number
---@return dbc.row.v1215.UiModelSceneActor self
function row:SetNormalizedScale(value) end

---Table container for UiModelSceneActor (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiModelSceneActor : DbcTable
---@field [integer] dbc.row.v1215.UiModelSceneActor
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiModelSceneActor
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiModelSceneActor|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiModelSceneActor
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiModelSceneActor>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiModelSceneActor[]
function tbl:GetByRelation(foreign_id) end

return {}
