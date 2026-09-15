---@meta
-- Generated LuaLS annotations for BarrageEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of BarrageEffect in build 12.1.5.69594.
---@class dbc.row.v1215.BarrageEffect : RowProxy
---@field ID integer
---@field Flags integer &2: use Positioner infrastructure for attachment? also M2 events are involved...
---@field Field_8_1_0_28616_001Max number >= Field_8_1_0_28616_001Min
---@field Field_8_1_0_28616_001Min number
---@field Field_8_1_0_28440_003Max integer >= Field_8_1_0_28440_003Min
---@field Field_8_1_0_28440_003Min integer
---@field Field_8_1_0_28440_005 integer like Field_8_1_0_28440_003Min and Field_8_1_0_28440_003Max apparently time related (in milliseconds). frequency + lifetime?
---@field ModelCountMax integer model count?, >= ModelCountMin, hardcoded limit of 32
---@field ModelCountMin integer
---@field AttachmentPoint integer not sure on caster, target, missile!?, may be -1 to (probably) use base
---@field SpellVisualEffectNameID integer
---@field ConeAngle number if 0 take from spell effect
---@field Range number if 0 take from spell effect

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetID(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetFlags(value) end

---Gets the value of field 'Field_8_1_0_28616_001Max'.
---@return number value
function row:GetField_8_1_0_28616_001Max() end

---Sets the value of field 'Field_8_1_0_28616_001Max'.
---@param value number
---@return dbc.row.v1215.BarrageEffect self
function row:SetField_8_1_0_28616_001Max(value) end

---Gets the value of field 'Field_8_1_0_28616_001Min'.
---@return number value
function row:GetField_8_1_0_28616_001Min() end

---Sets the value of field 'Field_8_1_0_28616_001Min'.
---@param value number
---@return dbc.row.v1215.BarrageEffect self
function row:SetField_8_1_0_28616_001Min(value) end

---Gets the value of field 'Field_8_1_0_28440_003Max'.
---@return integer value
function row:GetField_8_1_0_28440_003Max() end

---Sets the value of field 'Field_8_1_0_28440_003Max'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetField_8_1_0_28440_003Max(value) end

---Gets the value of field 'Field_8_1_0_28440_003Min'.
---@return integer value
function row:GetField_8_1_0_28440_003Min() end

---Sets the value of field 'Field_8_1_0_28440_003Min'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetField_8_1_0_28440_003Min(value) end

---Gets the value of field 'Field_8_1_0_28440_005'.
---@return integer value
function row:GetField_8_1_0_28440_005() end

---Sets the value of field 'Field_8_1_0_28440_005'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetField_8_1_0_28440_005(value) end

---Gets the value of field 'ModelCountMax'.
---@return integer value
function row:GetModelCountMax() end

---Sets the value of field 'ModelCountMax'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetModelCountMax(value) end

---Gets the value of field 'ModelCountMin'.
---@return integer value
function row:GetModelCountMin() end

---Sets the value of field 'ModelCountMin'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetModelCountMin(value) end

---Gets the value of field 'AttachmentPoint'.
---@return integer value
function row:GetAttachmentPoint() end

---Sets the value of field 'AttachmentPoint'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetAttachmentPoint(value) end

---Gets the value of field 'SpellVisualEffectNameID'.
---@return integer value
function row:GetSpellVisualEffectNameID() end

---Sets the value of field 'SpellVisualEffectNameID'.
---@param value integer
---@return dbc.row.v1215.BarrageEffect self
function row:SetSpellVisualEffectNameID(value) end

---Navigates foreign relationship to 'SpellVisualEffectName' via 'SpellVisualEffectNameID'.
---@return dbc.row.v1215.SpellVisualEffectName|nil
function row:GetSpellVisualEffectName() end

---Creates a related 'SpellVisualEffectName' row and automatically links 'SpellVisualEffectNameID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualEffectName
function row:CreateRelated(data) end

---Gets the value of field 'ConeAngle'.
---@return number value
function row:GetConeAngle() end

---Sets the value of field 'ConeAngle'.
---@param value number
---@return dbc.row.v1215.BarrageEffect self
function row:SetConeAngle(value) end

---Gets the value of field 'Range'.
---@return number value
function row:GetRange() end

---Sets the value of field 'Range'.
---@param value number
---@return dbc.row.v1215.BarrageEffect self
function row:SetRange(value) end

---Table container for BarrageEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.BarrageEffect : DbcTable
---@field [integer] dbc.row.v1215.BarrageEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.BarrageEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.BarrageEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.BarrageEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.BarrageEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.BarrageEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
