---@meta
-- Generated LuaLS annotations for gtOCTRegenMP (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of gtOCTRegenMP in build 3.3.5.12340.
---@class dbc.row.v335.gtOCTRegenMP : RowProxy
---@field Data number

local row = {}

---Gets the value of field 'Data'.
---@return number value
function row:GetData() end

---Sets the value of field 'Data'.
---@param value number
---@return dbc.row.v335.gtOCTRegenMP self
function row:SetData(value) end

---Table container for gtOCTRegenMP (Build 3.3.5.12340).
---@class dbc.Table.v335.gtOCTRegenMP : DbcTable
---@field [integer] dbc.row.v335.gtOCTRegenMP
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.gtOCTRegenMP
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.gtOCTRegenMP|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.gtOCTRegenMP
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.gtOCTRegenMP>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.gtOCTRegenMP[]
function tbl:GetByRelation(foreign_id) end

return {}
