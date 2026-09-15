---@meta
-- Generated LuaLS annotations for QuestFeedbackEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of QuestFeedbackEffect in build 12.1.5.69594.
---@class dbc.row.v1215.QuestFeedbackEffect : RowProxy
---@field ID integer
---@field InteractCursor string display on cursor
---@field FileDataID integer display in 3d world
---@field MinimapAtlasMemberID integer display on minimap
---@field AttachPoint integer see M2 attachment points
---@field PassiveHighlightColorType integer
---@field Priority integer
---@field Flags integer
---@field SpellID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetID(value) end

---Gets the value of field 'InteractCursor'.
---@return string value
function row:GetInteractCursor() end

---Sets the value of field 'InteractCursor'.
---@param value string
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetInteractCursor(value) end

---Gets the value of field 'FileDataID'.
---@return integer value
function row:GetFileDataID() end

---Sets the value of field 'FileDataID'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetFileDataID(value) end

---Navigates foreign relationship to 'FileData' via 'FileDataID'.
---@return dbc.row.v1215.FileData|nil
function row:GetFileData() end

---Creates a related 'FileData' row and automatically links 'FileDataID'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'MinimapAtlasMemberID'.
---@return integer value
function row:GetMinimapAtlasMemberID() end

---Sets the value of field 'MinimapAtlasMemberID'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetMinimapAtlasMemberID(value) end

---Navigates foreign relationship to 'UiTextureAtlasMember' via 'MinimapAtlasMemberID'.
---@return dbc.row.v1215.UiTextureAtlasMember|nil
function row:GetMinimapAtlasMember() end

---Creates a related 'UiTextureAtlasMember' row and automatically links 'MinimapAtlasMemberID'.
---@param data? table
---@return dbc.row.v1215.UiTextureAtlasMember
function row:CreateRelated(data) end

---Gets the value of field 'AttachPoint'.
---@return integer value
function row:GetAttachPoint() end

---Sets the value of field 'AttachPoint'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetAttachPoint(value) end

---Gets the value of field 'PassiveHighlightColorType'.
---@return integer value
function row:GetPassiveHighlightColorType() end

---Sets the value of field 'PassiveHighlightColorType'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetPassiveHighlightColorType(value) end

---Navigates foreign relationship to 'HighlightColor' via 'PassiveHighlightColorType'.
---@return dbc.row.v1215.HighlightColor|nil
function row:GetPassiveHighlightColorType() end

---Creates a related 'HighlightColor' row and automatically links 'PassiveHighlightColorType'.
---@param data? table
---@return dbc.row.v1215.HighlightColor
function row:CreateRelated(data) end

---Gets the value of field 'Priority'.
---@return integer value
function row:GetPriority() end

---Sets the value of field 'Priority'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetPriority(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetFlags(value) end

---Gets the value of field 'SpellID'.
---@return integer value
function row:GetSpellID() end

---Sets the value of field 'SpellID'.
---@param value integer
---@return dbc.row.v1215.QuestFeedbackEffect self
function row:SetSpellID(value) end

---Navigates foreign relationship to 'Spell' via 'SpellID'.
---@return dbc.row.v1215.Spell|nil
function row:GetSpell() end

---Creates a related 'Spell' row and automatically links 'SpellID'.
---@param data? table
---@return dbc.row.v1215.Spell
function row:CreateRelated(data) end

---Table container for QuestFeedbackEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.QuestFeedbackEffect : DbcTable
---@field [integer] dbc.row.v1215.QuestFeedbackEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.QuestFeedbackEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.QuestFeedbackEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.QuestFeedbackEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.QuestFeedbackEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.QuestFeedbackEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
