---@meta
-- Generated LuaLS annotations for TotemCategory (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of TotemCategory in build 3.3.5.12340.
---@class dbc.row.v335.TotemCategory : RowProxy
---@field ID integer
---@field Name_lang string
---@field TotemCategoryType integer
---@field TotemCategoryMask integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.TotemCategory self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v335.TotemCategory self
function row:SetName_lang(value) end

---Gets the value of field 'TotemCategoryType'.
---@return integer value
function row:GetTotemCategoryType() end

---Sets the value of field 'TotemCategoryType'.
---@param value integer
---@return dbc.row.v335.TotemCategory self
function row:SetTotemCategoryType(value) end

---Gets the value of field 'TotemCategoryMask'.
---@return integer value
function row:GetTotemCategoryMask() end

---Sets the value of field 'TotemCategoryMask'.
---@param value integer
---@return dbc.row.v335.TotemCategory self
function row:SetTotemCategoryMask(value) end

---Table container for TotemCategory (Build 3.3.5.12340).
---@class dbc.Table.v335.TotemCategory : DbcTable
---@field [integer] dbc.row.v335.TotemCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.TotemCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.TotemCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.TotemCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.TotemCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.TotemCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
