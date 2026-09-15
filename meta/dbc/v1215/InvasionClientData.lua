---@meta
-- Generated LuaLS annotations for InvasionClientData (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of InvasionClientData in build 12.1.5.69594.
---@class dbc.row.v1215.InvasionClientData : RowProxy
---@field Name_lang string
---@field IconLocation number[]
---@field ID integer
---@field WorldStateID integer
---@field UiTextureAtlasMemberID integer
---@field ScenarioID integer
---@field WorldQuestID integer
---@field WorldStateValue integer
---@field InvasionEnabledWorldStateID integer
---@field AreaTableID integer

local row = {}

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.InvasionClientData self
function row:SetName_lang(value) end

---Gets the value of field 'IconLocation'.
---@return number[] value
function row:GetIconLocation() end

---Sets the value of field 'IconLocation'.
---@param value number[]
---@return dbc.row.v1215.InvasionClientData self
function row:SetIconLocation(value) end

---Gets element at 1-based index in 'IconLocation'.
---@param index integer
---@return number value
function row:GetIconLocationItem(index) end

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetID(value) end

---Gets the value of field 'WorldStateID'.
---@return integer value
function row:GetWorldStateID() end

---Sets the value of field 'WorldStateID'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetWorldStateID(value) end

---Navigates foreign relationship to 'WorldState' via 'WorldStateID'.
---@return dbc.row.v1215.WorldState|nil
function row:GetWorldState() end

---Creates a related 'WorldState' row and automatically links 'WorldStateID'.
---@param data? table
---@return dbc.row.v1215.WorldState
function row:CreateRelated(data) end

---Gets the value of field 'UiTextureAtlasMemberID'.
---@return integer value
function row:GetUiTextureAtlasMemberID() end

---Sets the value of field 'UiTextureAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetUiTextureAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'UiTextureAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetUiTextureAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'UiTextureAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'ScenarioID'.
---@return integer value
function row:GetScenarioID() end

---Sets the value of field 'ScenarioID'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetScenarioID(value) end

---Navigates foreign relationship to 'Scenario' via 'ScenarioID'.
---@return dbc.row.v1215.Scenario|nil
function row:GetScenario() end

---Creates a related 'Scenario' row and automatically links 'ScenarioID'.
---@param data? table
---@return dbc.row.v1215.Scenario
function row:CreateRelated(data) end

---Gets the value of field 'WorldQuestID'.
---@return integer value
function row:GetWorldQuestID() end

---Sets the value of field 'WorldQuestID'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetWorldQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'WorldQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetWorldQuest() end

---Creates a related 'QuestV2' row and automatically links 'WorldQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'WorldStateValue'.
---@return integer value
function row:GetWorldStateValue() end

---Sets the value of field 'WorldStateValue'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetWorldStateValue(value) end

---Gets the value of field 'InvasionEnabledWorldStateID'.
---@return integer value
function row:GetInvasionEnabledWorldStateID() end

---Sets the value of field 'InvasionEnabledWorldStateID'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetInvasionEnabledWorldStateID(value) end

---Navigates foreign relationship to 'InvasionEnabledWorldState' via 'InvasionEnabledWorldStateID'.
---@return dbc.row.v1215.InvasionEnabledWorldState|nil
function row:GetInvasionEnabledWorldState() end

---Creates a related 'InvasionEnabledWorldState' row and automatically links 'InvasionEnabledWorldStateID'.
---@param data? table
---@return dbc.row.v1215.InvasionEnabledWorldState
function row:CreateRelated(data) end

---Gets the value of field 'AreaTableID'.
---@return integer value
function row:GetAreaTableID() end

---Sets the value of field 'AreaTableID'.
---@param value integer
---@return dbc.row.v1215.InvasionClientData self
function row:SetAreaTableID(value) end

---Navigates foreign relationship to 'AreaTable' via 'AreaTableID'.
---@return dbc.row.v1215.AreaTable|nil
function row:GetAreaTable() end

---Creates a related 'AreaTable' row and automatically links 'AreaTableID'.
---@param data? table
---@return dbc.row.v1215.AreaTable
function row:CreateRelated(data) end

---Table container for InvasionClientData (Build 12.1.5.69594).
---@class dbc.Table.v1215.InvasionClientData : DbcTable
---@field [integer] dbc.row.v1215.InvasionClientData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.InvasionClientData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.InvasionClientData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.InvasionClientData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.InvasionClientData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.InvasionClientData[]
function tbl:GetByRelation(foreign_id) end

return {}
