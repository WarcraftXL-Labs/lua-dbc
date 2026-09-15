---@meta
-- Generated LuaLS annotations for DurabilityCosts (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of DurabilityCosts in build 12.1.5.69594.
---@class dbc.row.v1215.DurabilityCosts : RowProxy
---@field ID integer
---@field WeaponSubClassCost integer[]
---@field ArmorSubClassCost integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.DurabilityCosts self
function row:SetID(value) end

---Gets the value of field 'WeaponSubClassCost'.
---@return integer[] value
function row:GetWeaponSubClassCost() end

---Sets the value of field 'WeaponSubClassCost'.
---@param value integer[]
---@return dbc.row.v1215.DurabilityCosts self
function row:SetWeaponSubClassCost(value) end

---Gets element at 1-based index in 'WeaponSubClassCost'.
---@param index integer
---@return integer value
function row:GetWeaponSubClassCostItem(index) end

---Gets the value of field 'ArmorSubClassCost'.
---@return integer[] value
function row:GetArmorSubClassCost() end

---Sets the value of field 'ArmorSubClassCost'.
---@param value integer[]
---@return dbc.row.v1215.DurabilityCosts self
function row:SetArmorSubClassCost(value) end

---Gets element at 1-based index in 'ArmorSubClassCost'.
---@param index integer
---@return integer value
function row:GetArmorSubClassCostItem(index) end

---Table container for DurabilityCosts (Build 12.1.5.69594).
---@class dbc.Table.v1215.DurabilityCosts : DbcTable
---@field [integer] dbc.row.v1215.DurabilityCosts
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.DurabilityCosts
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.DurabilityCosts|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.DurabilityCosts
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.DurabilityCosts>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.DurabilityCosts[]
function tbl:GetByRelation(foreign_id) end

return {}
