---@meta
-- Generated LuaLS annotations for SoundFilterElem (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SoundFilterElem in build 3.3.5.12340.
---@class dbc.row.v335.SoundFilterElem : RowProxy
---@field ID integer
---@field SoundFilterID integer
---@field OrderIndex integer
---@field FilterType integer
---@field Params number[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SoundFilterElem self
function row:SetID(value) end

---Gets the value of field 'SoundFilterID'.
---@return integer value
function row:GetSoundFilterID() end

---Sets the value of field 'SoundFilterID'.
---@param value integer
---@return dbc.row.v335.SoundFilterElem self
function row:SetSoundFilterID(value) end

---Navigates foreign relationship to 'SoundFilter' via 'SoundFilterID'.
---@return dbc.row.v335.SoundFilter|nil
function row:GetSoundFilter() end

---Creates a related 'SoundFilter' row and automatically links 'SoundFilterID'.
---@param data? table
---@return dbc.row.v335.SoundFilter
function row:CreateRelated(data) end

---Gets the value of field 'OrderIndex'.
---@return integer value
function row:GetOrderIndex() end

---Sets the value of field 'OrderIndex'.
---@param value integer
---@return dbc.row.v335.SoundFilterElem self
function row:SetOrderIndex(value) end

---Gets the value of field 'FilterType'.
---@return integer value
function row:GetFilterType() end

---Sets the value of field 'FilterType'.
---@param value integer
---@return dbc.row.v335.SoundFilterElem self
function row:SetFilterType(value) end

---Gets the value of field 'Params'.
---@return number[] value
function row:GetParams() end

---Sets the value of field 'Params'.
---@param value number[]
---@return dbc.row.v335.SoundFilterElem self
function row:SetParams(value) end

---Gets element at 1-based index in 'Params'.
---@param index integer
---@return number value
function row:GetParamsItem(index) end

---Table container for SoundFilterElem (Build 3.3.5.12340).
---@class dbc.Table.v335.SoundFilterElem : DbcTable
---@field [integer] dbc.row.v335.SoundFilterElem
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SoundFilterElem
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SoundFilterElem|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SoundFilterElem
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SoundFilterElem>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SoundFilterElem[]
function tbl:GetByRelation(foreign_id) end

return {}
