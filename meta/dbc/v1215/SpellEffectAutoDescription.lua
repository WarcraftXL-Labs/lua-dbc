---@meta
-- Generated LuaLS annotations for SpellEffectAutoDescription (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellEffectAutoDescription in build 12.1.5.69594.
---@class dbc.row.v1215.SpellEffectAutoDescription : RowProxy
---@field ID integer
---@field EffectDescription_lang string
---@field AuraDescription_lang string
---@field SpellEffectType integer
---@field AuraEffectType integer
---@field PointsSign integer
---@field TargetType integer
---@field SchoolMask integer
---@field EffectOrderIndex integer
---@field AuraOrderIndex integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetID(value) end

---Gets the value of field 'EffectDescription_lang'.
---@return string value
function row:GetEffectDescription_lang() end

---Sets the value of field 'EffectDescription_lang'.
---@param value string
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetEffectDescription_lang(value) end

---Gets the value of field 'AuraDescription_lang'.
---@return string value
function row:GetAuraDescription_lang() end

---Sets the value of field 'AuraDescription_lang'.
---@param value string
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetAuraDescription_lang(value) end

---Gets the value of field 'SpellEffectType'.
---@return integer value
function row:GetSpellEffectType() end

---Sets the value of field 'SpellEffectType'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetSpellEffectType(value) end

---Gets the value of field 'AuraEffectType'.
---@return integer value
function row:GetAuraEffectType() end

---Sets the value of field 'AuraEffectType'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetAuraEffectType(value) end

---Gets the value of field 'PointsSign'.
---@return integer value
function row:GetPointsSign() end

---Sets the value of field 'PointsSign'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetPointsSign(value) end

---Gets the value of field 'TargetType'.
---@return integer value
function row:GetTargetType() end

---Sets the value of field 'TargetType'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetTargetType(value) end

---Gets the value of field 'SchoolMask'.
---@return integer value
function row:GetSchoolMask() end

---Sets the value of field 'SchoolMask'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetSchoolMask(value) end

---Gets the value of field 'EffectOrderIndex'.
---@return integer value
function row:GetEffectOrderIndex() end

---Sets the value of field 'EffectOrderIndex'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetEffectOrderIndex(value) end

---Gets the value of field 'AuraOrderIndex'.
---@return integer value
function row:GetAuraOrderIndex() end

---Sets the value of field 'AuraOrderIndex'.
---@param value integer
---@return dbc.row.v1215.SpellEffectAutoDescription self
function row:SetAuraOrderIndex(value) end

---Table container for SpellEffectAutoDescription (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellEffectAutoDescription : DbcTable
---@field [integer] dbc.row.v1215.SpellEffectAutoDescription
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellEffectAutoDescription
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellEffectAutoDescription|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellEffectAutoDescription
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellEffectAutoDescription>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellEffectAutoDescription[]
function tbl:GetByRelation(foreign_id) end

return {}
