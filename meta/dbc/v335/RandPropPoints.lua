---@meta
-- Generated LuaLS annotations for RandPropPoints (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of RandPropPoints in build 3.3.5.12340.
---@class dbc.row.v335.RandPropPoints : RowProxy
---@field ID integer
---@field Epic integer[]
---@field Superior integer[]
---@field Good integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.RandPropPoints self
function row:SetID(value) end

---Gets the value of field 'Epic'.
---@return integer[] value
function row:GetEpic() end

---Sets the value of field 'Epic'.
---@param value integer[]
---@return dbc.row.v335.RandPropPoints self
function row:SetEpic(value) end

---Gets element at 1-based index in 'Epic'.
---@param index integer
---@return integer value
function row:GetEpicItem(index) end

---Gets the value of field 'Superior'.
---@return integer[] value
function row:GetSuperior() end

---Sets the value of field 'Superior'.
---@param value integer[]
---@return dbc.row.v335.RandPropPoints self
function row:SetSuperior(value) end

---Gets element at 1-based index in 'Superior'.
---@param index integer
---@return integer value
function row:GetSuperiorItem(index) end

---Gets the value of field 'Good'.
---@return integer[] value
function row:GetGood() end

---Sets the value of field 'Good'.
---@param value integer[]
---@return dbc.row.v335.RandPropPoints self
function row:SetGood(value) end

---Gets element at 1-based index in 'Good'.
---@param index integer
---@return integer value
function row:GetGoodItem(index) end

---Table container for RandPropPoints (Build 3.3.5.12340).
---@class dbc.Table.v335.RandPropPoints : DbcTable
---@field [integer] dbc.row.v335.RandPropPoints
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.RandPropPoints
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.RandPropPoints|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.RandPropPoints
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.RandPropPoints>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.RandPropPoints[]
function tbl:GetByRelation(foreign_id) end

return {}
