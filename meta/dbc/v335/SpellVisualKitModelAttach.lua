---@meta
-- Generated LuaLS annotations for SpellVisualKitModelAttach (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellVisualKitModelAttach in build 3.3.5.12340.
---@class dbc.row.v335.SpellVisualKitModelAttach : RowProxy
---@field ID integer
---@field ParentSpellVisualKitID integer
---@field SpellVisualEffectNameID integer
---@field AttachmentID integer
---@field Offset number[]
---@field Yaw number
---@field Pitch number
---@field Roll number

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetID(value) end

---Gets the value of field 'ParentSpellVisualKitID'.
---@return integer value
function row:GetParentSpellVisualKitID() end

---Sets the value of field 'ParentSpellVisualKitID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetParentSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'ParentSpellVisualKitID'.
---@return dbc.row.v335.SpellVisualKit|nil
function row:GetParentSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'ParentSpellVisualKitID'.
---@param data? table
---@return dbc.row.v335.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualEffectNameID'.
---@return integer value
function row:GetSpellVisualEffectNameID() end

---Sets the value of field 'SpellVisualEffectNameID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetSpellVisualEffectNameID(value) end

---Navigates foreign relationship to 'SpellVisualEffectName' via 'SpellVisualEffectNameID'.
---@return dbc.row.v335.SpellVisualEffectName|nil
function row:GetSpellVisualEffectName() end

---Creates a related 'SpellVisualEffectName' row and automatically links 'SpellVisualEffectNameID'.
---@param data? table
---@return dbc.row.v335.SpellVisualEffectName
function row:CreateRelated(data) end

---Gets the value of field 'AttachmentID'.
---@return integer value
function row:GetAttachmentID() end

---Sets the value of field 'AttachmentID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetAttachmentID(value) end

---Navigates foreign relationship to 'Attachment' via 'AttachmentID'.
---@return dbc.row.v335.Attachment|nil
function row:GetAttachment() end

---Creates a related 'Attachment' row and automatically links 'AttachmentID'.
---@param data? table
---@return dbc.row.v335.Attachment
function row:CreateRelated(data) end

---Gets the value of field 'Offset'.
---@return number[] value
function row:GetOffset() end

---Sets the value of field 'Offset'.
---@param value number[]
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetOffset(value) end

---Gets element at 1-based index in 'Offset'.
---@param index integer
---@return number value
function row:GetOffsetItem(index) end

---Gets the value of field 'Yaw'.
---@return number value
function row:GetYaw() end

---Sets the value of field 'Yaw'.
---@param value number
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetYaw(value) end

---Gets the value of field 'Pitch'.
---@return number value
function row:GetPitch() end

---Sets the value of field 'Pitch'.
---@param value number
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetPitch(value) end

---Gets the value of field 'Roll'.
---@return number value
function row:GetRoll() end

---Sets the value of field 'Roll'.
---@param value number
---@return dbc.row.v335.SpellVisualKitModelAttach self
function row:SetRoll(value) end

---Table container for SpellVisualKitModelAttach (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellVisualKitModelAttach : DbcTable
---@field [integer] dbc.row.v335.SpellVisualKitModelAttach
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellVisualKitModelAttach
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualKitModelAttach|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualKitModelAttach
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellVisualKitModelAttach>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellVisualKitModelAttach[]
function tbl:GetByRelation(foreign_id) end

return {}
