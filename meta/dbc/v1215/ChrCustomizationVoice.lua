---@meta
-- Generated LuaLS annotations for ChrCustomizationVoice (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ChrCustomizationVoice in build 12.1.5.69594.
---@class dbc.row.v1215.ChrCustomizationVoice : RowProxy
---@field ID integer
---@field Field_10_0_0_44895_000 integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationVoice self
function row:SetID(value) end

---Gets the value of field 'Field_10_0_0_44895_000'.
---@return integer value
function row:GetField_10_0_0_44895_000() end

---Sets the value of field 'Field_10_0_0_44895_000'.
---@param value integer
---@return dbc.row.v1215.ChrCustomizationVoice self
function row:SetField_10_0_0_44895_000(value) end

---Table container for ChrCustomizationVoice (Build 12.1.5.69594).
---@class dbc.Table.v1215.ChrCustomizationVoice : DbcTable
---@field [integer] dbc.row.v1215.ChrCustomizationVoice
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ChrCustomizationVoice
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationVoice|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ChrCustomizationVoice
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ChrCustomizationVoice>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ChrCustomizationVoice[]
function tbl:GetByRelation(foreign_id) end

return {}
