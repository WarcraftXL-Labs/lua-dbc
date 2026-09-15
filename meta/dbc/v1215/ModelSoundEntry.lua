---@meta
-- Generated LuaLS annotations for ModelSoundEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ModelSoundEntry in build 12.1.5.69594.
---@class dbc.row.v1215.ModelSoundEntry : RowProxy
---@field ID integer
---@field Field_10_2_5_52206_000 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ModelSoundEntry self
function row:SetID(value) end

---Gets the value of field 'Field_10_2_5_52206_000'.
---@return integer value
function row:GetField_10_2_5_52206_000() end

---Sets the value of field 'Field_10_2_5_52206_000'.
---@param value integer
---@return dbc.row.v1215.ModelSoundEntry self
function row:SetField_10_2_5_52206_000(value) end

---Table container for ModelSoundEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.ModelSoundEntry : DbcTable
---@field [integer] dbc.row.v1215.ModelSoundEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ModelSoundEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ModelSoundEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ModelSoundEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ModelSoundEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ModelSoundEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
