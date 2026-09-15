---@meta
-- Generated LuaLS annotations for Package (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of Package in build 3.3.5.12340.
---@class dbc.row.v335.Package : RowProxy
---@field ID integer
---@field Icon string
---@field Cost integer
---@field Name_lang string

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.Package self
function row:SetID(value) end

---Gets the value of field 'Icon'.
---@return string value
function row:GetIcon() end

---Sets the value of field 'Icon'.
---@param value string
---@return dbc.row.v335.Package self
function row:SetIcon(value) end

---Gets the value of field 'Cost'.
---@return integer value
function row:GetCost() end

---Sets the value of field 'Cost'.
---@param value integer
---@return dbc.row.v335.Package self
function row:SetCost(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.Package self
function row:SetName_lang(value) end

---Table container for Package (Build 3.3.5.12340).
---@class dbc.Table.v335.Package : DbcTable
---@field [integer] dbc.row.v335.Package
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.Package
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.Package|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.Package
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.Package>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.Package[]
function tbl:GetByRelation(foreign_id) end

return {}
