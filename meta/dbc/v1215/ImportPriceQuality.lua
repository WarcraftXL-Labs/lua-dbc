---@meta
-- Generated LuaLS annotations for ImportPriceQuality (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ImportPriceQuality in build 12.1.5.69594.
---@class dbc.row.v1215.ImportPriceQuality : RowProxy
---@field ID integer
---@field Data number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ImportPriceQuality self
function row:SetID(value) end

---Gets the value of field 'Data'.
---@return number value
function row:GetData() end

---Sets the value of field 'Data'.
---@param value number
---@return dbc.row.v1215.ImportPriceQuality self
function row:SetData(value) end

---Table container for ImportPriceQuality (Build 12.1.5.69594).
---@class dbc.Table.v1215.ImportPriceQuality : DbcTable
---@field [integer] dbc.row.v1215.ImportPriceQuality
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ImportPriceQuality
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ImportPriceQuality|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ImportPriceQuality
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ImportPriceQuality>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ImportPriceQuality[]
function tbl:GetByRelation(foreign_id) end

return {}
