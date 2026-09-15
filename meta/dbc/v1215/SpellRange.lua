---@meta
-- Generated LuaLS annotations for SpellRange (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellRange in build 12.1.5.69594.
---@class dbc.row.v1215.SpellRange : RowProxy
---@field ID integer
---@field DisplayName_lang string
---@field DisplayNameShort_lang string
---@field Flags integer &1: Melee (ignore RangeMin, set to 0); &2: Ranged (add 5 to RangeMin)
---@field RangeMin number[] RangeMin[0] = Enemy, RangeMin[1] Friendly
---@field RangeMax number[] RangeMax[0] = Enemy, RangeMax[1] Friendly

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellRange self
function row:SetID(value) end

---Gets the value of field 'DisplayName_lang'.
---@return string value
function row:GetDisplayName_lang() end

---Sets the value of field 'DisplayName_lang'.
---@param value string
---@return dbc.row.v1215.SpellRange self
function row:SetDisplayName_lang(value) end

---Gets the value of field 'DisplayNameShort_lang'.
---@return string value
function row:GetDisplayNameShort_lang() end

---Sets the value of field 'DisplayNameShort_lang'.
---@param value string
---@return dbc.row.v1215.SpellRange self
function row:SetDisplayNameShort_lang(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellRange self
function row:SetFlags(value) end

---Gets the value of field 'RangeMin'.
---@return number[] value
function row:GetRangeMin() end

---Sets the value of field 'RangeMin'.
---@param value number[]
---@return dbc.row.v1215.SpellRange self
function row:SetRangeMin(value) end

---Gets element at 1-based index in 'RangeMin'.
---@param index integer
---@return number value
function row:GetRangeMinItem(index) end

---Gets the value of field 'RangeMax'.
---@return number[] value
function row:GetRangeMax() end

---Sets the value of field 'RangeMax'.
---@param value number[]
---@return dbc.row.v1215.SpellRange self
function row:SetRangeMax(value) end

---Gets element at 1-based index in 'RangeMax'.
---@param index integer
---@return number value
function row:GetRangeMaxItem(index) end

---Table container for SpellRange (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellRange : DbcTable
---@field [integer] dbc.row.v1215.SpellRange
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellRange
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellRange|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellRange
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellRange>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellRange[]
function tbl:GetByRelation(foreign_id) end

return {}
