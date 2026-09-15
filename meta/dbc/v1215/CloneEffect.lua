---@meta
-- Generated LuaLS annotations for CloneEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CloneEffect in build 12.1.5.69594.
---@class dbc.row.v1215.CloneEffect : RowProxy
---@field ID integer
---@field DurationMs integer
---@field DelayMs integer
---@field FadeInTimeMs integer
---@field FadeOutTimeMs integer
---@field StateSpellVisualKitID integer
---@field StartSpellVisualKitID integer
---@field OffsetMatrixID integer
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetID(value) end

---Gets the value of field 'DurationMs'.
---@return integer value
function row:GetDurationMs() end

---Sets the value of field 'DurationMs'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetDurationMs(value) end

---Gets the value of field 'DelayMs'.
---@return integer value
function row:GetDelayMs() end

---Sets the value of field 'DelayMs'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetDelayMs(value) end

---Gets the value of field 'FadeInTimeMs'.
---@return integer value
function row:GetFadeInTimeMs() end

---Sets the value of field 'FadeInTimeMs'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetFadeInTimeMs(value) end

---Gets the value of field 'FadeOutTimeMs'.
---@return integer value
function row:GetFadeOutTimeMs() end

---Sets the value of field 'FadeOutTimeMs'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetFadeOutTimeMs(value) end

---Gets the value of field 'StateSpellVisualKitID'.
---@return integer value
function row:GetStateSpellVisualKitID() end

---Sets the value of field 'StateSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetStateSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StateSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetStateSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StateSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'StartSpellVisualKitID'.
---@return integer value
function row:GetStartSpellVisualKitID() end

---Sets the value of field 'StartSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetStartSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StartSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetStartSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StartSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'OffsetMatrixID'.
---@return integer value
function row:GetOffsetMatrixID() end

---Sets the value of field 'OffsetMatrixID'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetOffsetMatrixID(value) end

---Navigates foreign relationship to 'TransformMatrix' via 'OffsetMatrixID'.
---@return dbc.row.v1215.TransformMatrix|nil
function row:GetOffsetMatrix() end

---Creates a related 'TransformMatrix' row and automatically links 'OffsetMatrixID'.
---@param data? table
---@return dbc.row.v1215.TransformMatrix
function row:CreateRelated(data) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.CloneEffect self
function row:SetFlags(value) end

---Table container for CloneEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.CloneEffect : DbcTable
---@field [integer] dbc.row.v1215.CloneEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CloneEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CloneEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CloneEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CloneEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CloneEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
