---@meta
-- Generated LuaLS annotations for QuestPOIBlob (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestPOIBlob in build 12.1.5.69594.
---@class dbc.row.v1215.QuestPOIBlob : RowProxy
---@field ID integer
---@field MapID integer
---@field UiMapID integer
---@field Flags integer
---@field NumPoints integer
---@field QuestID integer
---@field ObjectiveIndex integer
---@field ObjectiveID integer Not all available in client.
---@field PlayerConditionID integer
---@field NavigationPlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetID(value) end

---Gets the value of field 'MapID'.
---@return integer value
function row:GetMapID() end

---Sets the value of field 'MapID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetMapID(value) end

---Navigates foreign relationship to 'Map' via 'MapID'.
---@return dbc.row.v1215.Map|nil
function row:GetMap() end

---Creates a related 'Map' row and automatically links 'MapID'.
---@param data? table
---@return dbc.row.v1215.Map
function row:CreateRelated(data) end

---Gets the value of field 'UiMapID'.
---@return integer value
function row:GetUiMapID() end

---Sets the value of field 'UiMapID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetUiMapID(value) end

---Navigates foreign relationship to 'UiMap' via 'UiMapID'.
---@return dbc.row.v1215.UiMap|nil
function row:GetUiMap() end

---Creates a related 'UiMap' row and automatically links 'UiMapID'.
---@param data? table
---@return dbc.row.v1215.UiMap
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetFlags(value) end

---Gets the value of field 'NumPoints'.
---@return integer value
function row:GetNumPoints() end

---Sets the value of field 'NumPoints'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetNumPoints(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'ObjectiveIndex'.
---@return integer value
function row:GetObjectiveIndex() end

---Sets the value of field 'ObjectiveIndex'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetObjectiveIndex(value) end

---Gets the value of field 'ObjectiveID'.
---@return integer value
function row:GetObjectiveID() end

---Sets the value of field 'ObjectiveID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetObjectiveID(value) end

---Navigates foreign relationship to 'QuestObjective' via 'ObjectiveID'.
---@return dbc.row.v1215.QuestObjective|nil
function row:GetObjective() end

---Creates a related 'QuestObjective' row and automatically links 'ObjectiveID'.
---@param data? table
---@return dbc.row.v1215.QuestObjective
function row:CreateRelated(data) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'NavigationPlayerConditionID'.
---@return integer value
function row:GetNavigationPlayerConditionID() end

---Sets the value of field 'NavigationPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.QuestPOIBlob self
function row:SetNavigationPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'NavigationPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetNavigationPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'NavigationPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for QuestPOIBlob (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestPOIBlob : DbcTable
---@field [integer] dbc.row.v1215.QuestPOIBlob
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestPOIBlob
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestPOIBlob|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestPOIBlob
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestPOIBlob>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestPOIBlob[]
function tbl:GetByRelation(foreign_id) end

return {}
