---@meta
-- Generated LuaLS annotations for UiModelSceneCamera (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiModelSceneCamera in build 12.1.5.69594.
---@class dbc.row.v1215.UiModelSceneCamera : RowProxy
---@field ScriptTag string
---@field Target number[]
---@field ZoomedTargetOffset number[]
---@field ID integer
---@field UiModelSceneID integer
---@field Flags integer
---@field CameraType integer
---@field Yaw number
---@field Pitch number
---@field Roll number
---@field ZoomedYawOffset number
---@field ZoomedPitchOffset number
---@field ZoomedRollOffset number
---@field ZoomDistance number
---@field MinZoomDistance number
---@field MaxZoomDistance number

local row = {}

---Gets the value of field 'ScriptTag'.
---@return string value
function row:GetScriptTag() end

---Sets the value of field 'ScriptTag'.
---@param value string
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetScriptTag(value) end

---Gets the value of field 'Target'.
---@return number[] value
function row:GetTarget() end

---Sets the value of field 'Target'.
---@param value number[]
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetTarget(value) end

---Gets element at 1-based index in 'Target'.
---@param index integer
---@return number value
function row:GetTargetItem(index) end

---Gets the value of field 'ZoomedTargetOffset'.
---@return number[] value
function row:GetZoomedTargetOffset() end

---Sets the value of field 'ZoomedTargetOffset'.
---@param value number[]
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetZoomedTargetOffset(value) end

---Gets element at 1-based index in 'ZoomedTargetOffset'.
---@param index integer
---@return number value
function row:GetZoomedTargetOffsetItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetID(value) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneCamera self
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
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetFlags(value) end

---Gets the value of field 'CameraType'.
---@return integer value
function row:GetCameraType() end

---Sets the value of field 'CameraType'.
---@param value integer
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetCameraType(value) end

---Gets the value of field 'Yaw'.
---@return number value
function row:GetYaw() end

---Sets the value of field 'Yaw'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetYaw(value) end

---Gets the value of field 'Pitch'.
---@return number value
function row:GetPitch() end

---Sets the value of field 'Pitch'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetPitch(value) end

---Gets the value of field 'Roll'.
---@return number value
function row:GetRoll() end

---Sets the value of field 'Roll'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetRoll(value) end

---Gets the value of field 'ZoomedYawOffset'.
---@return number value
function row:GetZoomedYawOffset() end

---Sets the value of field 'ZoomedYawOffset'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetZoomedYawOffset(value) end

---Gets the value of field 'ZoomedPitchOffset'.
---@return number value
function row:GetZoomedPitchOffset() end

---Sets the value of field 'ZoomedPitchOffset'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetZoomedPitchOffset(value) end

---Gets the value of field 'ZoomedRollOffset'.
---@return number value
function row:GetZoomedRollOffset() end

---Sets the value of field 'ZoomedRollOffset'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetZoomedRollOffset(value) end

---Gets the value of field 'ZoomDistance'.
---@return number value
function row:GetZoomDistance() end

---Sets the value of field 'ZoomDistance'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetZoomDistance(value) end

---Gets the value of field 'MinZoomDistance'.
---@return number value
function row:GetMinZoomDistance() end

---Sets the value of field 'MinZoomDistance'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetMinZoomDistance(value) end

---Gets the value of field 'MaxZoomDistance'.
---@return number value
function row:GetMaxZoomDistance() end

---Sets the value of field 'MaxZoomDistance'.
---@param value number
---@return dbc.row.v1215.UiModelSceneCamera self
function row:SetMaxZoomDistance(value) end

---Table container for UiModelSceneCamera (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiModelSceneCamera : DbcTable
---@field [integer] dbc.row.v1215.UiModelSceneCamera
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiModelSceneCamera
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiModelSceneCamera|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiModelSceneCamera
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiModelSceneCamera>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiModelSceneCamera[]
function tbl:GetByRelation(foreign_id) end

return {}
