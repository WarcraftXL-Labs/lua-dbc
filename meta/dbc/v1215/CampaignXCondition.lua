---@meta
-- Generated LuaLS annotations for CampaignXCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CampaignXCondition in build 12.1.5.69594.
---@class dbc.row.v1215.CampaignXCondition : RowProxy
---@field ID integer
---@field FailureReason_lang string Alternative to the PlayerCondition's reason.
---@field PlayerConditionID integer
---@field OrderIndex integer
---@field Flags integer &1: PreferIfOnNoStepRightNow?
---@field CampaignID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CampaignXCondition self
function row:SetID(value) end

---Gets the value of field 'FailureReason_lang'.
---@return string value
function row:GetFailureReason_lang() end

---Sets the value of field 'FailureReason_lang'.
---@param value string
---@return dbc.row.v1215.CampaignXCondition self
function row:SetFailureReason_lang(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.CampaignXCondition self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.CampaignXCondition self
function row:SetOrderIndex(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CampaignXCondition self
function row:SetFlags(value) end

---Gets the value of field 'CampaignID'.
---@return integer value
function row:GetCampaignID() end

---Sets the value of field 'CampaignID'.
---@param value integer
---@return dbc.row.v1215.CampaignXCondition self
function row:SetCampaignID(value) end

---Navigates foreign relationship to 'Campaign' via 'CampaignID'.
---@return dbc.row.v1215.Campaign|nil
function row:GetCampaign() end

---Creates a related 'Campaign' row and automatically links 'CampaignID'.
---@param data? table
---@return dbc.row.v1215.Campaign
function row:CreateRelated(data) end

---Table container for CampaignXCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.CampaignXCondition : DbcTable
---@field [integer] dbc.row.v1215.CampaignXCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CampaignXCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CampaignXCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CampaignXCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CampaignXCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CampaignXCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
