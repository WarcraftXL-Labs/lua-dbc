---@meta
-- Generated LuaLS annotations for ScalingStatDistribution (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ScalingStatDistribution in build 3.3.5.12340.
---@class dbc.row.v335.ScalingStatDistribution : RowProxy
---@field ID integer
---@field StatID integer[]
---@field Bonus integer[]
---@field Maxlevel integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ScalingStatDistribution self
function row:SetID(value) end

---Gets the value of field 'StatID'.
---@return integer[] value
function row:GetStatID() end

---Sets the value of field 'StatID'.
---@param value integer[]
---@return dbc.row.v335.ScalingStatDistribution self
function row:SetStatID(value) end

---Gets element at 1-based index in 'StatID'.
---@param index integer
---@return integer value
function row:GetStatIDItem(index) end

---Navigates foreign relationship to 'Stat' via 'StatID'.
---@return dbc.row.v335.Stat|nil
function row:GetStat() end

---Creates a related 'Stat' row and automatically links 'StatID'.
---@param data? table
---@return dbc.row.v335.Stat
function row:CreateRelated(data) end

---Gets the value of field 'Bonus'.
---@return integer[] value
function row:GetBonus() end

---Sets the value of field 'Bonus'.
---@param value integer[]
---@return dbc.row.v335.ScalingStatDistribution self
function row:SetBonus(value) end

---Gets element at 1-based index in 'Bonus'.
---@param index integer
---@return integer value
function row:GetBonusItem(index) end

---Gets the value of field 'Maxlevel'.
---@return integer value
function row:GetMaxlevel() end

---Sets the value of field 'Maxlevel'.
---@param value integer
---@return dbc.row.v335.ScalingStatDistribution self
function row:SetMaxlevel(value) end

---Table container for ScalingStatDistribution (Build 3.3.5.12340).
---@class dbc.Table.v335.ScalingStatDistribution : DbcTable
---@field [integer] dbc.row.v335.ScalingStatDistribution
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ScalingStatDistribution
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ScalingStatDistribution|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ScalingStatDistribution
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ScalingStatDistribution>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ScalingStatDistribution[]
function tbl:GetByRelation(foreign_id) end

return {}
