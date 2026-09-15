---@meta
-- Generated LuaLS annotations for Bounty (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Bounty in build 12.1.5.69594.
---@class dbc.row.v1215.Bounty : RowProxy
---@field ID integer
---@field QuestID integer
---@field FactionID integer
---@field IconFileDataID integer
---@field TurninPlayerConditionID integer
---@field BountySetID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Bounty self
function row:SetID(value) end

---Gets the value of field 'QuestID'.
---@return integer value
function row:GetQuestID() end

---Sets the value of field 'QuestID'.
---@param value integer
---@return dbc.row.v1215.Bounty self
function row:SetQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'QuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetQuest() end

---Creates a related 'QuestV2' row and automatically links 'QuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Gets the value of field 'FactionID'.
---@return integer value
function row:GetFactionID() end

---Sets the value of field 'FactionID'.
---@param value integer
---@return dbc.row.v1215.Bounty self
function row:SetFactionID(value) end

---Navigates foreign relationship to 'Faction' via 'FactionID'.
---@return dbc.row.v1215.Faction|nil
function row:GetFaction() end

---Creates a related 'Faction' row and automatically links 'FactionID'.
---@param data? table
---@return dbc.row.v1215.Faction
function row:CreateRelated(data) end

---Gets the value of field 'IconFileDataID'.
---@return integer value
function row:GetIconFileDataID() end

---Sets the value of field 'IconFileDataID'.
---@param value integer
---@return dbc.row.v1215.Bounty self
function row:SetIconFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'IconFileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetIconFileData() end

---Creates a related 'FileData' row and automatically links 'IconFileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'TurninPlayerConditionID'.
---@return integer value
function row:GetTurninPlayerConditionID() end

---Sets the value of field 'TurninPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.Bounty self
function row:SetTurninPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'TurninPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetTurninPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'TurninPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'BountySetID'.
---@return integer value
function row:GetBountySetID() end

---Sets the value of field 'BountySetID'.
---@param value integer
---@return dbc.row.v1215.Bounty self
function row:SetBountySetID(value) end

---Navigates foreign relationship to 'BountySet' via 'BountySetID'.
---@return dbc.row.v1215.BountySet|nil
function row:GetBountySet() end

---Creates a related 'BountySet' row and automatically links 'BountySetID'.
---@param data? table
---@return dbc.row.v1215.BountySet
function row:CreateRelated(data) end

---Table container for Bounty (Build 12.1.5.69594).
---@class dbc.Table.v1215.Bounty : DbcTable
---@field [integer] dbc.row.v1215.Bounty
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Bounty
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Bounty|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Bounty
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Bounty>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Bounty[]
function tbl:GetByRelation(foreign_id) end

return {}
