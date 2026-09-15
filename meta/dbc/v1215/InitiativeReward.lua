---@meta
-- Generated LuaLS annotations for InitiativeReward (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InitiativeReward in build 12.1.5.69594.
---@class dbc.row.v1215.InitiativeReward : RowProxy
---@field Money integer
---@field Title_lang string
---@field Description_lang string
---@field ID integer
---@field DecorID integer
---@field DecorQuantity integer
---@field Field_12_0_0_63534_006 integer
---@field Favor integer
---@field RewardQuestID integer

local row = {}

---Gets the value of field 'Money'.
---@return integer value
function row:GetMoney() end

---Sets the value of field 'Money'.
---@param value integer
---@return dbc.row.v1215.InitiativeReward self
function row:SetMoney(value) end

---Gets the value of field 'Title_lang'.
---@return string value
function row:GetTitle_lang() end

---Sets the value of field 'Title_lang'.
---@param value string
---@return dbc.row.v1215.InitiativeReward self
function row:SetTitle_lang(value) end

---Gets the value of field 'Description_lang'.
---@return string value
function row:GetDescription_lang() end

---Sets the value of field 'Description_lang'.
---@param value string
---@return dbc.row.v1215.InitiativeReward self
function row:SetDescription_lang(value) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InitiativeReward self
function row:SetID(value) end

---Gets the value of field 'DecorID'.
---@return integer value
function row:GetDecorID() end

---Sets the value of field 'DecorID'.
---@param value integer
---@return dbc.row.v1215.InitiativeReward self
function row:SetDecorID(value) end

---Navigates foreign relationship to 'HouseDecor' via 'DecorID'.
---@return dbc.row.v1215.HouseDecor|nil
function row:GetDecor() end

---Creates a related 'HouseDecor' row and automatically links 'DecorID'.
---@param data? table
---@return dbc.row.v1215.HouseDecor
function row:CreateRelated(data) end

---Gets the value of field 'DecorQuantity'.
---@return integer value
function row:GetDecorQuantity() end

---Sets the value of field 'DecorQuantity'.
---@param value integer
---@return dbc.row.v1215.InitiativeReward self
function row:SetDecorQuantity(value) end

---Gets the value of field 'Field_12_0_0_63534_006'.
---@return integer value
function row:GetField_12_0_0_63534_006() end

---Sets the value of field 'Field_12_0_0_63534_006'.
---@param value integer
---@return dbc.row.v1215.InitiativeReward self
function row:SetField_12_0_0_63534_006(value) end

---Gets the value of field 'Favor'.
---@return integer value
function row:GetFavor() end

---Sets the value of field 'Favor'.
---@param value integer
---@return dbc.row.v1215.InitiativeReward self
function row:SetFavor(value) end

---Gets the value of field 'RewardQuestID'.
---@return integer value
function row:GetRewardQuestID() end

---Sets the value of field 'RewardQuestID'.
---@param value integer
---@return dbc.row.v1215.InitiativeReward self
function row:SetRewardQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'RewardQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetRewardQuest() end

---Creates a related 'QuestV2' row and automatically links 'RewardQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for InitiativeReward (Build 12.1.5.69594).
---@class dbc.Table.v1215.InitiativeReward : DbcTable
---@field [integer] dbc.row.v1215.InitiativeReward
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InitiativeReward
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeReward|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InitiativeReward
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InitiativeReward>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InitiativeReward[]
function tbl:GetByRelation(foreign_id) end

return {}
