---@meta
-- Generated LuaLS annotations for LFGDungeons (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LFGDungeons in build 12.1.5.69594.
---@class dbc.row.v1215.LFGDungeons : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field TypeID integer
---@field Subtype integer
---@field Faction integer
---@field IconTextureFileID integer
---@field RewardsBgTextureFileID integer
---@field PopupBgTextureFileID integer
---@field ExpansionLevel integer
---@field MapID integer
---@field DifficultyID integer
---@field MinGear number
---@field Group_ID integer
---@field Order_index integer
---@field Required_player_condition_ID integer
---@field Random_ID integer
---@field ScenarioID integer
---@field FinalEncounterID integer
---@field Count_tank integer
---@field Count_healer integer
---@field Count_damage integer
---@field Min_count_tank integer
---@field Min_count_healer integer
---@field Min_count_damage integer
---@field Max_premade_count_tank integer
---@field Max_premade_count_healer integer
---@field Max_premade_count_damage integer
---@field Bonus_reputation_amount integer
---@field MentorItemLevel integer
---@field MentorCharLevel integer
---@field MaxPremadeGroupSize integer
---@field ContentTuningID integer
---@field Flags integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.LFGDungeons self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.LFGDungeons self
function row:SetDescription_lang(value) end

---Gets the value of field 'TypeID'.
---@return integer value
function row:GetTypeID() end

---Sets the value of field 'TypeID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetTypeID(value) end

---Navigates foreign relationship to 'Type' via 'TypeID'.
---@return dbc.row.v1215.Type|nil
function row:GetType() end

---Creates a related 'Type' row and automatically links 'TypeID'.
---@param data? table
---@return dbc.row.v1215.Type
function row:CreateRelated(data) end

---Gets the value of field 'Subtype'.
---@return integer value
function row:GetSubtype() end

---Sets the value of field 'Subtype'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetSubtype(value) end

---Gets the value of field 'Faction'.
---@return integer value
function row:GetFaction() end

---Sets the value of field 'Faction'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetFaction(value) end

---Navigates foreign relationship to 'Faction' via 'Faction'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'Faction'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'IconTextureFileID'.
---@return integer value
function row:GetIconTextureFileID() end

---Sets the value of field 'IconTextureFileID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetIconTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'IconTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconTextureFile() end

---Creates a related 'FileData' row and automatically links 'IconTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'RewardsBgTextureFileID'.
---@return integer value
function row:GetRewardsBgTextureFileID() end

---Sets the value of field 'RewardsBgTextureFileID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetRewardsBgTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'RewardsBgTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetRewardsBgTextureFile() end

---Creates a related 'FileData' row and automatically links 'RewardsBgTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'PopupBgTextureFileID'.
---@return integer value
function row:GetPopupBgTextureFileID() end

---Sets the value of field 'PopupBgTextureFileID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetPopupBgTextureFileID(value) end

---Navigates foreign relationship to 'FileData' via 'PopupBgTextureFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetPopupBgTextureFile() end

---Creates a related 'FileData' row and automatically links 'PopupBgTextureFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'ExpansionLevel'.
---@return integer value
function row:GetExpansionLevel() end

---Sets the value of field 'ExpansionLevel'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetExpansionLevel(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
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
---@return dbc.row.v1215.LFGDungeons self
function row:SetDifficultyID(value) end

---Navigates foreign relationship to 'Difficulty' via 'DifficultyID'.
---@return dbc.row.v1215.Difficulty|nil
function row:GetDifficulty() end

---Creates a related 'Difficulty' row and automatically links 'DifficultyID'.
---@param data? table
---@return dbc.row.v1215.Difficulty
function row:CreateRelated(data) end

---Gets the value of field 'MinGear'.
---@return number value
function row:GetMinGear() end

---Sets the value of field 'MinGear'.
---@param value number
---@return dbc.row.v1215.LFGDungeons self
function row:SetMinGear(value) end

---Gets the value of field 'Group_ID'.
---@return integer value
function row:GetGroup_ID() end

---Sets the value of field 'Group_ID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetGroup_ID(value) end

---Navigates foreign relationship to 'Group_' via 'Group_ID'.
---@return dbc.row.v1215.Group_|nil
function row:GetGroup_() end

---Creates a related 'Group_' row and automatically links 'Group_ID'.
---@param data? table
---@return dbc.row.v1215.Group_
function row:CreateRelated(data) end

---Gets the value of field 'Order_index'.
---@return integer value
function row:GetOrder_index() end

---Sets the value of field 'Order_index'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetOrder_index(value) end

---Gets the value of field 'Required_player_condition_ID'.
---@return integer value
function row:GetRequired_player_condition_ID() end

---Sets the value of field 'Required_player_condition_ID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetRequired_player_condition_ID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'Required_player_condition_ID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetRequired_player_condition_() end

---Creates a related 'PlayerCondition' row and automatically links 'Required_player_condition_ID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Random_ID'.
---@return integer value
function row:GetRandom_ID() end

---Sets the value of field 'Random_ID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetRandom_ID(value) end

---Navigates foreign relationship to 'Random_' via 'Random_ID'.
---@return dbc.row.v1215.Random_|nil
function row:GetRandom_() end

---Creates a related 'Random_' row and automatically links 'Random_ID'.
---@param data? table
---@return dbc.row.v1215.Random_
function row:CreateRelated(data) end

---Gets the value of field 'ScenarioID'.
---@return integer value
function row:GetScenarioID() end

---Sets the value of field 'ScenarioID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetScenarioID(value) end

---Navigates foreign relationship to 'Scenario' via 'ScenarioID'.
---@return dbc.row.v1215.Scenario|nil
function row:GetScenario() end

---Creates a related 'Scenario' row and automatically links 'ScenarioID'.
---@param data? table
---@return dbc.row.v1215.Scenario
function row:CreateRelated(data) end

---Gets the value of field 'FinalEncounterID'.
---@return integer value
function row:GetFinalEncounterID() end

---Sets the value of field 'FinalEncounterID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetFinalEncounterID(value) end

---Navigates foreign relationship to 'JournalEncounter' via 'FinalEncounterID'.
---@return dbc.row.v1215.JournalEncounter|nil
function row:GetFinalEncounter() end

---Creates a related 'JournalEncounter' row and automatically links 'FinalEncounterID'.
---@param data? table
---@return dbc.row.v1215.JournalEncounter
function row:CreateRelated(data) end

---Gets the value of field 'Count_tank'.
---@return integer value
function row:GetCount_tank() end

---Sets the value of field 'Count_tank'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetCount_tank(value) end

---Gets the value of field 'Count_healer'.
---@return integer value
function row:GetCount_healer() end

---Sets the value of field 'Count_healer'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetCount_healer(value) end

---Gets the value of field 'Count_damage'.
---@return integer value
function row:GetCount_damage() end

---Sets the value of field 'Count_damage'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetCount_damage(value) end

---Gets the value of field 'Min_count_tank'.
---@return integer value
function row:GetMin_count_tank() end

---Sets the value of field 'Min_count_tank'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMin_count_tank(value) end

---Gets the value of field 'Min_count_healer'.
---@return integer value
function row:GetMin_count_healer() end

---Sets the value of field 'Min_count_healer'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMin_count_healer(value) end

---Gets the value of field 'Min_count_damage'.
---@return integer value
function row:GetMin_count_damage() end

---Sets the value of field 'Min_count_damage'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMin_count_damage(value) end

---Gets the value of field 'Max_premade_count_tank'.
---@return integer value
function row:GetMax_premade_count_tank() end

---Sets the value of field 'Max_premade_count_tank'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMax_premade_count_tank(value) end

---Gets the value of field 'Max_premade_count_healer'.
---@return integer value
function row:GetMax_premade_count_healer() end

---Sets the value of field 'Max_premade_count_healer'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMax_premade_count_healer(value) end

---Gets the value of field 'Max_premade_count_damage'.
---@return integer value
function row:GetMax_premade_count_damage() end

---Sets the value of field 'Max_premade_count_damage'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMax_premade_count_damage(value) end

---Gets the value of field 'Bonus_reputation_amount'.
---@return integer value
function row:GetBonus_reputation_amount() end

---Sets the value of field 'Bonus_reputation_amount'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetBonus_reputation_amount(value) end

---Gets the value of field 'MentorItemLevel'.
---@return integer value
function row:GetMentorItemLevel() end

---Sets the value of field 'MentorItemLevel'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMentorItemLevel(value) end

---Gets the value of field 'MentorCharLevel'.
---@return integer value
function row:GetMentorCharLevel() end

---Sets the value of field 'MentorCharLevel'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMentorCharLevel(value) end

---Gets the value of field 'MaxPremadeGroupSize'.
---@return integer value
function row:GetMaxPremadeGroupSize() end

---Sets the value of field 'MaxPremadeGroupSize'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetMaxPremadeGroupSize(value) end

---Gets the value of field 'ContentTuningID'.
---@return integer value
function row:GetContentTuningID() end

---Sets the value of field 'ContentTuningID'.
---@param value integer
---@return dbc.row.v1215.LFGDungeons self
function row:SetContentTuningID(value) end

---Navigates foreign relationship to 'ContentTuning' via 'ContentTuningID'.
---@return dbc.row.v1215.ContentTuning|nil
function row:GetContentTuning() end

---Creates a related 'ContentTuning' row and automatically links 'ContentTuningID'.
---@param data? table
---@return dbc.row.v1215.ContentTuning
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer[] value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer[]
---@return dbc.row.v1215.LFGDungeons self
function row:SetFlags(value) end

---Gets element at 1-based index in 'Flags'.
---@param index integer
---@return integer value
function row:GetFlagsItem(index) end

---Table container for LFGDungeons (Build 12.1.5.69594).
---@class dbc.Table.v1215.LFGDungeons : DbcTable
---@field [integer] dbc.row.v1215.LFGDungeons
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LFGDungeons
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LFGDungeons|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LFGDungeons
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LFGDungeons>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LFGDungeons[]
function tbl:GetByRelation(foreign_id) end

return {}
