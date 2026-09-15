---@meta
-- Generated LuaLS annotations for GarrBuilding (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrBuilding in build 12.1.5.69594.
---@class dbc.row.v1215.GarrBuilding : RowProxy
---@field ID integer
---@field HordeName_lang string
---@field AllianceName_lang string
---@field Description_lang string
---@field Tooltip_lang string
---@field GarrTypeID integer
---@field BuildingType integer
---@field HordeGameObjectID integer
---@field AllianceGameObjectID integer
---@field GarrSiteID integer
---@field UpgradeLevel integer
---@field BuildSeconds integer
---@field CurrencyTypeID integer
---@field CurrencyQty integer
---@field HordeUiTextureKitID integer
---@field AllianceUiTextureKitID integer
---@field IconFileDataID integer
---@field AllianceSceneScriptPackageID integer
---@field HordeSceneScriptPackageID integer
---@field MaxAssignments integer
---@field ShipmentCapacity integer
---@field GarrAbilityID integer
---@field BonusGarrAbilityID integer
---@field GoldCost integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetID(value) end

---Gets the value of field 'HordeName_lang'.
---@return string value
function row:GetHordeName_lang() end

---Sets the value of field 'HordeName_lang'.
---@param value string
---@return dbc.row.v1215.GarrBuilding self
function row:SetHordeName_lang(value) end

---Gets the value of field 'AllianceName_lang'.
---@return string value
function row:GetAllianceName_lang() end

---Sets the value of field 'AllianceName_lang'.
---@param value string
---@return dbc.row.v1215.GarrBuilding self
function row:SetAllianceName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.GarrBuilding self
function row:SetDescription_lang(value) end

---Gets the value of field 'Tooltip_lang'.
---@return string value
function row:GetTooltip_lang() end

---Sets the value of field 'Tooltip_lang'.
---@param value string
---@return dbc.row.v1215.GarrBuilding self
function row:SetTooltip_lang(value) end

---Gets the value of field 'GarrTypeID'.
---@return integer value
function row:GetGarrTypeID() end

---Sets the value of field 'GarrTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetGarrTypeID(value) end

---Navigates foreign relationship to 'GarrType' via 'GarrTypeID'.
---@return dbc.row.v1215.GarrType|nil
function row:GetGarrType() end

---Creates a related 'GarrType' row and automatically links 'GarrTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrType
function row:CreateRelated(data) end

---Gets the value of field 'BuildingType'.
---@return integer value
function row:GetBuildingType() end

---Sets the value of field 'BuildingType'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetBuildingType(value) end

---Gets the value of field 'HordeGameObjectID'.
---@return integer value
function row:GetHordeGameObjectID() end

---Sets the value of field 'HordeGameObjectID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetHordeGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'HordeGameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetHordeGameObject() end

---Creates a related 'GameObjects' row and automatically links 'HordeGameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'AllianceGameObjectID'.
---@return integer value
function row:GetAllianceGameObjectID() end

---Sets the value of field 'AllianceGameObjectID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetAllianceGameObjectID(value) end

---Navigates foreign relationship to 'GameObjects' via 'AllianceGameObjectID'.
---@return dbc.row.v1215.GameObjects|nil
function row:GetAllianceGameObject() end

---Creates a related 'GameObjects' row and automatically links 'AllianceGameObjectID'.
---@param data? table
---@return dbc.row.v1215.GameObjects
function row:CreateRelated(data) end

---Gets the value of field 'GarrSiteID'.
---@return integer value
function row:GetGarrSiteID() end

---Sets the value of field 'GarrSiteID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetGarrSiteID(value) end

---Navigates foreign relationship to 'GarrSite' via 'GarrSiteID'.
---@return dbc.row.v1215.GarrSite|nil
function row:GetGarrSite() end

---Creates a related 'GarrSite' row and automatically links 'GarrSiteID'.
---@param data? table
---@return dbc.row.v1215.GarrSite
function row:CreateRelated(data) end

---Gets the value of field 'UpgradeLevel'.
---@return integer value
function row:GetUpgradeLevel() end

---Sets the value of field 'UpgradeLevel'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetUpgradeLevel(value) end

---Gets the value of field 'BuildSeconds'.
---@return integer value
function row:GetBuildSeconds() end

---Sets the value of field 'BuildSeconds'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetBuildSeconds(value) end

---Gets the value of field 'CurrencyTypeID'.
---@return integer value
function row:GetCurrencyTypeID() end

---Sets the value of field 'CurrencyTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetCurrencyTypeID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'CurrencyTypeID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetCurrencyType() end

---Creates a related 'CurrencyTypes' row and automatically links 'CurrencyTypeID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'CurrencyQty'.
---@return integer value
function row:GetCurrencyQty() end

---Sets the value of field 'CurrencyQty'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetCurrencyQty(value) end

---Gets the value of field 'HordeUiTextureKitID'.
---@return integer value
function row:GetHordeUiTextureKitID() end

---Sets the value of field 'HordeUiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetHordeUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'HordeUiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetHordeUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'HordeUiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'AllianceUiTextureKitID'.
---@return integer value
function row:GetAllianceUiTextureKitID() end

---Sets the value of field 'AllianceUiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetAllianceUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'AllianceUiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetAllianceUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'AllianceUiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'AllianceSceneScriptPackageID'.
---@return integer value
function row:GetAllianceSceneScriptPackageID() end

---Sets the value of field 'AllianceSceneScriptPackageID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetAllianceSceneScriptPackageID(value) end

---Navigates foreign relationship to 'SceneScriptPackage' via 'AllianceSceneScriptPackageID'.
---@return dbc.row.v1215.SceneScriptPackage|nil
function row:GetAllianceSceneScriptPackage() end

---Creates a related 'SceneScriptPackage' row and automatically links 'AllianceSceneScriptPackageID'.
---@param data? table
---@return dbc.row.v1215.SceneScriptPackage
function row:CreateRelated(data) end

---Gets the value of field 'HordeSceneScriptPackageID'.
---@return integer value
function row:GetHordeSceneScriptPackageID() end

---Sets the value of field 'HordeSceneScriptPackageID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetHordeSceneScriptPackageID(value) end

---Navigates foreign relationship to 'SceneScriptPackage' via 'HordeSceneScriptPackageID'.
---@return dbc.row.v1215.SceneScriptPackage|nil
function row:GetHordeSceneScriptPackage() end

---Creates a related 'SceneScriptPackage' row and automatically links 'HordeSceneScriptPackageID'.
---@param data? table
---@return dbc.row.v1215.SceneScriptPackage
function row:CreateRelated(data) end

---Gets the value of field 'MaxAssignments'.
---@return integer value
function row:GetMaxAssignments() end

---Sets the value of field 'MaxAssignments'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetMaxAssignments(value) end

---Gets the value of field 'ShipmentCapacity'.
---@return integer value
function row:GetShipmentCapacity() end

---Sets the value of field 'ShipmentCapacity'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetShipmentCapacity(value) end

---Gets the value of field 'GarrAbilityID'.
---@return integer value
function row:GetGarrAbilityID() end

---Sets the value of field 'GarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetGarrAbilityID(value) end

---Navigates foreign relationship to 'GarrAbility' via 'GarrAbilityID'.
---@return dbc.row.v1215.GarrAbility|nil
function row:GetGarrAbility() end

---Creates a related 'GarrAbility' row and automatically links 'GarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.GarrAbility
function row:CreateRelated(data) end

---Gets the value of field 'BonusGarrAbilityID'.
---@return integer value
function row:GetBonusGarrAbilityID() end

---Sets the value of field 'BonusGarrAbilityID'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetBonusGarrAbilityID(value) end

---Navigates foreign relationship to 'BonusGarrAbility' via 'BonusGarrAbilityID'.
---@return dbc.row.v1215.BonusGarrAbility|nil
function row:GetBonusGarrAbility() end

---Creates a related 'BonusGarrAbility' row and automatically links 'BonusGarrAbilityID'.
---@param data? table
---@return dbc.row.v1215.BonusGarrAbility
function row:CreateRelated(data) end

---Gets the value of field 'GoldCost'.
---@return integer value
function row:GetGoldCost() end

---Sets the value of field 'GoldCost'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetGoldCost(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrBuilding self
function row:SetFlags(value) end

---Table container for GarrBuilding (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrBuilding : DbcTable
---@field [integer] dbc.row.v1215.GarrBuilding
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrBuilding
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrBuilding|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrBuilding
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrBuilding>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrBuilding[]
function tbl:GetByRelation(foreign_id) end

return {}
