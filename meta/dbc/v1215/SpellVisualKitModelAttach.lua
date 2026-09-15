---@meta
-- Generated LuaLS annotations for SpellVisualKitModelAttach (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualKitModelAttach in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualKitModelAttach : RowProxy
---@field ID integer
---@field Offset number[]
---@field OffsetVariation number[]
---@field SpellVisualEffectNameID integer
---@field AttachmentID integer
---@field PositionerID integer
---@field Yaw number
---@field Pitch number
---@field Roll number
---@field YawVariation number
---@field PitchVariation number
---@field RollVariation number
---@field Scale number
---@field ScaleVariation number
---@field StartAnimID integer
---@field AnimID integer
---@field EndAnimID integer
---@field AnimKitID integer
---@field Flags integer
---@field LowDefModelAttachID integer
---@field StartDelay number
---@field Field_9_0_1_33978_021 number
---@field Field_11_0_0_54210_022 integer
---@field ParentSpellVisualKitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetID(value) end

---Gets the value of field 'Offset'.
---@return number[] value
function row:GetOffset() end

---Sets the value of field 'Offset'.
---@param value number[]
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetOffset(value) end

---Gets element at 1-based index in 'Offset'.
---@param index integer
---@return number value
function row:GetOffsetItem(index) end

---Gets the value of field 'OffsetVariation'.
---@return number[] value
function row:GetOffsetVariation() end

---Sets the value of field 'OffsetVariation'.
---@param value number[]
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetOffsetVariation(value) end

---Gets element at 1-based index in 'OffsetVariation'.
---@param index integer
---@return number value
function row:GetOffsetVariationItem(index) end

---Gets the value of field 'SpellVisualEffectNameID'.
---@return integer value
function row:GetSpellVisualEffectNameID() end

---Sets the value of field 'SpellVisualEffectNameID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetSpellVisualEffectNameID(value) end

---Navigates foreign relationship to 'SpellVisualEffectName' via 'SpellVisualEffectNameID'.
---@return dbc.row.v1215.SpellVisualEffectName|nil
function row:GetSpellVisualEffectName() end

---Creates a related 'SpellVisualEffectName' row and automatically links 'SpellVisualEffectNameID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualEffectName
function row:CreateRelated(data) end

---Gets the value of field 'AttachmentID'.
---@return integer value
function row:GetAttachmentID() end

---Sets the value of field 'AttachmentID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetAttachmentID(value) end

---Navigates foreign relationship to 'Attachment' via 'AttachmentID'.
---@return dbc.row.v1215.Attachment|nil
function row:GetAttachment() end

---Creates a related 'Attachment' row and automatically links 'AttachmentID'.
---@param data? table
---@return dbc.row.v1215.Attachment
function row:CreateRelated(data) end

---Gets the value of field 'PositionerID'.
---@return integer value
function row:GetPositionerID() end

---Sets the value of field 'PositionerID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetPositionerID(value) end

---Navigates foreign relationship to 'Positioner' via 'PositionerID'.
---@return dbc.row.v1215.Positioner|nil
function row:GetPositioner() end

---Creates a related 'Positioner' row and automatically links 'PositionerID'.
---@param data? table
---@return dbc.row.v1215.Positioner
function row:CreateRelated(data) end

---Gets the value of field 'Yaw'.
---@return number value
function row:GetYaw() end

---Sets the value of field 'Yaw'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetYaw(value) end

---Gets the value of field 'Pitch'.
---@return number value
function row:GetPitch() end

---Sets the value of field 'Pitch'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetPitch(value) end

---Gets the value of field 'Roll'.
---@return number value
function row:GetRoll() end

---Sets the value of field 'Roll'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetRoll(value) end

---Gets the value of field 'YawVariation'.
---@return number value
function row:GetYawVariation() end

---Sets the value of field 'YawVariation'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetYawVariation(value) end

---Gets the value of field 'PitchVariation'.
---@return number value
function row:GetPitchVariation() end

---Sets the value of field 'PitchVariation'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetPitchVariation(value) end

---Gets the value of field 'RollVariation'.
---@return number value
function row:GetRollVariation() end

---Sets the value of field 'RollVariation'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetRollVariation(value) end

---Gets the value of field 'Scale'.
---@return number value
function row:GetScale() end

---Sets the value of field 'Scale'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetScale(value) end

---Gets the value of field 'ScaleVariation'.
---@return number value
function row:GetScaleVariation() end

---Sets the value of field 'ScaleVariation'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetScaleVariation(value) end

---Gets the value of field 'StartAnimID'.
---@return integer value
function row:GetStartAnimID() end

---Sets the value of field 'StartAnimID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetStartAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'StartAnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetStartAnim() end

---Creates a related 'AnimationData' row and automatically links 'StartAnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimID'.
---@return integer value
function row:GetAnimID() end

---Sets the value of field 'AnimID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnim() end

---Creates a related 'AnimationData' row and automatically links 'AnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'EndAnimID'.
---@return integer value
function row:GetEndAnimID() end

---Sets the value of field 'EndAnimID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetEndAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'EndAnimID'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetEndAnim() end

---Creates a related 'AnimationData' row and automatically links 'EndAnimID'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimKitID'.
---@return integer value
function row:GetAnimKitID() end

---Sets the value of field 'AnimKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetAnimKitID(value) end

---Navigates foreign relationship to 'AnimKit' via 'AnimKitID'.
---@return dbc.row.v1215.AnimKit|nil
function row:GetAnimKit() end

---Creates a related 'AnimKit' row and automatically links 'AnimKitID'.
---@param data? table
---@return dbc.row.v1215.AnimKit
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetFlags(value) end

---Gets the value of field 'LowDefModelAttachID'.
---@return integer value
function row:GetLowDefModelAttachID() end

---Sets the value of field 'LowDefModelAttachID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetLowDefModelAttachID(value) end

---Navigates foreign relationship to 'SpellVisualKitModelAttach' via 'LowDefModelAttachID'.
---@return dbc.row.v1215.SpellVisualKitModelAttach|nil
function row:GetLowDefModelAttach() end

---Creates a related 'SpellVisualKitModelAttach' row and automatically links 'LowDefModelAttachID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKitModelAttach
function row:CreateRelated(data) end

---Gets the value of field 'StartDelay'.
---@return number value
function row:GetStartDelay() end

---Sets the value of field 'StartDelay'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetStartDelay(value) end

---Gets the value of field 'Field_9_0_1_33978_021'.
---@return number value
function row:GetField_9_0_1_33978_021() end

---Sets the value of field 'Field_9_0_1_33978_021'.
---@param value number
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetField_9_0_1_33978_021(value) end

---Gets the value of field 'Field_11_0_0_54210_022'.
---@return integer value
function row:GetField_11_0_0_54210_022() end

---Sets the value of field 'Field_11_0_0_54210_022'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetField_11_0_0_54210_022(value) end

---Gets the value of field 'ParentSpellVisualKitID'.
---@return integer value
function row:GetParentSpellVisualKitID() end

---Sets the value of field 'ParentSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitModelAttach self
function row:SetParentSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'ParentSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetParentSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'ParentSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Table container for SpellVisualKitModelAttach (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualKitModelAttach : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualKitModelAttach
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualKitModelAttach
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitModelAttach|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitModelAttach
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualKitModelAttach>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualKitModelAttach[]
function tbl:GetByRelation(foreign_id) end

return {}
