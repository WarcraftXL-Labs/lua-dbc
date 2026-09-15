---@meta
-- Generated LuaLS annotations for ArtifactAppearance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactAppearance in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactAppearance : RowProxy
---@field Name_lang string
---@field ID integer
---@field ArtifactAppearanceSetID integer
---@field DisplayIndex integer
---@field UnlockPlayerConditionID integer
---@field ItemAppearanceModifierID integer
---@field UiSwatchColor integer
---@field UiModelSaturation number
---@field UiModelOpacity number
---@field OverrideShapeshiftFormID integer
---@field OverrideShapeshiftDisplayID integer
---@field UiItemAppearanceID integer
---@field UiAltItemAppearanceID integer
---@field Flags integer
---@field UiCameraID integer
---@field UsablePlayerConditionID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetID(value) end

---Gets the value of field 'ArtifactAppearanceSetID'.
---@return integer value
function row:GetArtifactAppearanceSetID() end

---Sets the value of field 'ArtifactAppearanceSetID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetArtifactAppearanceSetID(value) end

---Navigates foreign relationship to 'ArtifactAppearanceSet' via 'ArtifactAppearanceSetID'.
---@return dbc.row.v1215.ArtifactAppearanceSet|nil
function row:GetArtifactAppearanceSet() end

---Creates a related 'ArtifactAppearanceSet' row and automatically links 'ArtifactAppearanceSetID'.
---@param data? table
---@return dbc.row.v1215.ArtifactAppearanceSet
function row:CreateRelated(data) end

---Gets the value of field 'DisplayIndex'.
---@return integer value
function row:GetDisplayIndex() end

---Sets the value of field 'DisplayIndex'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetDisplayIndex(value) end

---Gets the value of field 'UnlockPlayerConditionID'.
---@return integer value
function row:GetUnlockPlayerConditionID() end

---Sets the value of field 'UnlockPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUnlockPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'UnlockPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetUnlockPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'UnlockPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'ItemAppearanceModifierID'.
---@return integer value
function row:GetItemAppearanceModifierID() end

---Sets the value of field 'ItemAppearanceModifierID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetItemAppearanceModifierID(value) end

---Navigates foreign relationship to 'ItemAppearanceModifier' via 'ItemAppearanceModifierID'.
---@return dbc.row.v1215.ItemAppearanceModifier|nil
function row:GetItemAppearanceModifier() end

---Creates a related 'ItemAppearanceModifier' row and automatically links 'ItemAppearanceModifierID'.
---@param data? table
---@return dbc.row.v1215.ItemAppearanceModifier
function row:CreateRelated(data) end

---Gets the value of field 'UiSwatchColor'.
---@return integer value
function row:GetUiSwatchColor() end

---Sets the value of field 'UiSwatchColor'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUiSwatchColor(value) end

---Gets the value of field 'UiModelSaturation'.
---@return number value
function row:GetUiModelSaturation() end

---Sets the value of field 'UiModelSaturation'.
---@param value number
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUiModelSaturation(value) end

---Gets the value of field 'UiModelOpacity'.
---@return number value
function row:GetUiModelOpacity() end

---Sets the value of field 'UiModelOpacity'.
---@param value number
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUiModelOpacity(value) end

---Gets the value of field 'OverrideShapeshiftFormID'.
---@return integer value
function row:GetOverrideShapeshiftFormID() end

---Sets the value of field 'OverrideShapeshiftFormID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetOverrideShapeshiftFormID(value) end

---Navigates foreign relationship to 'OverrideShapeshiftForm' via 'OverrideShapeshiftFormID'.
---@return dbc.row.v1215.OverrideShapeshiftForm|nil
function row:GetOverrideShapeshiftForm() end

---Creates a related 'OverrideShapeshiftForm' row and automatically links 'OverrideShapeshiftFormID'.
---@param data? table
---@return dbc.row.v1215.OverrideShapeshiftForm
function row:CreateRelated(data) end

---Gets the value of field 'OverrideShapeshiftDisplayID'.
---@return integer value
function row:GetOverrideShapeshiftDisplayID() end

---Sets the value of field 'OverrideShapeshiftDisplayID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetOverrideShapeshiftDisplayID(value) end

---Navigates foreign relationship to 'OverrideShapeshiftDisplay' via 'OverrideShapeshiftDisplayID'.
---@return dbc.row.v1215.OverrideShapeshiftDisplay|nil
function row:GetOverrideShapeshiftDisplay() end

---Creates a related 'OverrideShapeshiftDisplay' row and automatically links 'OverrideShapeshiftDisplayID'.
---@param data? table
---@return dbc.row.v1215.OverrideShapeshiftDisplay
function row:CreateRelated(data) end

---Gets the value of field 'UiItemAppearanceID'.
---@return integer value
function row:GetUiItemAppearanceID() end

---Sets the value of field 'UiItemAppearanceID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUiItemAppearanceID(value) end

---Navigates foreign relationship to 'UiItemAppearance' via 'UiItemAppearanceID'.
---@return dbc.row.v1215.UiItemAppearance|nil
function row:GetUiItemAppearance() end

---Creates a related 'UiItemAppearance' row and automatically links 'UiItemAppearanceID'.
---@param data? table
---@return dbc.row.v1215.UiItemAppearance
function row:CreateRelated(data) end

---Gets the value of field 'UiAltItemAppearanceID'.
---@return integer value
function row:GetUiAltItemAppearanceID() end

---Sets the value of field 'UiAltItemAppearanceID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUiAltItemAppearanceID(value) end

---Navigates foreign relationship to 'UiAltItemAppearance' via 'UiAltItemAppearanceID'.
---@return dbc.row.v1215.UiAltItemAppearance|nil
function row:GetUiAltItemAppearance() end

---Creates a related 'UiAltItemAppearance' row and automatically links 'UiAltItemAppearanceID'.
---@param data? table
---@return dbc.row.v1215.UiAltItemAppearance
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetFlags(value) end

---Gets the value of field 'UiCameraID'.
---@return integer value
function row:GetUiCameraID() end

---Sets the value of field 'UiCameraID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUiCameraID(value) end

---Navigates foreign relationship to 'UiCamera' via 'UiCameraID'.
---@return dbc.row.v1215.UiCamera|nil
function row:GetUiCamera() end

---Creates a related 'UiCamera' row and automatically links 'UiCameraID'.
---@param data? table
---@return dbc.row.v1215.UiCamera
function row:CreateRelated(data) end

---Gets the value of field 'UsablePlayerConditionID'.
---@return integer value
function row:GetUsablePlayerConditionID() end

---Sets the value of field 'UsablePlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearance self
function row:SetUsablePlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'UsablePlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetUsablePlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'UsablePlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for ArtifactAppearance (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactAppearance : DbcTable
---@field [integer] dbc.row.v1215.ArtifactAppearance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactAppearance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactAppearance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactAppearance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactAppearance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactAppearance[]
function tbl:GetByRelation(foreign_id) end

return {}
