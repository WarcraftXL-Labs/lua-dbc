---@meta
-- Generated LuaLS annotations for ItemVisualsXEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of ItemVisualsXEffect in build 12.1.5.69594.
---@class dbc.row.v1215.ItemVisualsXEffect : RowProxy
---@field ID integer
---@field AttachmentID integer
---@field DisplayWeaponSubclassID integer
---@field SpellVisualKitID integer
---@field AttachmentModelFileID integer
---@field Scale number
---@field ItemVisualsID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.ItemVisualsXEffect self
function row:SetID(value) end

---Gets the value of field 'AttachmentID'.
---@return integer value
function row:GetAttachmentID() end

---Sets the value of field 'AttachmentID'.
---@param value integer
---@return dbc.row.v1215.ItemVisualsXEffect self
function row:SetAttachmentID(value) end

---Navigates foreign relationship to 'Attachment' via 'AttachmentID'.
---@return dbc.row.v1215.Attachment|nil
function row:GetAttachment() end

---Creates a related 'Attachment' row and automatically links 'AttachmentID'.
---@param data? table
---@return dbc.row.v1215.Attachment
function row:CreateRelated(data) end

---Gets the value of field 'DisplayWeaponSubclassID'.
---@return integer value
function row:GetDisplayWeaponSubclassID() end

---Sets the value of field 'DisplayWeaponSubclassID'.
---@param value integer
---@return dbc.row.v1215.ItemVisualsXEffect self
function row:SetDisplayWeaponSubclassID(value) end

---Navigates foreign relationship to 'DisplayWeaponSubclass' via 'DisplayWeaponSubclassID'.
---@return dbc.row.v1215.DisplayWeaponSubclass|nil
function row:GetDisplayWeaponSubclass() end

---Creates a related 'DisplayWeaponSubclass' row and automatically links 'DisplayWeaponSubclassID'.
---@param data? table
---@return dbc.row.v1215.DisplayWeaponSubclass
function row:CreateRelated(data) end

---Gets the value of field 'SpellVisualKitID'.
---@return integer value
function row:GetSpellVisualKitID() end

---Sets the value of field 'SpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.ItemVisualsXEffect self
function row:SetSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'SpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'SpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'AttachmentModelFileID'.
---@return integer value
function row:GetAttachmentModelFileID() end

---Sets the value of field 'AttachmentModelFileID'.
---@param value integer
---@return dbc.row.v1215.ItemVisualsXEffect self
function row:SetAttachmentModelFileID(value) end

---Navigates foreign relationship to 'FileData' via 'AttachmentModelFileID'.
---@return dbc.row.v1215.FileData|nil
function row:GetAttachmentModelFile() end

---Creates a related 'FileData' row and automatically links 'AttachmentModelFileID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.ItemVisualsXEffect self
function row:SetScale(value) end

---Gets the value of field 'ItemVisualsID'.
---@return integer value
function row:GetItemVisualsID() end

---Sets the value of field 'ItemVisualsID'.
---@param value integer
---@return dbc.row.v1215.ItemVisualsXEffect self
function row:SetItemVisualsID(value) end

---Navigates foreign relationship to 'ItemVisuals' via 'ItemVisualsID'.
---@return dbc.row.v1215.ItemVisuals|nil
function row:GetItemVisuals() end

---Creates a related 'ItemVisuals' row and automatically links 'ItemVisualsID'.
---@param data? table
---@return dbc.row.v1215.ItemVisuals
function row:CreateRelated(data) end

---Table container for ItemVisualsXEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.ItemVisualsXEffect : DbcTable
---@field [integer] dbc.row.v1215.ItemVisualsXEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.ItemVisualsXEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.ItemVisualsXEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.ItemVisualsXEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.ItemVisualsXEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.ItemVisualsXEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
