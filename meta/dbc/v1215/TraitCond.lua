---@meta
-- Generated LuaLS annotations for TraitCond (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TraitCond in build 12.1.5.69594.
---@class dbc.row.v1215.TraitCond : RowProxy
---@field ID integer
---@field CondType integer 0: Available, 1: Visible, 2: Granted, 3: Increased, 4: DisplayError
---@field TraitTreeID integer
---@field GrantedRanks integer
---@field QuestID integer
---@field AchievementID integer
---@field SpecSetID integer
---@field TraitNodeGroupID integer
---@field TraitNodeID integer
---@field TraitNodeEntryID integer
---@field TraitCurrencyID integer
---@field SpentAmountRequired integer
---@field Flags integer &1: IsGate, &2: IsAlwaysMet, &4: IsSufficient
---@field RequiredLevel integer
---@field FreeSharedStringID integer
---@field SpendMoreSharedStringID integer
---@field TraitCondAccountElementID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetID(value) end

---Gets the value of field 'CondType'.
---@return integer value
function row:GetCondType() end

---Sets the value of field 'CondType'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetCondType(value) end

---Gets the value of field 'TraitTreeID'.
---@return integer value
function row:GetTraitTreeID() end

---Sets the value of field 'TraitTreeID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetTraitTreeID(value) end

---Navigates foreign relationship to 'TraitTree' via 'TraitTreeID'.
---@return dbc.row.v1215.TraitTree|nil
function row:GetTraitTree() end

---Creates a related 'TraitTree' row and automatically links 'TraitTreeID'.
---@param data? table
---@return dbc.row.v1215.TraitTree
function row:CreateRelated(data) end

---Gets the value of field 'GrantedRanks'.
---@return integer value
function row:GetGrantedRanks() end

---Sets the value of field 'GrantedRanks'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetGrantedRanks(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'Quest' via 'QuestID'.
---@return dbc.row.v1215.Quest|nil
function row:GetQuest() end

---Creates a related 'Quest' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.Quest
function row:CreateRelated(data) end

---Gets the value of field 'AchievementID'.
---@return integer value
function row:GetAchievementID() end

---Sets the value of field 'AchievementID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetAchievementID(value) end

---Navigates foreign relationship to 'Achievement' via 'AchievementID'.
---@return dbc.row.v1215.Achievement|nil
function row:GetAchievement() end

---Creates a related 'Achievement' row and automatically links 'AchievementID'.
---@param data? table
---@return dbc.row.v1215.Achievement
function row:CreateRelated(data) end

---Gets the value of field 'SpecSetID'.
---@return integer value
function row:GetSpecSetID() end

---Sets the value of field 'SpecSetID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetSpecSetID(value) end

---Navigates foreign relationship to 'SpecSetMember' via 'SpecSetID'.
---@return dbc.row.v1215.SpecSetMember|nil
function row:GetSpecSet() end

---Creates a related 'SpecSetMember' row and automatically links 'SpecSetID'.
---@param data? table
---@return dbc.row.v1215.SpecSetMember
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeGroupID'.
---@return integer value
function row:GetTraitNodeGroupID() end

---Sets the value of field 'TraitNodeGroupID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetTraitNodeGroupID(value) end

---Navigates foreign relationship to 'TraitNodeGroup' via 'TraitNodeGroupID'.
---@return dbc.row.v1215.TraitNodeGroup|nil
function row:GetTraitNodeGroup() end

---Creates a related 'TraitNodeGroup' row and automatically links 'TraitNodeGroupID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeGroup
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeID'.
---@return integer value
function row:GetTraitNodeID() end

---Sets the value of field 'TraitNodeID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetTraitNodeID(value) end

---Navigates foreign relationship to 'TraitNode' via 'TraitNodeID'.
---@return dbc.row.v1215.TraitNode|nil
function row:GetTraitNode() end

---Creates a related 'TraitNode' row and automatically links 'TraitNodeID'.
---@param data? table
---@return dbc.row.v1215.TraitNode
function row:CreateRelated(data) end

---Gets the value of field 'TraitNodeEntryID'.
---@return integer value
function row:GetTraitNodeEntryID() end

---Sets the value of field 'TraitNodeEntryID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetTraitNodeEntryID(value) end

---Navigates foreign relationship to 'TraitNodeEntry' via 'TraitNodeEntryID'.
---@return dbc.row.v1215.TraitNodeEntry|nil
function row:GetTraitNodeEntry() end

---Creates a related 'TraitNodeEntry' row and automatically links 'TraitNodeEntryID'.
---@param data? table
---@return dbc.row.v1215.TraitNodeEntry
function row:CreateRelated(data) end

---Gets the value of field 'TraitCurrencyID'.
---@return integer value
function row:GetTraitCurrencyID() end

---Sets the value of field 'TraitCurrencyID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetTraitCurrencyID(value) end

---Navigates foreign relationship to 'TraitCurrency' via 'TraitCurrencyID'.
---@return dbc.row.v1215.TraitCurrency|nil
function row:GetTraitCurrency() end

---Creates a related 'TraitCurrency' row and automatically links 'TraitCurrencyID'.
---@param data? table
---@return dbc.row.v1215.TraitCurrency
function row:CreateRelated(data) end

---Gets the value of field 'SpentAmountRequired'.
---@return integer value
function row:GetSpentAmountRequired() end

---Sets the value of field 'SpentAmountRequired'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetSpentAmountRequired(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetFlags(value) end

---Gets the value of field 'RequiredLevel'.
---@return integer value
function row:GetRequiredLevel() end

---Sets the value of field 'RequiredLevel'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetRequiredLevel(value) end

---Gets the value of field 'FreeSharedStringID'.
---@return integer value
function row:GetFreeSharedStringID() end

---Sets the value of field 'FreeSharedStringID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetFreeSharedStringID(value) end

---Navigates foreign relationship to 'SharedString' via 'FreeSharedStringID'.
---@return dbc.row.v1215.SharedString|nil
function row:GetFreeSharedString() end

---Creates a related 'SharedString' row and automatically links 'FreeSharedStringID'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'SpendMoreSharedStringID'.
---@return integer value
function row:GetSpendMoreSharedStringID() end

---Sets the value of field 'SpendMoreSharedStringID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetSpendMoreSharedStringID(value) end

---Navigates foreign relationship to 'SharedString' via 'SpendMoreSharedStringID'.
---@return dbc.row.v1215.SharedString|nil
function row:GetSpendMoreSharedString() end

---Creates a related 'SharedString' row and automatically links 'SpendMoreSharedStringID'.
---@param data? table
---@return dbc.row.v1215.SharedString
function row:CreateRelated(data) end

---Gets the value of field 'TraitCondAccountElementID'.
---@return integer value
function row:GetTraitCondAccountElementID() end

---Sets the value of field 'TraitCondAccountElementID'.
---@param value integer
---@return dbc.row.v1215.TraitCond self
function row:SetTraitCondAccountElementID(value) end

---Navigates foreign relationship to 'TraitCondAccountElement' via 'TraitCondAccountElementID'.
---@return dbc.row.v1215.TraitCondAccountElement|nil
function row:GetTraitCondAccountElement() end

---Creates a related 'TraitCondAccountElement' row and automatically links 'TraitCondAccountElementID'.
---@param data? table
---@return dbc.row.v1215.TraitCondAccountElement
function row:CreateRelated(data) end

---Table container for TraitCond (Build 12.1.5.69594).
---@class dbc.Table.v1215.TraitCond : DbcTable
---@field [integer] dbc.row.v1215.TraitCond
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TraitCond
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TraitCond|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TraitCond
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TraitCond>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TraitCond[]
function tbl:GetByRelation(foreign_id) end

return {}
