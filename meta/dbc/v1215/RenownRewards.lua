---@meta
-- Generated LuaLS annotations for RenownRewards (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RenownRewards in build 12.1.5.69594.
---@class dbc.row.v1215.RenownRewards : RowProxy
---@field ID integer
---@field Name_lang string
---@field Description_lang string
---@field ToastDescription_lang string
---@field CovenantID integer
---@field Level integer
---@field Icon integer
---@field Flags integer &0x1: covenant specific (lost if changing)?, &0x2: isCapstone; GetRenownMilestones requires one of the two being set
---@field UiOrder integer per Level and CovenantID, may have multiple entries with same UiOrder, e.g. male+female titles
---@field ItemID integer
---@field SpellID integer
---@field MountID integer
---@field TransmogID integer
---@field TransmogSetID integer
---@field CharTitlesID integer
---@field GarrFollowerID integer
---@field TransmogIllusionID integer
---@field Field_12_0_0_63534_016 integer
---@field QuestID integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.RenownRewards self
function row:SetName_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.RenownRewards self
function row:SetDescription_lang(value) end

---Gets the value of field 'ToastDescription_lang'.
---@return string value
function row:GetToastDescription_lang() end

---Sets the value of field 'ToastDescription_lang'.
---@param value string
---@return dbc.row.v1215.RenownRewards self
function row:SetToastDescription_lang(value) end

---Gets the value of field 'CovenantID'.
---@return integer value
function row:GetCovenantID() end

---Sets the value of field 'CovenantID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetCovenantID(value) end

---Navigates foreign relationship to 'Covenant' via 'CovenantID'.
---@return dbc.row.v1215.Covenant|nil
function row:GetCovenant() end

---Creates a related 'Covenant' row and automatically links 'CovenantID'.
---@param data? table
---@return dbc.row.v1215.Covenant
function row:CreateRelated(data) end

---Gets the value of field 'Level'.
---@return integer value
function row:GetLevel() end

---Sets the value of field 'Level'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetLevel(value) end

---Gets the value of field 'Icon'.
---@return integer value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetIcon(value) end

---Navigates foreign relationship to 'FileData' via 'Icon'.
---@return dbc.row.v1215.FileData|nil
function row:GetIcon() end

---Creates a related 'FileData' row and automatically links 'Icon'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetFlags(value) end

---Gets the value of field 'UiOrder'.
---@return integer value
function row:GetUiOrder() end

---Sets the value of field 'UiOrder'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetUiOrder(value) end

---Gets the value of field 'ItemID'.
---@return integer value
function row:GetItemID() end

---Sets the value of field 'ItemID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetItemID(value) end

---Navigates foreign relationship to 'Item' via 'ItemID'.
---@return dbc.row.v1215.Item|nil
function row:GetItem() end

---Creates a related 'Item' row and automatically links 'ItemID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'MountID'.
---@return integer value
function row:GetMountID() end

---Sets the value of field 'MountID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetMountID(value) end

---Navigates foreign relationship to 'Mount' via 'MountID'.
---@return dbc.row.v1215.Mount|nil
function row:GetMount() end

---Creates a related 'Mount' row and automatically links 'MountID'.
---@param data? table
---@return dbc.row.v1215.Mount
function row:CreateRelated(data) end

---Gets the value of field 'TransmogID'.
---@return integer value
function row:GetTransmogID() end

---Sets the value of field 'TransmogID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetTransmogID(value) end

---Navigates foreign relationship to 'ItemModifiedAppearance' via 'TransmogID'.
---@return dbc.row.v1215.ItemModifiedAppearance|nil
function row:GetTransmog() end

---Creates a related 'ItemModifiedAppearance' row and automatically links 'TransmogID'.
---@param data? table
---@return dbc.row.v1215.ItemModifiedAppearance
function row:CreateRelated(data) end

---Gets the value of field 'TransmogSetID'.
---@return integer value
function row:GetTransmogSetID() end

---Sets the value of field 'TransmogSetID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetTransmogSetID(value) end

---Navigates foreign relationship to 'TransmogSet' via 'TransmogSetID'.
---@return dbc.row.v1215.TransmogSet|nil
function row:GetTransmogSet() end

---Creates a related 'TransmogSet' row and automatically links 'TransmogSetID'.
---@param data? table
---@return dbc.row.v1215.TransmogSet
function row:CreateRelated(data) end

---Gets the value of field 'CharTitlesID'.
---@return integer value
function row:GetCharTitlesID() end

---Sets the value of field 'CharTitlesID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetCharTitlesID(value) end

---Navigates foreign relationship to 'CharTitles' via 'CharTitlesID'.
---@return dbc.row.v1215.CharTitles|nil
function row:GetCharTitles() end

---Creates a related 'CharTitles' row and automatically links 'CharTitlesID'.
---@param data? table
---@return dbc.row.v1215.CharTitles
function row:CreateRelated(data) end

---Gets the value of field 'GarrFollowerID'.
---@return integer value
function row:GetGarrFollowerID() end

---Sets the value of field 'GarrFollowerID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetGarrFollowerID(value) end

---Navigates foreign relationship to 'GarrFollower' via 'GarrFollowerID'.
---@return dbc.row.v1215.GarrFollower|nil
function row:GetGarrFollower() end

---Creates a related 'GarrFollower' row and automatically links 'GarrFollowerID'.
---@param data? table
---@return dbc.row.v1215.GarrFollower
function row:CreateRelated(data) end

---Gets the value of field 'TransmogIllusionID'.
---@return integer value
function row:GetTransmogIllusionID() end

---Sets the value of field 'TransmogIllusionID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetTransmogIllusionID(value) end

---Navigates foreign relationship to 'TransmogIllusion' via 'TransmogIllusionID'.
---@return dbc.row.v1215.TransmogIllusion|nil
function row:GetTransmogIllusion() end

---Creates a related 'TransmogIllusion' row and automatically links 'TransmogIllusionID'.
---@param data? table
---@return dbc.row.v1215.TransmogIllusion
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_63534_016'.
---@return integer value
function row:GetField_12_0_0_63534_016() end

---Sets the value of field 'Field_12_0_0_63534_016'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetField_12_0_0_63534_016(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.RenownRewards self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for RenownRewards (Build 12.1.5.69594).
---@class dbc.Table.v1215.RenownRewards : DbcTable
---@field [integer] dbc.row.v1215.RenownRewards
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RenownRewards
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RenownRewards|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RenownRewards
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RenownRewards>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RenownRewards[]
function tbl:GetByRelation(foreign_id) end

return {}
