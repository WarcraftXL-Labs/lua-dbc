---@meta
-- Generated LuaLS annotations for Mount (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Mount in build 12.1.5.69594.
---@class dbc.row.v1215.Mount : RowProxy
---@field Name_lang string
---@field SourceText_lang string
---@field Description_lang string
---@field ID integer
---@field MountTypeID integer
---@field Flags integer
---@field SourceTypeEnum integer
---@field SourceSpellID integer
---@field PlayerConditionID integer
---@field MountFlyRideHeight number
---@field UiModelSceneID integer
---@field MountSpecialRiderAnimKitID integer
---@field MountSpecialSpellVisualKitID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Mount self
function row:SetName_lang(value) end

---Gets the value of field 'SourceText_lang'.
---@return string value
function row:GetSourceText_lang() end

---Sets the value of field 'SourceText_lang'.
---@param value string
---@return dbc.row.v1215.Mount self
function row:SetSourceText_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.Mount self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetID(value) end

---Gets the value of field 'MountTypeID'.
---@return integer value
function row:GetMountTypeID() end

---Sets the value of field 'MountTypeID'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetMountTypeID(value) end

---Navigates foreign relationship to 'MountType' via 'MountTypeID'.
---@return dbc.row.v1215.MountType|nil
function row:GetMountType() end

---Creates a related 'MountType' row and automatically links 'MountTypeID'.
---@param data? table
---@return dbc.row.v1215.MountType
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetFlags(value) end

---Gets the value of field 'SourceTypeEnum'.
---@return integer value
function row:GetSourceTypeEnum() end

---Sets the value of field 'SourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetSourceTypeEnum(value) end

---Gets the value of field 'SourceSpellID'.
---@return integer value
function row:GetSourceSpellID() end

---Sets the value of field 'SourceSpellID'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetSourceSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SourceSpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSourceSpell() end

---Creates a related 'Spell' row and automatically links 'SourceSpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'MountFlyRideHeight'.
---@return number value
function row:GetMountFlyRideHeight() end

---Sets the value of field 'MountFlyRideHeight'.
---@param value number
---@return dbc.row.v1215.Mount self
function row:SetMountFlyRideHeight(value) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'MountSpecialRiderAnimKitID'.
---@return integer value
function row:GetMountSpecialRiderAnimKitID() end

---Sets the value of field 'MountSpecialRiderAnimKitID'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetMountSpecialRiderAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'MountSpecialRiderAnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetMountSpecialRiderAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'MountSpecialRiderAnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'MountSpecialSpellVisualKitID'.
---@return integer value
function row:GetMountSpecialSpellVisualKitID() end

---Sets the value of field 'MountSpecialSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.Mount self
function row:SetMountSpecialSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'MountSpecialSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetMountSpecialSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'MountSpecialSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Table container for Mount (Build 12.1.5.69594).
---@class dbc.Table.v1215.Mount : DbcTable
---@field [integer] dbc.row.v1215.Mount
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Mount
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Mount|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Mount
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Mount>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Mount[]
function tbl:GetByRelation(foreign_id) end

return {}
