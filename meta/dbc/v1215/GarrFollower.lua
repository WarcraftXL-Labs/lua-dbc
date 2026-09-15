---@meta
-- Generated LuaLS annotations for GarrFollower (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GarrFollower in build 12.1.5.69594.
---@class dbc.row.v1215.GarrFollower : RowProxy
---@field ID integer
---@field HordeSourceText_lang string
---@field AllianceSourceText_lang string
---@field TitleName_lang string
---@field GarrTypeID integer
---@field GarrFollowerTypeID integer
---@field HordeCreatureID integer
---@field AllianceCreatureID integer
---@field HordeGarrFollRaceID integer
---@field AllianceGarrFollRaceID integer
---@field HordeGarrClassSpecID integer
---@field AllianceGarrClassSpecID integer
---@field Quality integer
---@field FollowerLevel integer
---@field ItemLevelWeapon integer
---@field ItemLevelArmor integer
---@field HordeSourceTypeEnum integer
---@field AllianceSourceTypeEnum integer
---@field HordeIconFileDataID integer
---@field AllianceIconFileDataID integer
---@field HordeGarrFollItemSetID integer
---@field AllianceGarrFollItemSetID integer
---@field HordeUITextureKitID integer
---@field AllianceUITextureKitID integer
---@field Vitality integer
---@field HordeFlavorGarrStringID integer
---@field AllianceFlavorGarrStringID integer
---@field HordeSlottingBroadcastTextID integer
---@field AllySlottingBroadcastTextID integer
---@field ChrClassID integer
---@field Flags integer
---@field Gender integer
---@field AutoCombatantID integer
---@field CovenantID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetID(value) end

---Gets the value of field 'HordeSourceText_lang'.
---@return string value
function row:GetHordeSourceText_lang() end

---Sets the value of field 'HordeSourceText_lang'.
---@param value string
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeSourceText_lang(value) end

---Gets the value of field 'AllianceSourceText_lang'.
---@return string value
function row:GetAllianceSourceText_lang() end

---Sets the value of field 'AllianceSourceText_lang'.
---@param value string
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceSourceText_lang(value) end

---Gets the value of field 'TitleName_lang'.
---@return string value
function row:GetTitleName_lang() end

---Sets the value of field 'TitleName_lang'.
---@param value string
---@return dbc.row.v1215.GarrFollower self
function row:SetTitleName_lang(value) end

---Gets the value of field 'GarrTypeID'.
---@return integer value
function row:GetGarrTypeID() end

---Sets the value of field 'GarrTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetGarrTypeID(value) end

---Navigates foreign relationship to 'GarrType' via 'GarrTypeID'.
---@return dbc.row.v1215.GarrType|nil
function row:GetGarrType() end

---Creates a related 'GarrType' row and automatically links 'GarrTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrType
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerTypeID'.
---@return integer value
function row:GetGarrFollowerTypeID() end

---Sets the value of field 'GarrFollowerTypeID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetGarrFollowerTypeID(value) end

---Navigates foreign relationship to 'GarrFollowerType' via 'GarrFollowerTypeID'.
---@return dbc.row.v1215.GarrFollowerType|nil
function row:GetGarrFollowerType() end

---Creates a related 'GarrFollowerType' row and automatically links 'GarrFollowerTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrFollowerType
function row:CreateRelated(data) end

---Gets the value of field 'HordeCreatureID'.
---@return integer value
function row:GetHordeCreatureID() end

---Sets the value of field 'HordeCreatureID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'HordeCreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetHordeCreature() end

---Creates a related 'Creature' row and automatically links 'HordeCreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'AllianceCreatureID'.
---@return integer value
function row:GetAllianceCreatureID() end

---Sets the value of field 'AllianceCreatureID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceCreatureID(value) end

---Navigates foreign relationship to 'Creature' via 'AllianceCreatureID'.
---@return dbc.row.v1215.Creature|nil
function row:GetAllianceCreature() end

---Creates a related 'Creature' row and automatically links 'AllianceCreatureID'.
---@param data? table
---@return dbc.row.v1215.Creature
function row:CreateRelated(data) end

---Gets the value of field 'HordeGarrFollRaceID'.
---@return integer value
function row:GetHordeGarrFollRaceID() end

---Sets the value of field 'HordeGarrFollRaceID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeGarrFollRaceID(value) end

---Navigates foreign relationship to 'HordeGarrFollRace' via 'HordeGarrFollRaceID'.
---@return dbc.row.v1215.HordeGarrFollRace|nil
function row:GetHordeGarrFollRace() end

---Creates a related 'HordeGarrFollRace' row and automatically links 'HordeGarrFollRaceID'.
---@param data? table
---@return dbc.row.v1215.HordeGarrFollRace
function row:CreateRelated(data) end

---Gets the value of field 'AllianceGarrFollRaceID'.
---@return integer value
function row:GetAllianceGarrFollRaceID() end

---Sets the value of field 'AllianceGarrFollRaceID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceGarrFollRaceID(value) end

---Navigates foreign relationship to 'AllianceGarrFollRace' via 'AllianceGarrFollRaceID'.
---@return dbc.row.v1215.AllianceGarrFollRace|nil
function row:GetAllianceGarrFollRace() end

---Creates a related 'AllianceGarrFollRace' row and automatically links 'AllianceGarrFollRaceID'.
---@param data? table
---@return dbc.row.v1215.AllianceGarrFollRace
function row:CreateRelated(data) end

---Gets the value of field 'HordeGarrClassSpecID'.
---@return integer value
function row:GetHordeGarrClassSpecID() end

---Sets the value of field 'HordeGarrClassSpecID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeGarrClassSpecID(value) end

---Navigates foreign relationship to 'HordeGarrClassSpec' via 'HordeGarrClassSpecID'.
---@return dbc.row.v1215.HordeGarrClassSpec|nil
function row:GetHordeGarrClassSpec() end

---Creates a related 'HordeGarrClassSpec' row and automatically links 'HordeGarrClassSpecID'.
---@param data? table
---@return dbc.row.v1215.HordeGarrClassSpec
function row:CreateRelated(data) end

---Gets the value of field 'AllianceGarrClassSpecID'.
---@return integer value
function row:GetAllianceGarrClassSpecID() end

---Sets the value of field 'AllianceGarrClassSpecID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceGarrClassSpecID(value) end

---Navigates foreign relationship to 'AllianceGarrClassSpec' via 'AllianceGarrClassSpecID'.
---@return dbc.row.v1215.AllianceGarrClassSpec|nil
function row:GetAllianceGarrClassSpec() end

---Creates a related 'AllianceGarrClassSpec' row and automatically links 'AllianceGarrClassSpecID'.
---@param data? table
---@return dbc.row.v1215.AllianceGarrClassSpec
function row:CreateRelated(data) end

---Gets the value of field 'Quality'.
---@return integer value
function row:GetQuality() end

---Sets the value of field 'Quality'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetQuality(value) end

---Gets the value of field 'FollowerLevel'.
---@return integer value
function row:GetFollowerLevel() end

---Sets the value of field 'FollowerLevel'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetFollowerLevel(value) end

---Gets the value of field 'ItemLevelWeapon'.
---@return integer value
function row:GetItemLevelWeapon() end

---Sets the value of field 'ItemLevelWeapon'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetItemLevelWeapon(value) end

---Gets the value of field 'ItemLevelArmor'.
---@return integer value
function row:GetItemLevelArmor() end

---Sets the value of field 'ItemLevelArmor'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetItemLevelArmor(value) end

---Gets the value of field 'HordeSourceTypeEnum'.
---@return integer value
function row:GetHordeSourceTypeEnum() end

---Sets the value of field 'HordeSourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeSourceTypeEnum(value) end

---Gets the value of field 'AllianceSourceTypeEnum'.
---@return integer value
function row:GetAllianceSourceTypeEnum() end

---Sets the value of field 'AllianceSourceTypeEnum'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceSourceTypeEnum(value) end

---Gets the value of field 'HordeIconFileDataID'.
---@return integer value
function row:GetHordeIconFileDataID() end

---Sets the value of field 'HordeIconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'HordeIconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetHordeIconFileData() end

---Creates a related 'FileData' row and automatically links 'HordeIconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'AllianceIconFileDataID'.
---@return integer value
function row:GetAllianceIconFileDataID() end

---Sets the value of field 'AllianceIconFileDataID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'AllianceIconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetAllianceIconFileData() end

---Creates a related 'FileData' row and automatically links 'AllianceIconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'HordeGarrFollItemSetID'.
---@return integer value
function row:GetHordeGarrFollItemSetID() end

---Sets the value of field 'HordeGarrFollItemSetID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeGarrFollItemSetID(value) end

---Navigates foreign relationship to 'HordeGarrFollItemSet' via 'HordeGarrFollItemSetID'.
---@return dbc.row.v1215.HordeGarrFollItemSet|nil
function row:GetHordeGarrFollItemSet() end

---Creates a related 'HordeGarrFollItemSet' row and automatically links 'HordeGarrFollItemSetID'.
---@param data? table
---@return dbc.row.v1215.HordeGarrFollItemSet
function row:CreateRelated(data) end

---Gets the value of field 'AllianceGarrFollItemSetID'.
---@return integer value
function row:GetAllianceGarrFollItemSetID() end

---Sets the value of field 'AllianceGarrFollItemSetID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceGarrFollItemSetID(value) end

---Navigates foreign relationship to 'AllianceGarrFollItemSet' via 'AllianceGarrFollItemSetID'.
---@return dbc.row.v1215.AllianceGarrFollItemSet|nil
function row:GetAllianceGarrFollItemSet() end

---Creates a related 'AllianceGarrFollItemSet' row and automatically links 'AllianceGarrFollItemSetID'.
---@param data? table
---@return dbc.row.v1215.AllianceGarrFollItemSet
function row:CreateRelated(data) end

---Gets the value of field 'HordeUITextureKitID'.
---@return integer value
function row:GetHordeUITextureKitID() end

---Sets the value of field 'HordeUITextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeUITextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'HordeUITextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetHordeUITextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'HordeUITextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'AllianceUITextureKitID'.
---@return integer value
function row:GetAllianceUITextureKitID() end

---Sets the value of field 'AllianceUITextureKitID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceUITextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'AllianceUITextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetAllianceUITextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'AllianceUITextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'Vitality'.
---@return integer value
function row:GetVitality() end

---Sets the value of field 'Vitality'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetVitality(value) end

---Gets the value of field 'HordeFlavorGarrStringID'.
---@return integer value
function row:GetHordeFlavorGarrStringID() end

---Sets the value of field 'HordeFlavorGarrStringID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeFlavorGarrStringID(value) end

---Navigates foreign relationship to 'HordeFlavorGarrString' via 'HordeFlavorGarrStringID'.
---@return dbc.row.v1215.HordeFlavorGarrString|nil
function row:GetHordeFlavorGarrString() end

---Creates a related 'HordeFlavorGarrString' row and automatically links 'HordeFlavorGarrStringID'.
---@param data? table
---@return dbc.row.v1215.HordeFlavorGarrString
function row:CreateRelated(data) end

---Gets the value of field 'AllianceFlavorGarrStringID'.
---@return integer value
function row:GetAllianceFlavorGarrStringID() end

---Sets the value of field 'AllianceFlavorGarrStringID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllianceFlavorGarrStringID(value) end

---Navigates foreign relationship to 'AllianceFlavorGarrString' via 'AllianceFlavorGarrStringID'.
---@return dbc.row.v1215.AllianceFlavorGarrString|nil
function row:GetAllianceFlavorGarrString() end

---Creates a related 'AllianceFlavorGarrString' row and automatically links 'AllianceFlavorGarrStringID'.
---@param data? table
---@return dbc.row.v1215.AllianceFlavorGarrString
function row:CreateRelated(data) end

---Gets the value of field 'HordeSlottingBroadcastTextID'.
---@return integer value
function row:GetHordeSlottingBroadcastTextID() end

---Sets the value of field 'HordeSlottingBroadcastTextID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetHordeSlottingBroadcastTextID(value) end

---Navigates foreign relationship to 'HordeSlottingBroadcastText' via 'HordeSlottingBroadcastTextID'.
---@return dbc.row.v1215.HordeSlottingBroadcastText|nil
function row:GetHordeSlottingBroadcastText() end

---Creates a related 'HordeSlottingBroadcastText' row and automatically links 'HordeSlottingBroadcastTextID'.
---@param data? table
---@return dbc.row.v1215.HordeSlottingBroadcastText
function row:CreateRelated(data) end

---Gets the value of field 'AllySlottingBroadcastTextID'.
---@return integer value
function row:GetAllySlottingBroadcastTextID() end

---Sets the value of field 'AllySlottingBroadcastTextID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAllySlottingBroadcastTextID(value) end

---Navigates foreign relationship to 'AllySlottingBroadcastText' via 'AllySlottingBroadcastTextID'.
---@return dbc.row.v1215.AllySlottingBroadcastText|nil
function row:GetAllySlottingBroadcastText() end

---Creates a related 'AllySlottingBroadcastText' row and automatically links 'AllySlottingBroadcastTextID'.
---@param data? table
---@return dbc.row.v1215.AllySlottingBroadcastText
function row:CreateRelated(data) end

---Gets the value of field 'ChrClassID'.
---@return integer value
function row:GetChrClassID() end

---Sets the value of field 'ChrClassID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetChrClassID(value) end

---Navigates foreign relationship to 'ChrClass' via 'ChrClassID'.
---@return dbc.row.v1215.ChrClass|nil
function row:GetChrClass() end

---Creates a related 'ChrClass' row and automatically links 'ChrClassID'.
---@param data? table
---@return dbc.row.v1215.ChrClass
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetFlags(value) end

---Gets the value of field 'Gender'.
---@return integer value
function row:GetGender() end

---Sets the value of field 'Gender'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetGender(value) end

---Gets the value of field 'AutoCombatantID'.
---@return integer value
function row:GetAutoCombatantID() end

---Sets the value of field 'AutoCombatantID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetAutoCombatantID(value) end

---Navigates foreign relationship to 'GarrAutoCombatant' via 'AutoCombatantID'.
---@return dbc.row.v1215.GarrAutoCombatant|nil
function row:GetAutoCombatant() end

---Creates a related 'GarrAutoCombatant' row and automatically links 'AutoCombatantID'.
---@param data? table
---@return dbc.row.v1215.GarrAutoCombatant
function row:CreateRelated(data) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.GarrFollower self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Table container for GarrFollower (Build 12.1.5.69594).
---@class dbc.Table.v1215.GarrFollower : DbcTable
---@field [integer] dbc.row.v1215.GarrFollower
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GarrFollower
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollower|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GarrFollower
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GarrFollower>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GarrFollower[]
function tbl:GetByRelation(foreign_id) end

return {}
