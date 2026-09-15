---@meta
-- Generated LuaLS annotations for SpellVisualKitDecalAttach (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualKitDecalAttach in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualKitDecalAttach : RowProxy
---@field ID integer
---@field Field_12_0_0_64741_000 number[]
---@field Field_12_0_0_64741_001 number[]
---@field SpellVisualKitID integer
---@field DecalPropertiesID integer
---@field Field_12_0_0_64741_004 integer
---@field Field_12_0_0_64741_005 integer
---@field Radius number
---@field Field_12_0_0_64741_007 number
---@field Field_12_0_0_64741_008 number
---@field Field_12_0_0_64741_009 number
---@field Priority integer override for DecalProperties::Priority if != -1?
---@field FadeIn number override for DecalProperties::FadeIn?
---@field FadeOut number override for DecalProperties::FadeOut?
---@field ArbitraryBoxHeight number override for DecalProperties::ArbitraryBoxHeight if != 0?
---@field Field_12_0_0_64741_014 integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetID(value) end

---Gets the value of field 'Field_12_0_0_64741_000'.
---@return number[] value
function row:GetField_12_0_0_64741_000() end

---Sets the value of field 'Field_12_0_0_64741_000'.
---@param value number[]
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_000(value) end

---Gets element at 1-based index in 'Field_12_0_0_64741_000'.
---@param index integer
---@return number value
function row:GetField_12_0_0_64741_000Item(index) end

---Gets the value of field 'Field_12_0_0_64741_001'.
---@return number[] value
function row:GetField_12_0_0_64741_001() end

---Sets the value of field 'Field_12_0_0_64741_001'.
---@param value number[]
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_001(value) end

---Gets element at 1-based index in 'Field_12_0_0_64741_001'.
---@param index integer
---@return number value
function row:GetField_12_0_0_64741_001Item(index) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'DecalPropertiesID'.
---@return integer value
function row:GetDecalPropertiesID() end

---Sets the value of field 'DecalPropertiesID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetDecalPropertiesID(value) end

---Navigates foreign relationship to 'DecalProperties' via 'DecalPropertiesID'.
---@return dbc.row.v1215.DecalProperties|nil
function row:GetDecalProperties() end

---Creates a related 'DecalProperties' row and automatically links 'DecalPropertiesID'.
---@param data? table
---@return dbc.row.v1215.DecalProperties
function row:CreateRelated(data) end

---Gets the value of field 'Field_12_0_0_64741_004'.
---@return integer value
function row:GetField_12_0_0_64741_004() end

---Sets the value of field 'Field_12_0_0_64741_004'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_004(value) end

---Gets the value of field 'Field_12_0_0_64741_005'.
---@return integer value
function row:GetField_12_0_0_64741_005() end

---Sets the value of field 'Field_12_0_0_64741_005'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_005(value) end

---Gets the value of field 'Radius'.
---@return number value
function row:GetRadius() end

---Sets the value of field 'Radius'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetRadius(value) end

---Gets the value of field 'Field_12_0_0_64741_007'.
---@return number value
function row:GetField_12_0_0_64741_007() end

---Sets the value of field 'Field_12_0_0_64741_007'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_007(value) end

---Gets the value of field 'Field_12_0_0_64741_008'.
---@return number value
function row:GetField_12_0_0_64741_008() end

---Sets the value of field 'Field_12_0_0_64741_008'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_008(value) end

---Gets the value of field 'Field_12_0_0_64741_009'.
---@return number value
function row:GetField_12_0_0_64741_009() end

---Sets the value of field 'Field_12_0_0_64741_009'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_009(value) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetPriority(value) end

---Gets the value of field 'FadeIn'.
---@return number value
function row:GetFadeIn() end

---Sets the value of field 'FadeIn'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetFadeIn(value) end

---Gets the value of field 'FadeOut'.
---@return number value
function row:GetFadeOut() end

---Sets the value of field 'FadeOut'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetFadeOut(value) end

---Gets the value of field 'ArbitraryBoxHeight'.
---@return number value
function row:GetArbitraryBoxHeight() end

---Sets the value of field 'ArbitraryBoxHeight'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetArbitraryBoxHeight(value) end

---Gets the value of field 'Field_12_0_0_64741_014'.
---@return integer value
function row:GetField_12_0_0_64741_014() end

---Sets the value of field 'Field_12_0_0_64741_014'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetField_12_0_0_64741_014(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for SpellVisualKitDecalAttach (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualKitDecalAttach : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualKitDecalAttach
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualKitDecalAttach
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualKitDecalAttach>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualKitDecalAttach[]
function tbl:GetByRelation(foreign_id) end

return {}
