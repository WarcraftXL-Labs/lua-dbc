---@meta
-- Generated LuaLS annotations for ObjectEffect (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of ObjectEffect in build 3.3.5.12340.
---@class dbc.row.v335.ObjectEffect : RowProxy
---@field ID integer
---@field Name string
---@field ObjectEffectGroupID integer
---@field TriggerType integer 1: ???, 2: ???, 3: ???, 4: ???
---@field EventType integer
---@field EffectRecType integer 1: LoopingSound
---@field EffectRecID integer ERT == 1: SoundKitID; as that's the only type present, made it a fk for now.
---@field Attachment integer
---@field Offset number[]
---@field ObjectEffectModifierID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetID(value) end

---Gets the value of field 'Name'.
---@return string value
function row:GetName() end

---Sets the value of field 'Name'.
---@param value string
---@return dbc.row.v335.ObjectEffect self
function row:SetName(value) end

---Gets the value of field 'ObjectEffectGroupID'.
---@return integer value
function row:GetObjectEffectGroupID() end

---Sets the value of field 'ObjectEffectGroupID'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetObjectEffectGroupID(value) end

---Navigates foreign relationship to 'ObjectEffectGroup' via 'ObjectEffectGroupID'.
---@return dbc.row.v335.ObjectEffectGroup|nil
function row:GetObjectEffectGroup() end

---Creates a related 'ObjectEffectGroup' row and automatically links 'ObjectEffectGroupID'.
---@param data? table
---@return dbc.row.v335.ObjectEffectGroup
function row:CreateRelated(data) end

---Gets the value of field 'TriggerType'.
---@return integer value
function row:GetTriggerType() end

---Sets the value of field 'TriggerType'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetTriggerType(value) end

---Gets the value of field 'EventType'.
---@return integer value
function row:GetEventType() end

---Sets the value of field 'EventType'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetEventType(value) end

---Gets the value of field 'EffectRecType'.
---@return integer value
function row:GetEffectRecType() end

---Sets the value of field 'EffectRecType'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetEffectRecType(value) end

---Gets the value of field 'EffectRecID'.
---@return integer value
function row:GetEffectRecID() end

---Sets the value of field 'EffectRecID'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetEffectRecID(value) end

---Navigates foreign relationship to 'SoundKit' via 'EffectRecID'.
---@return dbc.row.v335.SoundKit|nil
function row:GetEffectRec() end

---Creates a related 'SoundKit' row and automatically links 'EffectRecID'.
---@param data? table
---@return dbc.row.v335.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'Attachment'.
---@return integer value
function row:GetAttachment() end

---Sets the value of field 'Attachment'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetAttachment(value) end

---Gets the value of field 'Offset'.
---@return number[] value
function row:GetOffset() end

---Sets the value of field 'Offset'.
---@param value number[]
---@return dbc.row.v335.ObjectEffect self
function row:SetOffset(value) end

---Gets element at 1-based index in 'Offset'.
---@param index integer
---@return number value
function row:GetOffsetItem(index) end

---Gets the value of field 'ObjectEffectModifierID'.
---@return integer value
function row:GetObjectEffectModifierID() end

---Sets the value of field 'ObjectEffectModifierID'.
---@param value integer
---@return dbc.row.v335.ObjectEffect self
function row:SetObjectEffectModifierID(value) end

---Navigates foreign relationship to 'ObjectEffectModifier' via 'ObjectEffectModifierID'.
---@return dbc.row.v335.ObjectEffectModifier|nil
function row:GetObjectEffectModifier() end

---Creates a related 'ObjectEffectModifier' row and automatically links 'ObjectEffectModifierID'.
---@param data? table
---@return dbc.row.v335.ObjectEffectModifier
function row:CreateRelated(data) end

---Table container for ObjectEffect (Build 3.3.5.12340).
---@class dbc.Table.v335.ObjectEffect : DbcTable
---@field [integer] dbc.row.v335.ObjectEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.ObjectEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.ObjectEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.ObjectEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.ObjectEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
