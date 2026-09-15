---@meta
-- Generated LuaLS annotations for SpellProcsPerMinuteMod (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellProcsPerMinuteMod in build 12.1.5.69594.
---@class dbc.row.v1215.SpellProcsPerMinuteMod : RowProxy
---@field ID integer
---@field Type integer
---@field Param integer
---@field Coeff number
---@field Field_12_1_5_69594_003 integer
---@field SpellProcsPerMinuteID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod self
function row:SetID(value) end

---Gets the value of field 'Type'.
---@return integer value
function row:GetType() end

---Sets the value of field 'Type'.
---@param value integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod self
function row:SetType(value) end

---Gets the value of field 'Param'.
---@return integer value
function row:GetParam() end

---Sets the value of field 'Param'.
---@param value integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod self
function row:SetParam(value) end

---Gets the value of field 'Coeff'.
---@return number value
function row:GetCoeff() end

---Sets the value of field 'Coeff'.
---@param value number
---@return dbc.row.v1215.SpellProcsPerMinuteMod self
function row:SetCoeff(value) end

---Gets the value of field 'Field_12_1_5_69594_003'.
---@return integer value
function row:GetField_12_1_5_69594_003() end

---Sets the value of field 'Field_12_1_5_69594_003'.
---@param value integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod self
function row:SetField_12_1_5_69594_003(value) end

---Gets the value of field 'SpellProcsPerMinuteID'.
---@return integer value
function row:GetSpellProcsPerMinuteID() end

---Sets the value of field 'SpellProcsPerMinuteID'.
---@param value integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod self
function row:SetSpellProcsPerMinuteID(value) end

---Navigates foreign relationship to 'SpellProcsPerMinute' via 'SpellProcsPerMinuteID'.
---@return dbc.row.v1215.SpellProcsPerMinute|nil
function row:GetSpellProcsPerMinute() end

---Creates a related 'SpellProcsPerMinute' row and automatically links 'SpellProcsPerMinuteID'.
---@param data? table
---@return dbc.row.v1215.SpellProcsPerMinute
function row:CreateRelated(data) end

---Table container for SpellProcsPerMinuteMod (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellProcsPerMinuteMod : DbcTable
---@field [integer] dbc.row.v1215.SpellProcsPerMinuteMod
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellProcsPerMinuteMod
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellProcsPerMinuteMod>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellProcsPerMinuteMod[]
function tbl:GetByRelation(foreign_id) end

return {}
