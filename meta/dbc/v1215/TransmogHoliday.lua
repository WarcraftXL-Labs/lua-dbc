---@meta
-- Generated LuaLS annotations for TransmogHoliday (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TransmogHoliday in build 12.1.5.69594.
---@class dbc.row.v1215.TransmogHoliday : RowProxy
---@field ID integer
---@field RequiredTransmogHoliday integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TransmogHoliday self
function row:SetID(value) end

---Navigates foreign relationship to 'Item' via 'ID'.
---@return dbc.row.v1215.Item|nil
function row:GetID() end

---Creates a related 'Item' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.Item
function row:CreateRelated(data) end

---Gets the value of field 'RequiredTransmogHoliday'.
---@return integer value
function row:GetRequiredTransmogHoliday() end

---Sets the value of field 'RequiredTransmogHoliday'.
---@param value integer
---@return dbc.row.v1215.TransmogHoliday self
function row:SetRequiredTransmogHoliday(value) end

---Navigates foreign relationship to 'Holidays' via 'RequiredTransmogHoliday'.
---@return dbc.row.v1215.Holidays|nil
function row:GetRequiredTransmogHoliday() end

---Creates a related 'Holidays' row and automatically links 'RequiredTransmogHoliday'.
---@param data? table
---@return dbc.row.v1215.Holidays
function row:CreateRelated(data) end

---Table container for TransmogHoliday (Build 12.1.5.69594).
---@class dbc.Table.v1215.TransmogHoliday : DbcTable
---@field [integer] dbc.row.v1215.TransmogHoliday
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TransmogHoliday
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TransmogHoliday|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TransmogHoliday
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TransmogHoliday>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TransmogHoliday[]
function tbl:GetByRelation(foreign_id) end

return {}
