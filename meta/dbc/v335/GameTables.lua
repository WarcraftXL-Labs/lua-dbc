---@meta
-- Generated LuaLS annotations for GameTables (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of GameTables in build 3.3.5.12340.
---@class dbc.row.v335.GameTables : RowProxy
---@field Name string
---@field NumRows integer
---@field NumColumns integer

local row = {}

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.GameTables self
function row:SetName(value) end

---Gets the value of field 'NumRows'.
---@return integer value
function row:GetNumRows() end

---Sets the value of field 'NumRows'.
---@param value integer
---@return dbc.row.v335.GameTables self
function row:SetNumRows(value) end

---Gets the value of field 'NumColumns'.
---@return integer value
function row:GetNumColumns() end

---Sets the value of field 'NumColumns'.
---@param value integer
---@return dbc.row.v335.GameTables self
function row:SetNumColumns(value) end

---Table container for GameTables (Build 3.3.5.12340).
---@class dbc.Table.v335.GameTables : DbcTable
---@field [integer] dbc.row.v335.GameTables
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.GameTables
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.GameTables|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.GameTables
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.GameTables>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.GameTables[]
function tbl:GetByRelation(foreign_id) end

return {}
