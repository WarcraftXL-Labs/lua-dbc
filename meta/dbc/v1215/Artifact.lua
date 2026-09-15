---@meta
-- Generated LuaLS annotations for Artifact (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Artifact in build 12.1.5.69594.
---@class dbc.row.v1215.Artifact : RowProxy
---@field Name_lang string
---@field ID integer
---@field UiTextureKitID integer
---@field UiNameColor integer
---@field UiBarOverlayColor integer
---@field UiBarBackgroundColor integer
---@field ChrSpecializationID integer
---@field Flags integer
---@field ArtifactCategoryID integer
---@field UiModelSceneID integer
---@field SpellVisualKitID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.Artifact self
function row:SetName_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetID(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'UiNameColor'.
---@return integer value
function row:GetUiNameColor() end

---Sets the value of field 'UiNameColor'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetUiNameColor(value) end

---Gets the value of field 'UiBarOverlayColor'.
---@return integer value
function row:GetUiBarOverlayColor() end

---Sets the value of field 'UiBarOverlayColor'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetUiBarOverlayColor(value) end

---Gets the value of field 'UiBarBackgroundColor'.
---@return integer value
function row:GetUiBarBackgroundColor() end

---Sets the value of field 'UiBarBackgroundColor'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetUiBarBackgroundColor(value) end

---Gets the value of field 'ChrSpecializationID'.
---@return integer value
function row:GetChrSpecializationID() end

---Sets the value of field 'ChrSpecializationID'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetChrSpecializationID(value) end

---Navigates foreign relationship to 'ChrSpecialization' via 'ChrSpecializationID'.
---@return dbc.row.v1215.ChrSpecialization|nil
function row:GetChrSpecialization() end

---Creates a related 'ChrSpecialization' row and automatically links 'ChrSpecializationID'.
---@param data? table
---@return dbc.row.v1215.ChrSpecialization
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetFlags(value) end

---Gets the value of field 'ArtifactCategoryID'.
---@return integer value
function row:GetArtifactCategoryID() end

---Sets the value of field 'ArtifactCategoryID'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetArtifactCategoryID(value) end

---Navigates foreign relationship to 'ArtifactCategory' via 'ArtifactCategoryID'.
---@return dbc.row.v1215.ArtifactCategory|nil
function row:GetArtifactCategory() end

---Creates a related 'ArtifactCategory' row and automatically links 'ArtifactCategoryID'.
---@param data? table
---@return dbc.row.v1215.ArtifactCategory
function row:CreateRelated(data) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.Artifact self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Table container for Artifact (Build 12.1.5.69594).
---@class dbc.Table.v1215.Artifact : DbcTable
---@field [integer] dbc.row.v1215.Artifact
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Artifact
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Artifact|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Artifact
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Artifact>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Artifact[]
function tbl:GetByRelation(foreign_id) end

return {}
