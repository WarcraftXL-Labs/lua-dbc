---@meta
-- Generated LuaLS annotations for WorldBossLockout (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of WorldBossLockout in build 12.1.5.69594.
---@class dbc.row.v1215.WorldBossLockout : RowProxy
---@field ID integer
---@field Name_lang string
---@field TrackingQuestID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.WorldBossLockout self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.WorldBossLockout self
function row:SetName_lang(value) end

---Gets the value of field 'TrackingQuestID'.
---@return integer value
function row:GetTrackingQuestID() end

---Sets the value of field 'TrackingQuestID'.
---@param value integer
---@return dbc.row.v1215.WorldBossLockout self
function row:SetTrackingQuestID(value) end

---Navigates foreign relationship to 'QuestV2' via 'TrackingQuestID'.
---@return dbc.row.v1215.QuestV2|nil
function row:GetTrackingQuest() end

---Creates a related 'QuestV2' row and automatically links 'TrackingQuestID'.
---@param data? table
---@return dbc.row.v1215.QuestV2
function row:CreateRelated(data) end

---Table container for WorldBossLockout (Build 12.1.5.69594).
---@class dbc.Table.v1215.WorldBossLockout : DbcTable
---@field [integer] dbc.row.v1215.WorldBossLockout
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.WorldBossLockout
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.WorldBossLockout|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.WorldBossLockout
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.WorldBossLockout>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.WorldBossLockout[]
function tbl:GetByRelation(foreign_id) end

return {}
