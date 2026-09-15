---@meta
-- Generated LuaLS annotations for SpellCategory (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellCategory in build 12.1.5.69594.
---@class dbc.row.v1215.SpellCategory : RowProxy
---@field ID integer
---@field Name_lang string
---@field Flags integer
---@field UsesPerWeek integer
---@field MaxCharges integer
---@field ChargeRecoveryTime integer
---@field TypeMask integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellCategory self
function row:SetID(value) end

---Gets the value of field 'Name_lang'.
---@return string value
function row:GetName_lang() end

---Sets the value of field 'Name_lang'.
---@param value string
---@return dbc.row.v1215.SpellCategory self
function row:SetName_lang(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellCategory self
function row:SetFlags(value) end

---Gets the value of field 'UsesPerWeek'.
---@return integer value
function row:GetUsesPerWeek() end

---Sets the value of field 'UsesPerWeek'.
---@param value integer
---@return dbc.row.v1215.SpellCategory self
function row:SetUsesPerWeek(value) end

---Gets the value of field 'MaxCharges'.
---@return integer value
function row:GetMaxCharges() end

---Sets the value of field 'MaxCharges'.
---@param value integer
---@return dbc.row.v1215.SpellCategory self
function row:SetMaxCharges(value) end

---Gets the value of field 'ChargeRecoveryTime'.
---@return integer value
function row:GetChargeRecoveryTime() end

---Sets the value of field 'ChargeRecoveryTime'.
---@param value integer
---@return dbc.row.v1215.SpellCategory self
function row:SetChargeRecoveryTime(value) end

---Gets the value of field 'TypeMask'.
---@return integer value
function row:GetTypeMask() end

---Sets the value of field 'TypeMask'.
---@param value integer
---@return dbc.row.v1215.SpellCategory self
function row:SetTypeMask(value) end

---Table container for SpellCategory (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellCategory : DbcTable
---@field [integer] dbc.row.v1215.SpellCategory
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellCategory
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellCategory|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellCategory
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellCategory>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellCategory[]
function tbl:GetByRelation(foreign_id) end

return {}
