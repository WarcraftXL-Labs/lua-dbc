---@meta
-- Generated LuaLS annotations for TactKeyLookup (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TactKeyLookup in build 12.1.5.69594.
---@class dbc.row.v1215.TactKeyLookup : RowProxy
---@field ID integer
---@field TACTID integer[]

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TactKeyLookup self
function row:SetID(value) end

---Navigates foreign relationship to 'TactKey' via 'ID'.
---@return dbc.row.v1215.TactKey|nil
function row:GetID() end

---Creates a related 'TactKey' row and automatically links 'ID'.
---@param data? table
---@return dbc.row.v1215.TactKey
function row:CreateRelated(data) end

---Gets the value of field 'TACTID'.
---@return integer[] value
function row:GetTACTID() end

---Sets the value of field 'TACTID'.
---@param value integer[]
---@return dbc.row.v1215.TactKeyLookup self
function row:SetTACTID(value) end

---Gets element at 1-based index in 'TACTID'.
---@param index integer
---@return integer value
function row:GetTACTIDItem(index) end

---Navigates foreign relationship to 'TACT' via 'TACTID'.
---@return dbc.row.v1215.TACT|nil
function row:GetTACT() end

---Creates a related 'TACT' row and automatically links 'TACTID'.
---@param data? table
---@return dbc.row.v1215.TACT
function row:CreateRelated(data) end

---Table container for TactKeyLookup (Build 12.1.5.69594).
---@class dbc.Table.v1215.TactKeyLookup : DbcTable
---@field [integer] dbc.row.v1215.TactKeyLookup
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TactKeyLookup
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TactKeyLookup|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TactKeyLookup
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TactKeyLookup>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TactKeyLookup[]
function tbl:GetByRelation(foreign_id) end

return {}
