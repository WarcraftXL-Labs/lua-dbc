---@meta
-- Generated LuaLS annotations for ConfigurationWarning (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ConfigurationWarning in build 12.1.5.69594.
---@class dbc.row.v1215.ConfigurationWarning : RowProxy
---@field ID integer
---@field Warning_lang string
---@field Type integer 0 = ShaderModelWillBeOutdated, 1 = ShaderModelIsOutdated, 2 = ConsoleDeviceSseoUtdated, 3 = DriverBlacklisted, 4 = DriverOutOfDate, 5 = DeviceBlacklisted, 6 = GraphicsApiwIllBeOutdated, 7 = OsBitsWillBeOutdated

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ConfigurationWarning self
function row:SetID(value) end

---Gets the value of field 'Warning_lang'.
---@return string value
function row:GetWarning_lang() end

---Sets the value of field 'Warning_lang'.
---@param value string
---@return dbc.row.v1215.ConfigurationWarning self
function row:SetWarning_lang(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.ConfigurationWarning self
function row:SetType(value) end

---Table container for ConfigurationWarning (Build 12.1.5.69594).
---@class dbc.Table.v1215.ConfigurationWarning : DbcTable
---@field [integer] dbc.row.v1215.ConfigurationWarning
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ConfigurationWarning
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ConfigurationWarning|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ConfigurationWarning
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ConfigurationWarning>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ConfigurationWarning[]
function tbl:GetByRelation(foreign_id) end

return {}
