---@meta
-- Generated LuaLS annotations for AnimKitConfig (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of AnimKitConfig in build 12.1.5.69594.
---@class dbc.row.v1215.AnimKitConfig : RowProxy
---@field ID integer
---@field ConfigFlags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.AnimKitConfig self
function row:SetID(value) end

---Gets the value of field 'ConfigFlags'.
---@return integer value
function row:GetConfigFlags() end

---Sets the value of field 'ConfigFlags'.
---@param value integer
---@return dbc.row.v1215.AnimKitConfig self
function row:SetConfigFlags(value) end

---Table container for AnimKitConfig (Build 12.1.5.69594).
---@class dbc.Table.v1215.AnimKitConfig : DbcTable
---@field [integer] dbc.row.v1215.AnimKitConfig
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.AnimKitConfig
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitConfig|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.AnimKitConfig
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.AnimKitConfig>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.AnimKitConfig[]
function tbl:GetByRelation(foreign_id) end

return {}
