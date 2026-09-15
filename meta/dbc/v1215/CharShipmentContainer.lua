---@meta
-- Generated LuaLS annotations for CharShipmentContainer (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CharShipmentContainer in build 12.1.5.69594.
---@class dbc.row.v1215.CharShipmentContainer : RowProxy
---@field ID integer
---@field Description_lang string
---@field PendingText_lang string
---@field UiTextureKitID integer
---@field GarrTypeID integer
---@field GarrBuildingType integer also used to map to hardcoded list of quests (eg 16 -> 37568/36641)
---@field BaseCapacity integer
---@field SmallDisplayInfoID integer
---@field MediumDisplayInfoID integer
---@field LargeDisplayInfoID integer
---@field WorkingDisplayInfoID integer used by gameobject code to determine if in "in progress" state...
---@field WorkingSpellVisualID integer if both are same as in gameobject mirrors, it is in progress
---@field CompleteSpellVisualID integer
---@field MediumThreshold integer
---@field LargeThreshold integer
---@field Faction integer -1 for both, 0: Horde, 1: Alliance
---@field CrossFactionID integer the corresponding container on the other faction

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetID(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetDescription_lang(value) end

---Gets the value of field 'PendingText_lang'.
---@return string value
function row:GetPendingText_lang() end

---Sets the value of field 'PendingText_lang'.
---@param value string
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetPendingText_lang(value) end

---Gets the value of field 'UiTextureKitID'.
---@return integer value
function row:GetUiTextureKitID() end

---Sets the value of field 'UiTextureKitID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetUiTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'UiTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetUiTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'UiTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'GarrTypeID'.
---@return integer value
function row:GetGarrTypeID() end

---Sets the value of field 'GarrTypeID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetGarrTypeID(value) end

---Navigates foreign relationship to 'GarrType' via 'GarrTypeID'.
---@return dbc.row.v1215.GarrType|nil
function row:GetGarrType() end

---Creates a related 'GarrType' row and automatically links 'GarrTypeID'.
---@param data? table
---@return dbc.row.v1215.GarrType
function row:CreateRelated(data) end

---Gets the value of field 'GarrBuildingType'.
---@return integer value
function row:GetGarrBuildingType() end

---Sets the value of field 'GarrBuildingType'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetGarrBuildingType(value) end

---Navigates foreign relationship to 'GarrBuilding' via 'GarrBuildingType'.
---@return dbc.row.v1215.GarrBuilding|nil
function row:GetGarrBuildingType() end

---Creates a related 'GarrBuilding' row and automatically links 'GarrBuildingType'.
---@param data? table
---@return dbc.row.v1215.GarrBuilding
function row:CreateRelated(data) end

---Gets the value of field 'BaseCapacity'.
---@return integer value
function row:GetBaseCapacity() end

---Sets the value of field 'BaseCapacity'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetBaseCapacity(value) end

---Gets the value of field 'SmallDisplayInfoID'.
---@return integer value
function row:GetSmallDisplayInfoID() end

---Sets the value of field 'SmallDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetSmallDisplayInfoID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'SmallDisplayInfoID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetSmallDisplayInfo() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'SmallDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'MediumDisplayInfoID'.
---@return integer value
function row:GetMediumDisplayInfoID() end

---Sets the value of field 'MediumDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetMediumDisplayInfoID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'MediumDisplayInfoID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetMediumDisplayInfo() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'MediumDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'LargeDisplayInfoID'.
---@return integer value
function row:GetLargeDisplayInfoID() end

---Sets the value of field 'LargeDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetLargeDisplayInfoID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'LargeDisplayInfoID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetLargeDisplayInfo() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'LargeDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'WorkingDisplayInfoID'.
---@return integer value
function row:GetWorkingDisplayInfoID() end

---Sets the value of field 'WorkingDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetWorkingDisplayInfoID(value) end

---Navigates foreign relationship to 'GameObjectDisplayInfo' via 'WorkingDisplayInfoID'.
---@return dbc.row.v1215.GameObjectDisplayInfo|nil
function row:GetWorkingDisplayInfo() end

---Creates a related 'GameObjectDisplayInfo' row and automatically links 'WorkingDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.GameObjectDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'WorkingSpellVisualID'.
---@return integer value
function row:GetWorkingSpellVisualID() end

---Sets the value of field 'WorkingSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetWorkingSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'WorkingSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetWorkingSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'WorkingSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'CompleteSpellVisualID'.
---@return integer value
function row:GetCompleteSpellVisualID() end

---Sets the value of field 'CompleteSpellVisualID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetCompleteSpellVisualID(value) end

---Navigates foreign relationship to 'SpellVisual' via 'CompleteSpellVisualID'.
---@return dbc.row.v1215.SpellVisual|nil
function row:GetCompleteSpellVisual() end

---Creates a related 'SpellVisual' row and automatically links 'CompleteSpellVisualID'.
---@param data? table
---@return dbc.row.v1215.SpellVisual
function row:CreateRelated(data) end

---Gets the value of field 'MediumThreshold'.
---@return integer value
function row:GetMediumThreshold() end

---Sets the value of field 'MediumThreshold'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetMediumThreshold(value) end

---Gets the value of field 'LargeThreshold'.
---@return integer value
function row:GetLargeThreshold() end

---Sets the value of field 'LargeThreshold'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetLargeThreshold(value) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetFaction(value) end

---Gets the value of field 'CrossFactionID'.
---@return integer value
function row:GetCrossFactionID() end

---Sets the value of field 'CrossFactionID'.
---@param value integer
---@return dbc.row.v1215.CharShipmentContainer self
function row:SetCrossFactionID(value) end

---Navigates foreign relationship to 'CharShipmentContainer' via 'CrossFactionID'.
---@return dbc.row.v1215.CharShipmentContainer|nil
function row:GetCrossFaction() end

---Creates a related 'CharShipmentContainer' row and automatically links 'CrossFactionID'.
---@param data? table
---@return dbc.row.v1215.CharShipmentContainer
function row:CreateRelated(data) end

---Table container for CharShipmentContainer (Build 12.1.5.69594).
---@class dbc.Table.v1215.CharShipmentContainer : DbcTable
---@field [integer] dbc.row.v1215.CharShipmentContainer
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CharShipmentContainer
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CharShipmentContainer|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CharShipmentContainer
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CharShipmentContainer>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CharShipmentContainer[]
function tbl:GetByRelation(foreign_id) end

return {}
