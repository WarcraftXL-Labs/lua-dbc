---@meta
-- Generated LuaLS annotations for UnitBlood (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of UnitBlood in build 3.3.5.12340.
---@class dbc.row.v335.UnitBlood : RowProxy
---@field ID integer
---@field CombatBloodSpurtFront integer[]
---@field CombatBloodSpurtBack integer[]
---@field GroundBlood string[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.UnitBlood self
function row:SetID(value) end

---Gets the value of field 'CombatBloodSpurtFront'.
---@return integer[] value
function row:GetCombatBloodSpurtFront() end

---Sets the value of field 'CombatBloodSpurtFront'.
---@param value integer[]
---@return dbc.row.v335.UnitBlood self
function row:SetCombatBloodSpurtFront(value) end

---Gets element at 1-based index in 'CombatBloodSpurtFront'.
---@param index integer
---@return integer value
function row:GetCombatBloodSpurtFrontItem(index) end

---Gets the value of field 'CombatBloodSpurtBack'.
---@return integer[] value
function row:GetCombatBloodSpurtBack() end

---Sets the value of field 'CombatBloodSpurtBack'.
---@param value integer[]
---@return dbc.row.v335.UnitBlood self
function row:SetCombatBloodSpurtBack(value) end

---Gets element at 1-based index in 'CombatBloodSpurtBack'.
---@param index integer
---@return integer value
function row:GetCombatBloodSpurtBackItem(index) end

---Gets the value of field 'GroundBlood'.
---@return string[] value
function row:GetGroundBlood() end

---Sets the value of field 'GroundBlood'.
---@param value string[]
---@return dbc.row.v335.UnitBlood self
function row:SetGroundBlood(value) end

---Gets element at 1-based index in 'GroundBlood'.
---@param index integer
---@return string value
function row:GetGroundBloodItem(index) end

---Table container for UnitBlood (Build 3.3.5.12340).
---@class dbc.Table.v335.UnitBlood : DbcTable
---@field [integer] dbc.row.v335.UnitBlood
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.UnitBlood
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.UnitBlood|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.UnitBlood
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.UnitBlood>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.UnitBlood[]
function tbl:GetByRelation(foreign_id) end

return {}
