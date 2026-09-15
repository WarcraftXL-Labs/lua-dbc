---@meta
-- Generated LuaLS annotations for ItemDisplayInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemDisplayInfo in build 12.1.5.69594.
---@class dbc.row.v1215.ItemDisplayInfo : RowProxy
---@field ID integer
---@field GeosetGroupOverride integer
---@field ItemVisual integer
---@field ParticleColorID integer
---@field ItemRangedDisplayInfoID integer
---@field OverrideSwooshSoundKitID integer
---@field SheatheTransformMatrixID integer
---@field StateSpellVisualKitID integer
---@field SheathedSpellVisualKitID integer
---@field UnsheathedSpellVisualKitID integer
---@field Flags integer
---@field ModelResourcesID integer[]
---@field ModelMaterialResourcesID integer[]
---@field ModelType integer[]
---@field GeosetGroup integer[]
---@field AttachmentGeosetGroup integer[]
---@field HelmetGeosetVis integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetID(value) end

---Gets the value of field 'GeosetGroupOverride'.
---@return integer value
function row:GetGeosetGroupOverride() end

---Sets the value of field 'GeosetGroupOverride'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetGeosetGroupOverride(value) end

---Gets the value of field 'ItemVisual'.
---@return integer value
function row:GetItemVisual() end

---Sets the value of field 'ItemVisual'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetItemVisual(value) end

---Gets the value of field 'ParticleColorID'.
---@return integer value
function row:GetParticleColorID() end

---Sets the value of field 'ParticleColorID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetParticleColorID(value) end

---Navigates foreign relationship to 'ParticleColor' via 'ParticleColorID'.
---@return dbc.row.v1215.ParticleColor|nil
function row:GetParticleColor() end

---Creates a related 'ParticleColor' row and automatically links 'ParticleColorID'.
---@param data? table
---@return dbc.row.v1215.ParticleColor
function row:CreateRelated(data) end

---Gets the value of field 'ItemRangedDisplayInfoID'.
---@return integer value
function row:GetItemRangedDisplayInfoID() end

---Sets the value of field 'ItemRangedDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetItemRangedDisplayInfoID(value) end

---Navigates foreign relationship to 'ItemRangedDisplayInfo' via 'ItemRangedDisplayInfoID'.
---@return dbc.row.v1215.ItemRangedDisplayInfo|nil
function row:GetItemRangedDisplayInfo() end

---Creates a related 'ItemRangedDisplayInfo' row and automatically links 'ItemRangedDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.ItemRangedDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'OverrideSwooshSoundKitID'.
---@return integer value
function row:GetOverrideSwooshSoundKitID() end

---Sets the value of field 'OverrideSwooshSoundKitID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetOverrideSwooshSoundKitID(value) end

---Navigates foreign relationship to 'OverrideSwooshSoundKit' via 'OverrideSwooshSoundKitID'.
---@return dbc.row.v1215.OverrideSwooshSoundKit|nil
function row:GetOverrideSwooshSoundKit() end

---Creates a related 'OverrideSwooshSoundKit' row and automatically links 'OverrideSwooshSoundKitID'.
---@param data? table
---@return dbc.row.v1215.OverrideSwooshSoundKit
function row:CreateRelated(data) end

---Gets the value of field 'SheatheTransformMatrixID'.
---@return integer value
function row:GetSheatheTransformMatrixID() end

---Sets the value of field 'SheatheTransformMatrixID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetSheatheTransformMatrixID(value) end

---Navigates foreign relationship to 'TransformMatrix' via 'SheatheTransformMatrixID'.
---@return dbc.row.v1215.TransformMatrix|nil
function row:GetSheatheTransformMatrix() end

---Creates a related 'TransformMatrix' row and automatically links 'SheatheTransformMatrixID'.
---@param data? table
---@return dbc.row.v1215.TransformMatrix
function row:CreateRelated(data) end

---Gets the value of field 'StateSpellVisualKitID'.
---@return integer value
function row:GetStateSpellVisualKitID() end

---Sets the value of field 'StateSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetStateSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StateSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetStateSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StateSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'SheathedSpellVisualKitID'.
---@return integer value
function row:GetSheathedSpellVisualKitID() end

---Sets the value of field 'SheathedSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetSheathedSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SheathedSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSheathedSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SheathedSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'UnsheathedSpellVisualKitID'.
---@return integer value
function row:GetUnsheathedSpellVisualKitID() end

---Sets the value of field 'UnsheathedSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetUnsheathedSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'UnsheathedSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetUnsheathedSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'UnsheathedSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetFlags(value) end

---Gets the value of field 'ModelResourcesID'.
---@return integer[] value
function row:GetModelResourcesID() end

---Sets the value of field 'ModelResourcesID'.
---@param value integer[]
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetModelResourcesID(value) end

---Gets element at 1-based index in 'ModelResourcesID'.
---@param index integer
---@return integer value
function row:GetModelResourcesIDItem(index) end

---Navigates foreign relationship to 'ModelFileData' via 'ModelResourcesID'.
---@return dbc.row.v1215.ModelFileData|nil
function row:GetModelResources() end

---Creates a related 'ModelFileData' row and automatically links 'ModelResourcesID'.
---@param data? table
---@return dbc.row.v1215.ModelFileData
function row:CreateRelated(data) end

---Gets the value of field 'ModelMaterialResourcesID'.
---@return integer[] value
function row:GetModelMaterialResourcesID() end

---Sets the value of field 'ModelMaterialResourcesID'.
---@param value integer[]
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetModelMaterialResourcesID(value) end

---Gets element at 1-based index in 'ModelMaterialResourcesID'.
---@param index integer
---@return integer value
function row:GetModelMaterialResourcesIDItem(index) end

---Navigates foreign relationship to 'TextureFileData' via 'ModelMaterialResourcesID'.
---@return dbc.row.v1215.TextureFileData|nil
function row:GetModelMaterialResources() end

---Creates a related 'TextureFileData' row and automatically links 'ModelMaterialResourcesID'.
---@param data? table
---@return dbc.row.v1215.TextureFileData
function row:CreateRelated(data) end

---Gets the value of field 'ModelType'.
---@return integer[] value
function row:GetModelType() end

---Sets the value of field 'ModelType'.
---@param value integer[]
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetModelType(value) end

---Gets element at 1-based index in 'ModelType'.
---@param index integer
---@return integer value
function row:GetModelTypeItem(index) end

---Gets the value of field 'GeosetGroup'.
---@return integer[] value
function row:GetGeosetGroup() end

---Sets the value of field 'GeosetGroup'.
---@param value integer[]
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetGeosetGroup(value) end

---Gets element at 1-based index in 'GeosetGroup'.
---@param index integer
---@return integer value
function row:GetGeosetGroupItem(index) end

---Gets the value of field 'AttachmentGeosetGroup'.
---@return integer[] value
function row:GetAttachmentGeosetGroup() end

---Sets the value of field 'AttachmentGeosetGroup'.
---@param value integer[]
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetAttachmentGeosetGroup(value) end

---Gets element at 1-based index in 'AttachmentGeosetGroup'.
---@param index integer
---@return integer value
function row:GetAttachmentGeosetGroupItem(index) end

---Gets the value of field 'HelmetGeosetVis'.
---@return integer[] value
function row:GetHelmetGeosetVis() end

---Sets the value of field 'HelmetGeosetVis'.
---@param value integer[]
---@return dbc.row.v1215.ItemDisplayInfo self
function row:SetHelmetGeosetVis(value) end

---Gets element at 1-based index in 'HelmetGeosetVis'.
---@param index integer
---@return integer value
function row:GetHelmetGeosetVisItem(index) end

---Table container for ItemDisplayInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemDisplayInfo : DbcTable
---@field [integer] dbc.row.v1215.ItemDisplayInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemDisplayInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemDisplayInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemDisplayInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemDisplayInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemDisplayInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
