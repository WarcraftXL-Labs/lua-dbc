---@meta
-- Generated LuaLS annotations for UiWeeklyReward (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiWeeklyReward in build 12.1.5.69594.
---@class dbc.row.v1215.UiWeeklyReward : RowProxy
---@field ID integer
---@field IsWeeklyChestRetiredPlayerConditionID integer
---@field WeeklyRewardTextureKitID integer
---@field ShouldShowRetirementMessagePlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiWeeklyReward self
function row:SetID(value) end

---Gets the value of field 'IsWeeklyChestRetiredPlayerConditionID'.
---@return integer value
function row:GetIsWeeklyChestRetiredPlayerConditionID() end

---Sets the value of field 'IsWeeklyChestRetiredPlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UiWeeklyReward self
function row:SetIsWeeklyChestRetiredPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'IsWeeklyChestRetiredPlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetIsWeeklyChestRetiredPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'IsWeeklyChestRetiredPlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'WeeklyRewardTextureKitID'.
---@return integer value
function row:GetWeeklyRewardTextureKitID() end

---Sets the value of field 'WeeklyRewardTextureKitID'.
---@param value integer
---@return dbc.row.v1215.UiWeeklyReward self
function row:SetWeeklyRewardTextureKitID(value) end

---Navigates foreign relationship to 'UiTextureKit' via 'WeeklyRewardTextureKitID'.
---@return dbc.row.v1215.UiTextureKit|nil
function row:GetWeeklyRewardTextureKit() end

---Creates a related 'UiTextureKit' row and automatically links 'WeeklyRewardTextureKitID'.
---@param data? table
---@return dbc.row.v1215.UiTextureKit
function row:CreateRelated(data) end

---Gets the value of field 'ShouldShowRetirementMessagePlayerConditionID'.
---@return integer value
function row:GetShouldShowRetirementMessagePlayerConditionID() end

---Sets the value of field 'ShouldShowRetirementMessagePlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.UiWeeklyReward self
function row:SetShouldShowRetirementMessagePlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'ShouldShowRetirementMessagePlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetShouldShowRetirementMessagePlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'ShouldShowRetirementMessagePlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for UiWeeklyReward (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiWeeklyReward : DbcTable
---@field [integer] dbc.row.v1215.UiWeeklyReward
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiWeeklyReward
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiWeeklyReward|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiWeeklyReward
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiWeeklyReward>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiWeeklyReward[]
function tbl:GetByRelation(foreign_id) end

return {}
