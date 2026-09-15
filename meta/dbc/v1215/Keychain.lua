---@meta
-- Generated LuaLS annotations for Keychain (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of Keychain in build 12.1.5.69594.
---@class dbc.row.v1215.Keychain : RowProxy
---@field ID integer
---@field Key integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.Keychain self
function row:SetID(value) end

---Gets the value of field 'Key'.
---@return integer[] value
function row:GetKey() end

---Sets the value of field 'Key'.
---@param value integer[]
---@return dbc.row.v1215.Keychain self
function row:SetKey(value) end

---Gets element at 1-based index in 'Key'.
---@param index integer
---@return integer value
function row:GetKeyItem(index) end

---Table container for Keychain (Build 12.1.5.69594).
---@class dbc.Table.v1215.Keychain : DbcTable
---@field [integer] dbc.row.v1215.Keychain
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.Keychain
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.Keychain|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.Keychain
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.Keychain>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.Keychain[]
function tbl:GetByRelation(foreign_id) end

return {}
