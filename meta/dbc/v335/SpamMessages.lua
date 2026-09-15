---@meta
-- Generated LuaLS annotations for SpamMessages (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpamMessages in build 3.3.5.12340.
---@class dbc.row.v335.SpamMessages : RowProxy
---@field ID integer
---@field Text string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpamMessages self
function row:SetID(value) end

---Gets the value of field 'Text'.
---@return string value
function row:GetText() end

---Sets the value of field 'Text'.
---@param value string
---@return dbc.row.v335.SpamMessages self
function row:SetText(value) end

---Table container for SpamMessages (Build 3.3.5.12340).
---@class dbc.Table.v335.SpamMessages : DbcTable
---@field [integer] dbc.row.v335.SpamMessages
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpamMessages
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpamMessages|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpamMessages
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpamMessages>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpamMessages[]
function tbl:GetByRelation(foreign_id) end

return {}
