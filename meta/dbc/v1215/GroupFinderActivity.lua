---@meta
-- Generated LuaLS annotations for GroupFinderActivity (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GroupFinderActivity in build 12.1.5.69594.
---@class dbc.row.v1215.GroupFinderActivity : RowProxy
---@field ID integer
---@field FullName_lang string
---@field ShortName_lang string
---@field GroupFinderCategoryID integer
---@field OrderIndex integer
---@field GroupFinderActivityGrpID integer
---@field Flags integer &2: PvE; &4: PvP; &0x10: useHonorLevel; &0x20: showQuickJoin; &0x40: is dungeon (player roles relevant, tank+heal+3dps)
---@field MinGearLevelSuggestion integer
---@field PlayerConditionID integer
---@field MapID integer
---@field DifficultyID integer
---@field AreaID integer
---@field ExpansionID integer
---@field MaxPlayers integer
---@field DisplayType integer
---@field Field_11_0_7_57361_013 integer
---@field Field_11_0_7_57361_014 integer
---@field Field_11_0_7_57361_015 integer
---@field Field_11_0_7_57361_016 integer
---@field OverrideContentTuningID integer If not set, via Area, and if that's not set via Map+Difficulty
---@field MapChallengeModeID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetID(value) end

---Gets the value of field 'FullName_lang'.
---@return string value
function row:GetFullName_lang() end

---Sets the value of field 'FullName_lang'.
---@param value string
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetFullName_lang(value) end

---Gets the value of field 'ShortName_lang'.
---@return string value
function row:GetShortName_lang() end

---Sets the value of field 'ShortName_lang'.
---@param value string
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetShortName_lang(value) end

---Gets the value of field 'GroupFinderCategoryID'.
---@return integer value
function row:GetGroupFinderCategoryID() end

---Sets the value of field 'GroupFinderCategoryID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetGroupFinderCategoryID(value) end

---Navigates foreign relationship to 'GroupFinderCategory' via 'GroupFinderCategoryID'.
---@return dbc.row.v1215.GroupFinderCategory|nil
function row:GetGroupFinderCategory() end

---Creates a related 'GroupFinderCategory' row and automatically links 'GroupFinderCategoryID'.
---@param data? table
---@return dbc.row.v1215.GroupFinderCategory
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetOrderIndex(value) end

---Gets the value of field 'GroupFinderActivityGrpID'.
---@return integer value
function row:GetGroupFinderActivityGrpID() end

---Sets the value of field 'GroupFinderActivityGrpID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetGroupFinderActivityGrpID(value) end

---Navigates foreign relationship to 'GroupFinderActivityGrp' via 'GroupFinderActivityGrpID'.
---@return dbc.row.v1215.GroupFinderActivityGrp|nil
function row:GetGroupFinderActivityGrp() end

---Creates a related 'GroupFinderActivityGrp' row and automatically links 'GroupFinderActivityGrpID'.
---@param data? table
---@return dbc.row.v1215.GroupFinderActivityGrp
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetFlags(value) end

---Gets the value of field 'MinGearLevelSuggestion'.
---@return integer value
function row:GetMinGearLevelSuggestion() end

---Sets the value of field 'MinGearLevelSuggestion'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetMinGearLevelSuggestion(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'DifficultyID'.
---@return integer value
function row:GetDifficultyID() end

---Sets the value of field 'DifficultyID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'AreaID'.
---@return integer value
function row:GetAreaID() end

---Sets the value of field 'AreaID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetAreaID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetArea() end

---Creates a related 'AreaTable' row and automatically links 'AreaID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionID'.
---@return integer value
function row:GetExpansionID() end

---Sets the value of field 'ExpansionID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetExpansionID(value) end

---Navigates foreign relationship to 'Expansion' via 'ExpansionID'.
---@return dbc.row.v1215.Expansion|nil
function row:GetExpansion() end

---Creates a related 'Expansion' row and automatically links 'ExpansionID'.
---@param data? table
---@return dbc.row.v1215.Expansion
function row:CreateRelated(data) end

---Gets the value of field 'MaxPlayers'.
---@return integer value
function row:GetMaxPlayers() end

---Sets the value of field 'MaxPlayers'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetMaxPlayers(value) end

---Gets the value of field 'DisplayType'.
---@return integer value
function row:GetDisplayType() end

---Sets the value of field 'DisplayType'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetDisplayType(value) end

---Gets the value of field 'Field_11_0_7_57361_013'.
---@return integer value
function row:GetField_11_0_7_57361_013() end

---Sets the value of field 'Field_11_0_7_57361_013'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetField_11_0_7_57361_013(value) end

---Gets the value of field 'Field_11_0_7_57361_014'.
---@return integer value
function row:GetField_11_0_7_57361_014() end

---Sets the value of field 'Field_11_0_7_57361_014'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetField_11_0_7_57361_014(value) end

---Gets the value of field 'Field_11_0_7_57361_015'.
---@return integer value
function row:GetField_11_0_7_57361_015() end

---Sets the value of field 'Field_11_0_7_57361_015'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetField_11_0_7_57361_015(value) end

---Gets the value of field 'Field_11_0_7_57361_016'.
---@return integer value
function row:GetField_11_0_7_57361_016() end

---Sets the value of field 'Field_11_0_7_57361_016'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetField_11_0_7_57361_016(value) end

---Gets the value of field 'OverrideContentTuningID'.
---@return integer value
function row:GetOverrideContentTuningID() end

---Sets the value of field 'OverrideContentTuningID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetOverrideContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'OverrideContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetOverrideContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'OverrideContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'MapChallengeModeID'.
---@return integer value
function row:GetMapChallengeModeID() end

---Sets the value of field 'MapChallengeModeID'.
---@param value integer
---@return dbc.row.v1215.GroupFinderActivity self
function row:SetMapChallengeModeID(value) end

---Navigates foreign relationship to 'MapChallengeMode' via 'MapChallengeModeID'.
---@return dbc.row.v1215.MapChallengeMode|nil
function row:GetMapChallengeMode() end

---Creates a related 'MapChallengeMode' row and automatically links 'MapChallengeModeID'.
---@param data? table
---@return dbc.row.v1215.MapChallengeMode
function row:CreateRelated(data) end

---Table container for GroupFinderActivity (Build 12.1.5.69594).
---@class dbc.Table.v1215.GroupFinderActivity : DbcTable
---@field [integer] dbc.row.v1215.GroupFinderActivity
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GroupFinderActivity
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GroupFinderActivity|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GroupFinderActivity
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GroupFinderActivity>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GroupFinderActivity[]
function tbl:GetByRelation(foreign_id) end

return {}
