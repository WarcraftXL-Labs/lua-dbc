---@meta
-- Generated LuaLS annotations for PerksActivityCondition (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksActivityCondition in build 12.1.5.69594.
---@class dbc.row.v1215.PerksActivityCondition : RowProxy
---@field ID integer
---@field PlayerConditionID integer
---@field Field_10_2_5_52206_002 integer
---@field PerksActivityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityCondition self
function row:SetID(value) end

---Gets the value of field 'PlayerConditionID'.
---@return integer value
function row:GetPlayerConditionID() end

---Sets the value of field 'PlayerConditionID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityCondition self
function row:SetPlayerConditionID(value) end

---Navigates foreign relationship to 'PlayerCondition' via 'PlayerConditionID'.
---@return dbc.row.v1215.PlayerCondition|nil
function row:GetPlayerCondition() end

---Creates a related 'PlayerCondition' row and automatically links 'PlayerConditionID'.
---@param data? table
---@return dbc.row.v1215.PlayerCondition
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_2_5_52206_002'.
---@return integer value
function row:GetField_10_2_5_52206_002() end

---Sets the value of field 'Field_10_2_5_52206_002'.
---@param value integer
---@return dbc.row.v1215.PerksActivityCondition self
function row:SetField_10_2_5_52206_002(value) end

---Gets the value of field 'PerksActivityID'.
---@return integer value
function row:GetPerksActivityID() end

---Sets the value of field 'PerksActivityID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityCondition self
function row:SetPerksActivityID(value) end

---Navigates foreign relationship to 'PerksActivity' via 'PerksActivityID'.
---@return dbc.row.v1215.PerksActivity|nil
function row:GetPerksActivity() end

---Creates a related 'PerksActivity' row and automatically links 'PerksActivityID'.
---@param data? table
---@return dbc.row.v1215.PerksActivity
function row:CreateRelated(data) end

---Table container for PerksActivityCondition (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksActivityCondition : DbcTable
---@field [integer] dbc.row.v1215.PerksActivityCondition
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksActivityCondition
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityCondition|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityCondition
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksActivityCondition>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksActivityCondition[]
function tbl:GetByRelation(foreign_id) end

return {}
