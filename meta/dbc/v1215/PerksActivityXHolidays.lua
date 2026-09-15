---@meta
-- Generated LuaLS annotations for PerksActivityXHolidays (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of PerksActivityXHolidays in build 12.1.5.69594.
---@class dbc.row.v1215.PerksActivityXHolidays : RowProxy
---@field ID integer
---@field HolidayID integer
---@field PerkActivityID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXHolidays self
function row:SetID(value) end

---Gets the value of field 'HolidayID'.
---@return integer value
function row:GetHolidayID() end

---Sets the value of field 'HolidayID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXHolidays self
function row:SetHolidayID(value) end

---Navigates foreign relationship to 'Holidays' via 'HolidayID'.
---@return dbc.row.v1215.Holidays|nil
function row:GetHoliday() end

---Creates a related 'Holidays' row and automatically links 'HolidayID'.
---@param data? table
---@return dbc.row.v1215.Holidays
function row:CreateRelated(data) end

---Gets the value of field 'PerkActivityID'.
---@return integer value
function row:GetPerkActivityID() end

---Sets the value of field 'PerkActivityID'.
---@param value integer
---@return dbc.row.v1215.PerksActivityXHolidays self
function row:SetPerkActivityID(value) end

---Navigates foreign relationship to 'PerksActivity' via 'PerkActivityID'.
---@return dbc.row.v1215.PerksActivity|nil
function row:GetPerkActivity() end

---Creates a related 'PerksActivity' row and automatically links 'PerkActivityID'.
---@param data? table
---@return dbc.row.v1215.PerksActivity
function row:CreateRelated(data) end

---Table container for PerksActivityXHolidays (Build 12.1.5.69594).
---@class dbc.Table.v1215.PerksActivityXHolidays : DbcTable
---@field [integer] dbc.row.v1215.PerksActivityXHolidays
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.PerksActivityXHolidays
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityXHolidays|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.PerksActivityXHolidays
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.PerksActivityXHolidays>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.PerksActivityXHolidays[]
function tbl:GetByRelation(foreign_id) end

return {}
