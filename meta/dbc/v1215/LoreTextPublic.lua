---@meta
-- Generated LuaLS annotations for LoreTextPublic (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of LoreTextPublic in build 12.1.5.69594.
---@class dbc.row.v1215.LoreTextPublic : RowProxy
---@field LoreTextID integer
---@field CampaignID integer
---@field ConditionID integer
---@field Flags integer &1: do not recurse
---@field Order integer
---@field ParentID integer if condition is not set or does not match or matches but flag 1 is not set, continue down

local row = {}

---Gets the value of field 'LoreTextID'.
---@return integer value
function row:GetLoreTextID() end

---Sets the value of field 'LoreTextID'.
---@param value integer
---@return dbc.row.v1215.LoreTextPublic self
function row:SetLoreTextID(value) end

---Navigates foreign relationship to 'LoreText' via 'LoreTextID'.
---@return dbc.row.v1215.LoreText|nil
function row:GetLoreText() end

---Creates a related 'LoreText' row and automatically links 'LoreTextID'.
---@param data? table
---@return dbc.row.v1215.LoreText
function row:CreateRelated(data) end

---Gets the value of field 'CampaignID'.
---@return integer value
function row:GetCampaignID() end

---Sets the value of field 'CampaignID'.
---@param value integer
---@return dbc.row.v1215.LoreTextPublic self
function row:SetCampaignID(value) end

---Navigates foreign relationship to 'Campaign' via 'CampaignID'.
---@return dbc.row.v1215.Campaign|nil
function row:GetCampaign() end

---Creates a related 'Campaign' row and automatically links 'CampaignID'.
---@param data? table
---@return dbc.row.v1215.Campaign
function row:CreateRelated(data) end

---Gets the value of field 'ConditionID'.
---@return integer value
function row:GetConditionID() end

---Sets the value of field 'ConditionID'.
---@param value integer
---@return dbc.row.v1215.LoreTextPublic self
function row:SetConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.LoreTextPublic self
function row:SetFlags(value) end

---Gets the value of field 'Order'.
---@return integer value
function row:GetOrder() end

---Sets the value of field 'Order'.
---@param value integer
---@return dbc.row.v1215.LoreTextPublic self
function row:SetOrder(value) end

---Gets the value of field 'ParentID'.
---@return integer value
function row:GetParentID() end

---Sets the value of field 'ParentID'.
---@param value integer
---@return dbc.row.v1215.LoreTextPublic self
function row:SetParentID(value) end

---Navigates foreign relationship to 'LoreTextPublic' via 'ParentID'.
---@return dbc.row.v1215.LoreTextPublic|nil
function row:GetParent() end

---Creates a related 'LoreTextPublic' row and automatically links 'ParentID'.
---@param data? table
---@return dbc.row.v1215.LoreTextPublic
function row:CreateRelated(data) end

---Table container for LoreTextPublic (Build 12.1.5.69594).
---@class dbc.Table.v1215.LoreTextPublic : DbcTable
---@field [integer] dbc.row.v1215.LoreTextPublic
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.LoreTextPublic
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.LoreTextPublic|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.LoreTextPublic
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.LoreTextPublic>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.LoreTextPublic[]
function tbl:GetByRelation(foreign_id) end

return {}
