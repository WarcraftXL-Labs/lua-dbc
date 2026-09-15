---@meta
-- Generated LuaLS annotations for SpellVisualKitPickerEntry (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualKitPickerEntry in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualKitPickerEntry : RowProxy
---@field ID integer
---@field SpellVisualKitID integer
---@field Probability number
---@field SpellVisualKitPickerID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitPickerEntry self
function row:SetID(value) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitPickerEntry self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Probability'.
---@return number value
function row:GetProbability() end

---Sets the value of field 'Probability'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitPickerEntry self
function row:SetProbability(value) end

---Gets the value of field 'SpellVisualKitPickerID'.
---@return integer value
function row:GetSpellVisualKitPickerID() end

---Sets the value of field 'SpellVisualKitPickerID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitPickerEntry self
function row:SetSpellVisualKitPickerID(value) end

---Navigates foreign relationship to 'SpellVisualKitPicker' via 'SpellVisualKitPickerID'.
---@return dbc.row.v1215.SpellVisualKitPicker|nil
function row:GetSpellVisualKitPicker() end

---Creates a related 'SpellVisualKitPicker' row and automatically links 'SpellVisualKitPickerID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKitPicker
function row:CreateRelated(data) end

---Table container for SpellVisualKitPickerEntry (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualKitPickerEntry : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualKitPickerEntry
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualKitPickerEntry
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitPickerEntry|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitPickerEntry
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualKitPickerEntry>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualKitPickerEntry[]
function tbl:GetByRelation(foreign_id) end

return {}
