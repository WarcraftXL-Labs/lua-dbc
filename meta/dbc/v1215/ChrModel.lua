---@meta
-- Generated LuaLS annotations for ChrModel (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrModel in build 12.1.5.69594.
---@class dbc.row.v1215.ChrModel : RowProxy
---@field FaceCustomizationOffset number[]
---@field CustomizeOffset number[]
---@field ID integer
---@field Sex integer
---@field DisplayID integer
---@field CharComponentTextureLayoutID integer
---@field Flags integer
---@field SkeletonFileDataID integer
---@field ModelFallbackChrModelID integer
---@field TextureFallbackChrModelID integer
---@field HelmVisFallbackChrModelID integer
---@field CustomizeScale number
---@field CustomizeFacing number in radians
---@field CameraDistanceOffset number
---@field BarberShopCameraOffsetScale number
---@field BarberShopCameraRotationFacing number
---@field BarberShopCameraRotationOffset number in radians, rotated by 180°?! unsure, used in camera code

local row = {}

---Gets the value of field 'FaceCustomizationOffset'.
---@return number[] value
function row:GetFaceCustomizationOffset() end

---Sets the value of field 'FaceCustomizationOffset'.
---@param value number[]
---@return dbc.row.v1215.ChrModel self
function row:SetFaceCustomizationOffset(value) end

---Gets element at 1-based index in 'FaceCustomizationOffset'.
---@param index integer
---@return number value
function row:GetFaceCustomizationOffsetItem(index) end

---Gets the value of field 'CustomizeOffset'.
---@return number[] value
function row:GetCustomizeOffset() end

---Sets the value of field 'CustomizeOffset'.
---@param value number[]
---@return dbc.row.v1215.ChrModel self
function row:SetCustomizeOffset(value) end

---Gets element at 1-based index in 'CustomizeOffset'.
---@param index integer
---@return number value
function row:GetCustomizeOffsetItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetID(value) end

---Gets the value of field 'Sex'.
---@return integer value
function row:GetSex() end

---Sets the value of field 'Sex'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetSex(value) end

---Gets the value of field 'DisplayID'.
---@return integer value
function row:GetDisplayID() end

---Sets the value of field 'DisplayID'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetDisplayID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'DisplayID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetDisplay() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'DisplayID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'CharComponentTextureLayoutID'.
---@return integer value
function row:GetCharComponentTextureLayoutID() end

---Sets the value of field 'CharComponentTextureLayoutID'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetCharComponentTextureLayoutID(value) end

---Navigates foreign relationship to 'CharComponentTextureLayouts' via 'CharComponentTextureLayoutID'.
---@return dbc.row.v1215.CharComponentTextureLayouts|nil
function row:GetCharComponentTextureLayout() end

---Creates a related 'CharComponentTextureLayouts' row and automatically links 'CharComponentTextureLayoutID'.
---@param data? table
---@return dbc.row.v1215.CharComponentTextureLayouts
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetFlags(value) end

---Gets the value of field 'SkeletonFileDataID'.
---@return integer value
function row:GetSkeletonFileDataID() end

---Sets the value of field 'SkeletonFileDataID'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetSkeletonFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'SkeletonFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetSkeletonFileData() end

---Creates a related 'FileData' row and automatically links 'SkeletonFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ModelFallbackChrModelID'.
---@return integer value
function row:GetModelFallbackChrModelID() end

---Sets the value of field 'ModelFallbackChrModelID'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetModelFallbackChrModelID(value) end

---Navigates foreign relationship to 'ChrModel' via 'ModelFallbackChrModelID'.
---@return dbc.row.v1215.ChrModel|nil
function row:GetModelFallbackChrModel() end

---Creates a related 'ChrModel' row and automatically links 'ModelFallbackChrModelID'.
---@param data? table
---@return dbc.row.v1215.ChrModel
function row:CreateRelated(data) end

---Gets the value of field 'TextureFallbackChrModelID'.
---@return integer value
function row:GetTextureFallbackChrModelID() end

---Sets the value of field 'TextureFallbackChrModelID'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetTextureFallbackChrModelID(value) end

---Navigates foreign relationship to 'ChrModel' via 'TextureFallbackChrModelID'.
---@return dbc.row.v1215.ChrModel|nil
function row:GetTextureFallbackChrModel() end

---Creates a related 'ChrModel' row and automatically links 'TextureFallbackChrModelID'.
---@param data? table
---@return dbc.row.v1215.ChrModel
function row:CreateRelated(data) end

---Gets the value of field 'HelmVisFallbackChrModelID'.
---@return integer value
function row:GetHelmVisFallbackChrModelID() end

---Sets the value of field 'HelmVisFallbackChrModelID'.
---@param value integer
---@return dbc.row.v1215.ChrModel self
function row:SetHelmVisFallbackChrModelID(value) end

---Navigates foreign relationship to 'ChrModel' via 'HelmVisFallbackChrModelID'.
---@return dbc.row.v1215.ChrModel|nil
function row:GetHelmVisFallbackChrModel() end

---Creates a related 'ChrModel' row and automatically links 'HelmVisFallbackChrModelID'.
---@param data? table
---@return dbc.row.v1215.ChrModel
function row:CreateRelated(data) end

---Gets the value of field 'CustomizeScale'.
---@return number value
function row:GetCustomizeScale() end

---Sets the value of field 'CustomizeScale'.
---@param value number
---@return dbc.row.v1215.ChrModel self
function row:SetCustomizeScale(value) end

---Gets the value of field 'CustomizeFacing'.
---@return number value
function row:GetCustomizeFacing() end

---Sets the value of field 'CustomizeFacing'.
---@param value number
---@return dbc.row.v1215.ChrModel self
function row:SetCustomizeFacing(value) end

---Gets the value of field 'CameraDistanceOffset'.
---@return number value
function row:GetCameraDistanceOffset() end

---Sets the value of field 'CameraDistanceOffset'.
---@param value number
---@return dbc.row.v1215.ChrModel self
function row:SetCameraDistanceOffset(value) end

---Gets the value of field 'BarberShopCameraOffsetScale'.
---@return number value
function row:GetBarberShopCameraOffsetScale() end

---Sets the value of field 'BarberShopCameraOffsetScale'.
---@param value number
---@return dbc.row.v1215.ChrModel self
function row:SetBarberShopCameraOffsetScale(value) end

---Gets the value of field 'BarberShopCameraRotationFacing'.
---@return number value
function row:GetBarberShopCameraRotationFacing() end

---Sets the value of field 'BarberShopCameraRotationFacing'.
---@param value number
---@return dbc.row.v1215.ChrModel self
function row:SetBarberShopCameraRotationFacing(value) end

---Gets the value of field 'BarberShopCameraRotationOffset'.
---@return number value
function row:GetBarberShopCameraRotationOffset() end

---Sets the value of field 'BarberShopCameraRotationOffset'.
---@param value number
---@return dbc.row.v1215.ChrModel self
function row:SetBarberShopCameraRotationOffset(value) end

---Table container for ChrModel (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrModel : DbcTable
---@field [integer] dbc.row.v1215.ChrModel
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrModel
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrModel|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrModel
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrModel>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrModel[]
function tbl:GetByRelation(foreign_id) end

return {}
