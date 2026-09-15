---@meta
-- Generated LuaLS annotations for CampaignXQuestLine (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CampaignXQuestLine in build 12.1.5.69594.
---@class dbc.row.v1215.CampaignXQuestLine : RowProxy
---@field ID integer
---@field CampaignID integer
---@field QuestLineID integer
---@field OrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CampaignXQuestLine self
function row:SetID(value) end

---Gets the value of field 'CampaignID'.
---@return integer value
function row:GetCampaignID() end

---Sets the value of field 'CampaignID'.
---@param value integer
---@return dbc.row.v1215.CampaignXQuestLine self
function row:SetCampaignID(value) end

---Navigates foreign relationship to 'Campaign' via 'CampaignID'.
---@return dbc.row.v1215.Campaign|nil
function row:GetCampaign() end

---Creates a related 'Campaign' row and automatically links 'CampaignID'.
---@param data? table
---@return dbc.row.v1215.Campaign
function row:CreateRelated(data) end

---Gets the value of field 'QuestLineID'.
---@return integer value
function row:GetQuestLineID() end

---Sets the value of field 'QuestLineID'.
---@param value integer
---@return dbc.row.v1215.CampaignXQuestLine self
function row:SetQuestLineID(value) end

---Navigates foreign relationship to 'QuestLine' via 'QuestLineID'.
---@return dbc.row.v1215.QuestLine|nil
function row:GetQuestLine() end

---Creates a related 'QuestLine' row and automatically links 'QuestLineID'.
---@param data? table
---@return dbc.row.v1215.QuestLine
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CampaignXQuestLine self
function row:SetOrderIndex(value) end

---Table container for CampaignXQuestLine (Build 12.1.5.69594).
---@class dbc.Table.v1215.CampaignXQuestLine : DbcTable
---@field [integer] dbc.row.v1215.CampaignXQuestLine
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CampaignXQuestLine
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CampaignXQuestLine|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CampaignXQuestLine
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CampaignXQuestLine>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CampaignXQuestLine[]
function tbl:GetByRelation(foreign_id) end

return {}
