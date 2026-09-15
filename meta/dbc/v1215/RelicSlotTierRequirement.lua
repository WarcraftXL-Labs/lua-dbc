---@meta
-- Generated LuaLS annotations for RelicSlotTierRequirement (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of RelicSlotTierRequirement in build 12.1.5.69594.
---@class dbc.row.v1215.RelicSlotTierRequirement : RowProxy
---@field ID integer
---@field RelicIndex integer
---@field RelicTier integer
---@field PlayerConditionID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.RelicSlotTierRequirement self
function row:SetID(value) end

---Gets the value of field 'RelicIndex'.
---@return integer value
function row:GetRelicIndex() end

---Sets the value of field 'RelicIndex'.
---@param value integer
---@return dbc.row.v1215.RelicSlotTierRequirement self
function row:SetRelicIndex(value) end

---Gets the value of field 'RelicTier'.
---@return integer value
function row:GetRelicTier() end

---Sets the value of field 'RelicTier'.
---@param value integer
---@return dbc.row.v1215.RelicSlotTierRequirement self
function row:SetRelicTier(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.RelicSlotTierRequirement self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Table container for RelicSlotTierRequirement (Build 12.1.5.69594).
---@class dbc.Table.v1215.RelicSlotTierRequirement : DbcTable
---@field [integer] dbc.row.v1215.RelicSlotTierRequirement
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.RelicSlotTierRequirement
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.RelicSlotTierRequirement|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.RelicSlotTierRequirement
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.RelicSlotTierRequirement>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.RelicSlotTierRequirement[]
function tbl:GetByRelation(foreign_id) end

return {}
