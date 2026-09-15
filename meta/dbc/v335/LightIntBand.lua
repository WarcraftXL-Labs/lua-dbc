---@meta
-- Generated LuaLS annotations for LightIntBand (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of LightIntBand in build 3.3.5.12340.
---@class dbc.row.v335.LightIntBand : RowProxy
---@field ID integer
---@field Num integer
---@field Time integer[]
---@field Data integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.LightIntBand self
function row:SetID(value) end

---Gets the value of field 'Num'.
---@return integer value
function row:GetNum() end

---Sets the value of field 'Num'.
---@param value integer
---@return dbc.row.v335.LightIntBand self
function row:SetNum(value) end

---Gets the value of field 'Time'.
---@return integer[] value
function row:GetTime() end

---Sets the value of field 'Time'.
---@param value integer[]
---@return dbc.row.v335.LightIntBand self
function row:SetTime(value) end

---Gets element at 1-based index in 'Time'.
---@param index integer
---@return integer value
function row:GetTimeItem(index) end

---Gets the value of field 'Data'.
---@return integer[] value
function row:GetData() end

---Sets the value of field 'Data'.
---@param value integer[]
---@return dbc.row.v335.LightIntBand self
function row:SetData(value) end

---Gets element at 1-based index in 'Data'.
---@param index integer
---@return integer value
function row:GetDataItem(index) end

---Table container for LightIntBand (Build 3.3.5.12340).
---@class dbc.Table.v335.LightIntBand : DbcTable
---@field [integer] dbc.row.v335.LightIntBand
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.LightIntBand
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.LightIntBand|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.LightIntBand
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.LightIntBand>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.LightIntBand[]
function tbl:GetByRelation(foreign_id) end

return {}
