---@meta
-- Generated LuaLS annotations for PlayerCompanionInfo (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PlayerCompanionInfo in build 12.1.5.69594.
---@class dbc.row.v1215.PlayerCompanionInfo : RowProxy
---@field UnlockDescription_lang string
---@field Field_12_1_0_68209_001_lang string
---@field ID integer
---@field DelvesSeasonID integer
---@field TraitTreeID integer
---@field TraitNodeID_DPS integer
---@field TraitNodeID_Heal integer
---@field TraitSubTreeID_DPS integer
---@field TraitSubTreeID_Heal integer
---@field TraitSubTreeID_Tank integer
---@field FactionID integer
---@field CreatureDisplayInfoID integer
---@field UiModelSceneID integer
---@field PlayerDataElementCharacterID integer
---@field Field_12_0_0_64499_012 integer
---@field FlavorNodeID integer
---@field Field_12_0_1_64889_014 integer

local row = {}

---Gets the value of field 'UnlockDescription_lang'.
---@return string value
function row:GetUnlockDescription_lang() end

---Sets the value of field 'UnlockDescription_lang'.
---@param value string
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetUnlockDescription_lang(value) end

---Gets the value of field 'Field_12_1_0_68209_001_lang'.
---@return string value
function row:GetField_12_1_0_68209_001_lang() end

---Sets the value of field 'Field_12_1_0_68209_001_lang'.
---@param value string
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetField_12_1_0_68209_001_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetID(value) end

---Gets the value of field 'DelvesSeasonID'.
---@return integer value
function row:GetDelvesSeasonID() end

---Sets the value of field 'DelvesSeasonID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetDelvesSeasonID(value) end

---Navigates foreign relationship to 'DelvesSeason' via 'DelvesSeasonID'.
---@return dbc.row.v1215.DelvesSeason|nil
function row:GetDelvesSeason() end

---Creates a related 'DelvesSeason' row and automatically links 'DelvesSeasonID'.
---@param data? table
---@return dbc.row.v1215.DelvesSeason
function row:CreateRelated(data) end

---Gets the value of field 'TraitTreeID'.
---@return integer value
function row:GetTraitTreeID() end

---Sets the value of field 'TraitTreeID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetTraitTreeID(value) end

---Navigates foreign relationship to 'TraitTree' via 'TraitTreeID'.
---@return dbc.row.v1215.TraitTree|nil
function row:GetTraitTree() end

---Creates a related 'TraitTree' row and automatically links 'TraitTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitTree
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeID_DPS'.
---@return integer value
function row:GetTraitNodeID_DPS() end

---Sets the value of field 'TraitNodeID_DPS'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetTraitNodeID_DPS(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID_DPS'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNodeID_DPS() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID_DPS'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeID_Heal'.
---@return integer value
function row:GetTraitNodeID_Heal() end

---Sets the value of field 'TraitNodeID_Heal'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetTraitNodeID_Heal(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID_Heal'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNodeID_Heal() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID_Heal'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'TraitSubTreeID_DPS'.
---@return integer value
function row:GetTraitSubTreeID_DPS() end

---Sets the value of field 'TraitSubTreeID_DPS'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetTraitSubTreeID_DPS(value) end

---Navigates foreign relationship to 'TraitSubTree' via 'TraitSubTreeID_DPS'.
---@return dbc.row.v1215.TraitSubTree|nil
function row:GetTraitSubTreeID_DPS() end

---Creates a related 'TraitSubTree' row and automatically links 'TraitSubTreeID_DPS'.
---@param data? table
---@return dbc.row.v1215.TraitSubTree
function row:CreateRelated(data) end

---Gets the value of field 'TraitSubTreeID_Heal'.
---@return integer value
function row:GetTraitSubTreeID_Heal() end

---Sets the value of field 'TraitSubTreeID_Heal'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetTraitSubTreeID_Heal(value) end

---Navigates foreign relationship to 'TraitSubTree' via 'TraitSubTreeID_Heal'.
---@return dbc.row.v1215.TraitSubTree|nil
function row:GetTraitSubTreeID_Heal() end

---Creates a related 'TraitSubTree' row and automatically links 'TraitSubTreeID_Heal'.
---@param data? table
---@return dbc.row.v1215.TraitSubTree
function row:CreateRelated(data) end

---Gets the value of field 'TraitSubTreeID_Tank'.
---@return integer value
function row:GetTraitSubTreeID_Tank() end

---Sets the value of field 'TraitSubTreeID_Tank'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetTraitSubTreeID_Tank(value) end

---Navigates foreign relationship to 'TraitSubTree' via 'TraitSubTreeID_Tank'.
---@return dbc.row.v1215.TraitSubTree|nil
function row:GetTraitSubTreeID_Tank() end

---Creates a related 'TraitSubTree' row and automatically links 'TraitSubTreeID_Tank'.
---@param data? table
---@return dbc.row.v1215.TraitSubTree
function row:CreateRelated(data) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'FactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'CreatureDisplayInfoID'.
---@return integer value
function row:GetCreatureDisplayInfoID() end

---Sets the value of field 'CreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'CreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'CreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'UiModelSceneID'.
---@return integer value
function row:GetUiModelSceneID() end

---Sets the value of field 'UiModelSceneID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetUiModelSceneID(value) end

---Navigates foreign relationship to 'UiModelScene' via 'UiModelSceneID'.
---@return dbc.row.v1215.UiModelScene|nil
function row:GetUiModelScene() end

---Creates a related 'UiModelScene' row and automatically links 'UiModelSceneID'.
---@param data? table
---@return dbc.row.v1215.UiModelScene
function row:CreateRelated(data) end

---Gets the value of field 'PlayerDataElementCharacterID'.
---@return integer value
function row:GetPlayerDataElementCharacterID() end

---Sets the value of field 'PlayerDataElementCharacterID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetPlayerDataElementCharacterID(value) end

---Navigates foreign relationship to 'PlayerDataElementCharacter' via 'PlayerDataElementCharacterID'.
---@return dbc.row.v1215.PlayerDataElementCharacter|nil
function row:GetPlayerDataElementCharacter() end

---Creates a related 'PlayerDataElementCharacter' row and automatically links 'PlayerDataElementCharacterID'.
---@param data? table
---@return dbc.row.v1215.PlayerDataElementCharacter
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_64499_012'.
---@return integer value
function row:GetField_12_0_0_64499_012() end

---Sets the value of field 'Field_12_0_0_64499_012'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetField_12_0_0_64499_012(value) end

---Gets the value of field 'FlavorNodeID'.
---@return integer value
function row:GetFlavorNodeID() end

---Sets the value of field 'FlavorNodeID'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetFlavorNodeID(value) end

---Navigates foreign relationship to 'FlavorNode' via 'FlavorNodeID'.
---@return dbc.row.v1215.FlavorNode|nil
function row:GetFlavorNode() end

---Creates a related 'FlavorNode' row and automatically links 'FlavorNodeID'.
---@param data? table
---@return dbc.row.v1215.FlavorNode
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_1_64889_014'.
---@return integer value
function row:GetField_12_0_1_64889_014() end

---Sets the value of field 'Field_12_0_1_64889_014'.
---@param value integer
---@return dbc.row.v1215.PlayerCompanionInfo self
function row:SetField_12_0_1_64889_014(value) end

---Table container for PlayerCompanionInfo (Build 12.1.5.69594).
---@class dbc.Table.v1215.PlayerCompanionInfo : DbcTable
---@field [integer] dbc.row.v1215.PlayerCompanionInfo
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PlayerCompanionInfo
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PlayerCompanionInfo|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PlayerCompanionInfo
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PlayerCompanionInfo>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PlayerCompanionInfo[]
function tbl:GetByRelation(foreign_id) end

return {}
