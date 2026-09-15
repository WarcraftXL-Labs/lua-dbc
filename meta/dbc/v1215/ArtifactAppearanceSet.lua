---@meta
-- Generated LuaLS annotations for ArtifactAppearanceSet (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ArtifactAppearanceSet in build 12.1.5.69594.
---@class dbc.row.v1215.ArtifactAppearanceSet : RowProxy
---@field Name_lang string
---@field Description_lang string
---@field ID integer
---@field DisplayIndex integer
---@field UiCameraID integer
---@field AltHandUICameraID integer
---@field ForgeAttachmentOverride integer
---@field Flags integer
---@field ArtifactID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetID(value) end

---Gets the value of field 'DisplayIndex'.
---@return integer value
function row:GetDisplayIndex() end

---Sets the value of field 'DisplayIndex'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetDisplayIndex(value) end

---Gets the value of field 'UiCameraID'.
---@return integer value
function row:GetUiCameraID() end

---Sets the value of field 'UiCameraID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetUiCameraID(value) end

---Navigates foreign relationship to 'UiCamera' via 'UiCameraID'.
---@return dbc.row.v1215.UiCamera|nil
function row:GetUiCamera() end

---Creates a related 'UiCamera' row and automatically links 'UiCameraID'.
---@param data? table
---@return dbc.row.v1215.UiCamera
function row:CreateRelated(data) end

---Gets the value of field 'AltHandUICameraID'.
---@return integer value
function row:GetAltHandUICameraID() end

---Sets the value of field 'AltHandUICameraID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetAltHandUICameraID(value) end

---Navigates foreign relationship to 'AltHandUICamera' via 'AltHandUICameraID'.
---@return dbc.row.v1215.AltHandUICamera|nil
function row:GetAltHandUICamera() end

---Creates a related 'AltHandUICamera' row and automatically links 'AltHandUICameraID'.
---@param data? table
---@return dbc.row.v1215.AltHandUICamera
function row:CreateRelated(data) end

---Gets the value of field 'ForgeAttachmentOverride'.
---@return integer value
function row:GetForgeAttachmentOverride() end

---Sets the value of field 'ForgeAttachmentOverride'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetForgeAttachmentOverride(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetFlags(value) end

---Gets the value of field 'ArtifactID'.
---@return integer value
function row:GetArtifactID() end

---Sets the value of field 'ArtifactID'.
---@param value integer
---@return dbc.row.v1215.ArtifactAppearanceSet self
function row:SetArtifactID(value) end

---Navigates foreign relationship to 'Artifact' via 'ArtifactID'.
---@return dbc.row.v1215.Artifact|nil
function row:GetArtifact() end

---Creates a related 'Artifact' row and automatically links 'ArtifactID'.
---@param data? table
---@return dbc.row.v1215.Artifact
function row:CreateRelated(data) end

---Table container for ArtifactAppearanceSet (Build 12.1.5.69594).
---@class dbc.Table.v1215.ArtifactAppearanceSet : DbcTable
---@field [integer] dbc.row.v1215.ArtifactAppearanceSet
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ArtifactAppearanceSet
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactAppearanceSet|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ArtifactAppearanceSet
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ArtifactAppearanceSet>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ArtifactAppearanceSet[]
function tbl:GetByRelation(foreign_id) end

return {}
