---@meta
-- Generated LuaLS annotations for UiCanvas (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiCanvas in build 12.1.5.69594.
---@class dbc.row.v1215.UiCanvas : RowProxy
---@field ID integer
---@field Width integer
---@field Height integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiCanvas self
function row:SetID(value) end

---Gets the value of field 'Width'.
---@return integer value
function row:GetWidth() end

---Sets the value of field 'Width'.
---@param value integer
---@return dbc.row.v1215.UiCanvas self
function row:SetWidth(value) end

---Gets the value of field 'Height'.
---@return integer value
function row:GetHeight() end

---Sets the value of field 'Height'.
---@param value integer
---@return dbc.row.v1215.UiCanvas self
function row:SetHeight(value) end

---Table container for UiCanvas (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiCanvas : DbcTable
---@field [integer] dbc.row.v1215.UiCanvas
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiCanvas
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiCanvas|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiCanvas
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiCanvas>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiCanvas[]
function tbl:GetByRelation(foreign_id) end

return {}
