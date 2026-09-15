---@meta
-- Generated LuaLS annotations for GlideEvent (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of GlideEvent in build 12.1.5.69594.
---@class dbc.row.v1215.GlideEvent : RowProxy
---@field ID integer
---@field AfterTimeInAnimation number
---@field AnimationDataID integer
---@field AnimKitID integer
---@field Field_10_0_0_44795_002 integer "contrails"
---@field Field_10_0_0_44795_003 integer "speed 1", "speed 2", "speed 3", "speed 4", Dragon Riding: AdvFlyDown (+AdvFlyDownEnd) [DNT], "Landing"
---@field Flags integer &1: OneShot
---@field SpellID integer
---@field LabelID integer
---@field Field_10_0_0_44795_006 integer full screen wind?
---@field Field_10_0_0_45232_007 integer
---@field DefaultBlendIn integer
---@field DefaultBlendOut integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetID(value) end

---Gets the value of field 'AfterTimeInAnimation'.
---@return number value
function row:GetAfterTimeInAnimation() end

---Sets the value of field 'AfterTimeInAnimation'.
---@param value number
---@return dbc.row.v1215.GlideEvent self
function row:SetAfterTimeInAnimation(value) end

---Gets the value of field 'AnimationDataID'.
---@return integer value
function row:GetAnimationDataID() end

---Sets the value of field 'AnimationDataID'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetAnimationDataID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimationDataID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnimationData() end

---Creates a related 'AnimationData' row and automatically links 'AnimationDataID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_44795_002'.
---@return integer value
function row:GetField_10_0_0_44795_002() end

---Sets the value of field 'Field_10_0_0_44795_002'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetField_10_0_0_44795_002(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'Field_10_0_0_44795_002'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetField_10_0_0_44795_002() end

---Creates a related 'SpellVisualKit' row and automatically links 'Field_10_0_0_44795_002'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_44795_003'.
---@return integer value
function row:GetField_10_0_0_44795_003() end

---Sets the value of field 'Field_10_0_0_44795_003'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetField_10_0_0_44795_003(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'Field_10_0_0_44795_003'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetField_10_0_0_44795_003() end

---Creates a related 'SpellVisualKit' row and automatically links 'Field_10_0_0_44795_003'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetFlags(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'LabelID'.
---@return integer value
function row:GetLabelID() end

---Sets the value of field 'LabelID'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetLabelID(value) end

---Navigates foreign relationship to 'Label' via 'LabelID'.
---@return dbc.row.v1215.Label|nil
function row:GetLabel() end

---Creates a related 'Label' row and automatically links 'LabelID'.
---@param data? table
---@return dbc.row.v1215.Label
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_44795_006'.
---@return integer value
function row:GetField_10_0_0_44795_006() end

---Sets the value of field 'Field_10_0_0_44795_006'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetField_10_0_0_44795_006(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'Field_10_0_0_44795_006'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetField_10_0_0_44795_006() end

---Creates a related 'SpellVisualKit' row and automatically links 'Field_10_0_0_44795_006'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'Field_10_0_0_45232_007'.
---@return integer value
function row:GetField_10_0_0_45232_007() end

---Sets the value of field 'Field_10_0_0_45232_007'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetField_10_0_0_45232_007(value) end

---Navigates foreign relationship to 'Spell' via 'Field_10_0_0_45232_007'.
---@return dbc.row.v1215.Spell|nil
function row:GetField_10_0_0_45232_007() end

---Creates a related 'Spell' row and automatically links 'Field_10_0_0_45232_007'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Gets the value of field 'DefaultBlendIn'.
---@return integer value
function row:GetDefaultBlendIn() end

---Sets the value of field 'DefaultBlendIn'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetDefaultBlendIn(value) end

---Gets the value of field 'DefaultBlendOut'.
---@return integer value
function row:GetDefaultBlendOut() end

---Sets the value of field 'DefaultBlendOut'.
---@param value integer
---@return dbc.row.v1215.GlideEvent self
function row:SetDefaultBlendOut(value) end

---Table container for GlideEvent (Build 12.1.5.69594).
---@class dbc.Table.v1215.GlideEvent : DbcTable
---@field [integer] dbc.row.v1215.GlideEvent
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.GlideEvent
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.GlideEvent|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.GlideEvent
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.GlideEvent>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.GlideEvent[]
function tbl:GetByRelation(foreign_id) end

return {}
