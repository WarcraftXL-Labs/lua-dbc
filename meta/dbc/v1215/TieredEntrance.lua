---@meta
-- Generated LuaLS annotations for TieredEntrance (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of TieredEntrance in build 12.1.5.69594.
---@class dbc.row.v1215.TieredEntrance : RowProxy
---@field ID integer
---@field Field_5_5_4_67090_000 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.TieredEntrance self
function row:SetID(value) end

---Gets the value of field 'Field_5_5_4_67090_000'.
---@return integer value
function row:GetField_5_5_4_67090_000() end

---Sets the value of field 'Field_5_5_4_67090_000'.
---@param value integer
---@return dbc.row.v1215.TieredEntrance self
function row:SetField_5_5_4_67090_000(value) end

---Table container for TieredEntrance (Build 12.1.5.69594).
---@class dbc.Table.v1215.TieredEntrance : DbcTable
---@field [integer] dbc.row.v1215.TieredEntrance
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.TieredEntrance
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.TieredEntrance|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.TieredEntrance
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.TieredEntrance>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.TieredEntrance[]
function tbl:GetByRelation(foreign_id) end

return {}
