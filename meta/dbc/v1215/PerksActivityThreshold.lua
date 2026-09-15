---@meta
-- Generated LuaLS annotations for PerksActivityThreshold (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksActivityThreshold in build 12.1.5.69594.
---@class dbc.row.v1215.PerksActivityThreshold : RowProxy
---@field ID integer
---@field BonusTendies integer
---@field OrderIndex integer
---@field Threshold integer
---@field PerksActivityThresholdGroupID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityThreshold self
function row:SetID(value) end

---Gets the value of field 'BonusTendies'.
---@return integer value
function row:GetBonusTendies() end

---Sets the value of field 'BonusTendies'.
---@param value integer
---@return dbc.row.v1215.PerksActivityThreshold self
function row:SetBonusTendies(value) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v1215.PerksActivityThreshold self
function row:SetOrderIndex(value) end

---Gets the value of field 'Threshold'.
---@return integer value
function row:GetThreshold() end

---Sets the value of field 'Threshold'.
---@param value integer
---@return dbc.row.v1215.PerksActivityThreshold self
function row:SetThreshold(value) end

---Gets the value of field 'PerksActivityThresholdGroupID'.
---@return integer value
function row:GetPerksActivityThresholdGroupID() end

---Sets the value of field 'PerksActivityThresholdGroupID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityThreshold self
function row:SetPerksActivityThresholdGroupID(value) end

---Navigates foreign relationship to 'PerksActivityThresholdGroup' via 'PerksActivityThresholdGroupID'.
---@return dbc.row.v1215.PerksActivityThresholdGroup|nil
function row:GetPerksActivityThresholdGroup() end

---Creates a related 'PerksActivityThresholdGroup' row and automatically links 'PerksActivityThresholdGroupID'.
---@param data? table
---@return dbc.row.v1215.PerksActivityThresholdGroup
function row:CreateRelated(data) end

---Table container for PerksActivityThreshold (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksActivityThreshold : DbcTable
---@field [integer] dbc.row.v1215.PerksActivityThreshold
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksActivityThreshold
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityThreshold|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityThreshold
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksActivityThreshold>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksActivityThreshold[]
function tbl:GetByRelation(foreign_id) end

return {}
