---@meta
-- Generated LuaLS annotations for GarrMission (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrMission in build 12.1.5.69594.
---@class dbc.row.v1215.GarrMission : RowProxy
---@field ID integer
---@field Name_lang string
---@field Location_lang string
---@field Description_lang string
---@field MapPos number[]
---@field WorldPos number[]
---@field GarrTypeID integer
---@field GarrMissionTypeID integer
---@field GarrFollowerTypeID integer
---@field MaxFollowers integer
---@field MissionCost integer
---@field MissionCostCurrencyTypesID integer
---@field OfferedGarrMissionTextureID integer
---@field UiTextureKitID integer
---@field EnvGarrMechanicID integer
---@field EnvGarrMechanicTypeID integer
---@field PlayerConditionID integer
---@field GarrMissionSetID integer
---@field TargetLevel integer
---@field TargetItemLevel integer
---@field MissionDuration integer
---@field TravelDuration integer
---@field OfferDuration integer
---@field BaseCompletionChance integer
---@field BaseFollowerXP integer
---@field OvermaxRewardPackID integer
---@field FollowerDeathChance integer
---@field AreaID integer
---@field Flags integer GARR_MISSION_FLAGS: &0x1: isRare; &0x2: isElite; &0x4: appliesFatigue; &0x8: alwaysFail; &0x10: isZoneSupport
---@field AutoMissionScalar number
---@field AutoMissionScalarCurveID integer
---@field AutoCombatantEnvCasterID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.GarrMission self
function row:SetName_lang(value) end

---Gets the value of field 'Location_lang'.
---@return string value
function row:GetLocation_lang() end

---Sets the value of field 'Location_lang'.
---@param value string
---@return dbc.row.v1215.GarrMission self
function row:SetLocation_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.GarrMission self
function row:SetDescription_lang(value) end

---Gets the value of field 'MapPos'.
---@return number[] value
function row:GetMapPos() end

---Sets the value of field 'MapPos'.
---@param value number[]
---@return dbc.row.v1215.GarrMission self
function row:SetMapPos(value) end

---Gets element at 1-based index in 'MapPos'.
---@param index integer
---@return number value
function row:GetMapPosItem(index) end

---Gets the value of field 'WorldPos'.
---@return number[] value
function row:GetWorldPos() end

---Sets the value of field 'WorldPos'.
---@param value number[]
---@return dbc.row.v1215.GarrMission self
function row:SetWorldPos(value) end

---Gets element at 1-based index in 'WorldPos'.
---@param index integer
---@return number value
function row:GetWorldPosItem(index) end

---Gets the value of field 'GarrTypeID'.
---@return integer value
function row:GetGarrTypeID() end

---Sets the value of field 'GarrTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetGarrTypeID(value) end

---Navigates foreign relationship to 'GarrType' via 'GarrTypeID'.
---@return dbc.row.v1215.GarrType|nil
function row:GetGarrType() end

---Creates a related 'GarrType' row and automatically links 'GarrTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrType
function row:CreateRelated(data) end

---Gets the value of field 'GarrMissionTypeID'.
---@return integer value
function row:GetGarrMissionTypeID() end

---Sets the value of field 'GarrMissionTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetGarrMissionTypeID(value) end

---Navigates foreign relationship to 'GarrMissionType' via 'GarrMissionTypeID'.
---@return dbc.row.v1215.GarrMissionType|nil
function row:GetGarrMissionType() end

---Creates a related 'GarrMissionType' row and automatically links 'GarrMissionTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrMissionType
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerTypeID'.
---@return integer value
function row:GetGarrFollowerTypeID() end

---Sets the value of field 'GarrFollowerTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetGarrFollowerTypeID(value) end

---Navigates foreign relationship to 'GarrFollowerType' via 'GarrFollowerTypeID'.
---@return dbc.row.v1215.GarrFollowerType|nil
function row:GetGarrFollowerType() end

---Creates a related 'GarrFollowerType' row and automatically links 'GarrFollowerTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerType
function row:CreateRelated(data) end

---Gets the value of field 'MaxFollowers'.
---@return integer value
function row:GetMaxFollowers() end

---Sets the value of field 'MaxFollowers'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetMaxFollowers(value) end

---Gets the value of field 'MissionCost'.
---@return integer value
function row:GetMissionCost() end

---Sets the value of field 'MissionCost'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetMissionCost(value) end

---Gets the value of field 'MissionCostCurrencyTypesID'.
---@return integer value
function row:GetMissionCostCurrencyTypesID() end

---Sets the value of field 'MissionCostCurrencyTypesID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetMissionCostCurrencyTypesID(value) end

---Navigates foreign relationship to 'CurrencyTypes' via 'MissionCostCurrencyTypesID'.
---@return dbc.row.v1215.CurrencyTypes|nil
function row:GetMissionCostCurrencyTypes() end

---Creates a related 'CurrencyTypes' row and automatically links 'MissionCostCurrencyTypesID'.
---@param data? table
---@return dbc.row.v1215.CurrencyTypes
function row:CreateRelated(data) end

---Gets the value of field 'OfferedGarrMissionTextureID'.
---@return integer value
function row:GetOfferedGarrMissionTextureID() end

---Sets the value of field 'OfferedGarrMissionTextureID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetOfferedGarrMissionTextureID(value) end

---Navigates foreign relationship to 'OfferedGarrMissionTexture' via 'OfferedGarrMissionTextureID'.
---@return dbc.row.v1215.OfferedGarrMissionTexture|nil
function row:GetOfferedGarrMissionTexture() end

---Creates a related 'OfferedGarrMissionTexture' row and automatically links 'OfferedGarrMissionTextureID'.
---@param data? table
---@return dbc.row.v1215.OfferedGarrMissionTexture
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'EnvGarrMechanicID'.
---@return integer value
function row:GetEnvGarrMechanicID() end

---Sets the value of field 'EnvGarrMechanicID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetEnvGarrMechanicID(value) end

---Navigates foreign relationship to 'EnvGarrMechanic' via 'EnvGarrMechanicID'.
---@return dbc.row.v1215.EnvGarrMechanic|nil
function row:GetEnvGarrMechanic() end

---Creates a related 'EnvGarrMechanic' row and automatically links 'EnvGarrMechanicID'.
---@param data? table
---@return dbc.row.v1215.EnvGarrMechanic
function row:CreateRelated(data) end

---Gets the value of field 'EnvGarrMechanicTypeID'.
---@return integer value
function row:GetEnvGarrMechanicTypeID() end

---Sets the value of field 'EnvGarrMechanicTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetEnvGarrMechanicTypeID(value) end

---Navigates foreign relationship to 'EnvGarrMechanicType' via 'EnvGarrMechanicTypeID'.
---@return dbc.row.v1215.EnvGarrMechanicType|nil
function row:GetEnvGarrMechanicType() end

---Creates a related 'EnvGarrMechanicType' row and automatically links 'EnvGarrMechanicTypeID'.
---@param data? table
---@return dbc.row.v1215.EnvGarrMechanicType
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'GarrMissionSetID'.
---@return integer value
function row:GetGarrMissionSetID() end

---Sets the value of field 'GarrMissionSetID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetGarrMissionSetID(value) end

---Navigates foreign relationship to 'GarrMissionSet' via 'GarrMissionSetID'.
---@return dbc.row.v1215.GarrMissionSet|nil
function row:GetGarrMissionSet() end

---Creates a related 'GarrMissionSet' row and automatically links 'GarrMissionSetID'.
---@param data? table
---@return dbc.row.v1215.GarrMissionSet
function row:CreateRelated(data) end

---Gets the value of field 'TargetLevel'.
---@return integer value
function row:GetTargetLevel() end

---Sets the value of field 'TargetLevel'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetTargetLevel(value) end

---Gets the value of field 'TargetItemLevel'.
---@return integer value
function row:GetTargetItemLevel() end

---Sets the value of field 'TargetItemLevel'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetTargetItemLevel(value) end

---Gets the value of field 'MissionDuration'.
---@return integer value
function row:GetMissionDuration() end

---Sets the value of field 'MissionDuration'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetMissionDuration(value) end

---Gets the value of field 'TravelDuration'.
---@return integer value
function row:GetTravelDuration() end

---Sets the value of field 'TravelDuration'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetTravelDuration(value) end

---Gets the value of field 'OfferDuration'.
---@return integer value
function row:GetOfferDuration() end

---Sets the value of field 'OfferDuration'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetOfferDuration(value) end

---Gets the value of field 'BaseCompletionChance'.
---@return integer value
function row:GetBaseCompletionChance() end

---Sets the value of field 'BaseCompletionChance'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetBaseCompletionChance(value) end

---Gets the value of field 'BaseFollowerXP'.
---@return integer value
function row:GetBaseFollowerXP() end

---Sets the value of field 'BaseFollowerXP'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetBaseFollowerXP(value) end

---Gets the value of field 'OvermaxRewardPackID'.
---@return integer value
function row:GetOvermaxRewardPackID() end

---Sets the value of field 'OvermaxRewardPackID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetOvermaxRewardPackID(value) end

---Navigates foreign relationship to 'OvermaxRewardPack' via 'OvermaxRewardPackID'.
---@return dbc.row.v1215.OvermaxRewardPack|nil
function row:GetOvermaxRewardPack() end

---Creates a related 'OvermaxRewardPack' row and automatically links 'OvermaxRewardPackID'.
---@param data? table
---@return dbc.row.v1215.OvermaxRewardPack
function row:CreateRelated(data) end

---Gets the value of field 'FollowerDeathChance'.
---@return integer value
function row:GetFollowerDeathChance() end

---Sets the value of field 'FollowerDeathChance'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetFollowerDeathChance(value) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'Area' via 'AreaID'.
---@return dbc.row.v1215.Area|nil
function row:GetArea() end

---Creates a related 'Area' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.Area
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetFlags(value) end

---Gets the value of field 'AutoMissionScalar'.
---@return number value
function row:GetAutoMissionScalar() end

---Sets the value of field 'AutoMissionScalar'.
---@param value number
---@return dbc.row.v1215.GarrMission self
function row:SetAutoMissionScalar(value) end

---Gets the value of field 'AutoMissionScalarCurveID'.
---@return integer value
function row:GetAutoMissionScalarCurveID() end

---Sets the value of field 'AutoMissionScalarCurveID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetAutoMissionScalarCurveID(value) end

---Navigates foreign relationship to 'AutoMissionScalarCurve' via 'AutoMissionScalarCurveID'.
---@return dbc.row.v1215.AutoMissionScalarCurve|nil
function row:GetAutoMissionScalarCurve() end

---Creates a related 'AutoMissionScalarCurve' row and automatically links 'AutoMissionScalarCurveID'.
---@param data? table
---@return dbc.row.v1215.AutoMissionScalarCurve
function row:CreateRelated(data) end

---Gets the value of field 'AutoCombatantEnvCasterID'.
---@return integer value
function row:GetAutoCombatantEnvCasterID() end

---Sets the value of field 'AutoCombatantEnvCasterID'.
---@param value integer
---@return dbc.row.v1215.GarrMission self
function row:SetAutoCombatantEnvCasterID(value) end

---Navigates foreign relationship to 'GarrAutoCombatant' via 'AutoCombatantEnvCasterID'.
---@return dbc.row.v1215.GarrAutoCombatant|nil
function row:GetAutoCombatantEnvCaster() end

---Creates a related 'GarrAutoCombatant' row and automatically links 'AutoCombatantEnvCasterID'.
---@param data? table
---@return dbc.row.v1215.GarrAutoCombatant
function row:CreateRelated(data) end

---Table container for GarrMission (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrMission : DbcTable
---@field [integer] dbc.row.v1215.GarrMission
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrMission
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrMission|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrMission
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrMission>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrMission[]
function tbl:GetByRelation(foreign_id) end

return {}
