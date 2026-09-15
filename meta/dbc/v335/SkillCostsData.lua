---@meta
-- Generated LuaLS annotations for SkillCostsData (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SkillCostsData in build 3.3.5.12340.
---@class dbc.row.v335.SkillCostsData : RowProxy
---@field ID integer
---@field SkillCostsID integer
---@field Cost integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SkillCostsData self
function row:SetID(value) end

---Gets the value of field 'SkillCostsID'.
---@return integer value
function row:GetSkillCostsID() end

---Sets the value of field 'SkillCostsID'.
---@param value integer
---@return dbc.row.v335.SkillCostsData self
function row:SetSkillCostsID(value) end

---Navigates foreign relationship to 'SkillCosts' via 'SkillCostsID'.
---@return dbc.row.v335.SkillCosts|nil
function row:GetSkillCosts() end

---Creates a related 'SkillCosts' row and automatically links 'SkillCostsID'.
---@param data? table
---@return dbc.row.v335.SkillCosts
function row:CreateRelated(data) end

---Gets the value of field 'Cost'.
---@return integer[] value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer[]
---@return dbc.row.v335.SkillCostsData self
function row:SetCost(value) end

---Gets element at 1-based index in 'Cost'.
---@param index integer
---@return integer value
function row:GetCostItem(index) end

---Table container for SkillCostsData (Build 3.3.5.12340).
---@class dbc.Table.v335.SkillCostsData : DbcTable
---@field [integer] dbc.row.v335.SkillCostsData
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SkillCostsData
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SkillCostsData|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SkillCostsData
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SkillCostsData>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SkillCostsData[]
function tbl:GetByRelation(foreign_id) end

return {}
