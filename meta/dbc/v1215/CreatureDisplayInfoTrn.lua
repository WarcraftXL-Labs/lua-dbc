---@meta
-- Generated LuaLS annotations for CreatureDisplayInfoTrn (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of CreatureDisplayInfoTrn in build 12.1.5.69594.
---@class dbc.row.v1215.CreatureDisplayInfoTrn : RowProxy
---@field ID integer
---@field DstCreatureDisplayInfoID integer
---@field StartVisualKitID integer
---@field FinishVisualKitID integer
---@field MaxTime number
---@field DissolveEffectID integer
---@field SrcCreatureDisplayInfoID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn self
function row:SetID(value) end

---Gets the value of field 'DstCreatureDisplayInfoID'.
---@return integer value
function row:GetDstCreatureDisplayInfoID() end

---Sets the value of field 'DstCreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn self
function row:SetDstCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'DstCreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetDstCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'DstCreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Gets the value of field 'StartVisualKitID'.
---@return integer value
function row:GetStartVisualKitID() end

---Sets the value of field 'StartVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn self
function row:SetStartVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'StartVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetStartVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'StartVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'FinishVisualKitID'.
---@return integer value
function row:GetFinishVisualKitID() end

---Sets the value of field 'FinishVisualKitID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn self
function row:SetFinishVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'FinishVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetFinishVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'FinishVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Gets the value of field 'MaxTime'.
---@return number value
function row:GetMaxTime() end

---Sets the value of field 'MaxTime'.
---@param value number
---@return dbc.row.v1215.CreatureDisplayInfoTrn self
function row:SetMaxTime(value) end

---Gets the value of field 'DissolveEffectID'.
---@return integer value
function row:GetDissolveEffectID() end

---Sets the value of field 'DissolveEffectID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn self
function row:SetDissolveEffectID(value) end

---Navigates foreign relationship to 'DissolveEffect' via 'DissolveEffectID'.
---@return dbc.row.v1215.DissolveEffect|nil
function row:GetDissolveEffect() end

---Creates a related 'DissolveEffect' row and automatically links 'DissolveEffectID'.
---@param data? table
---@return dbc.row.v1215.DissolveEffect
function row:CreateRelated(data) end

---Gets the value of field 'SrcCreatureDisplayInfoID'.
---@return integer value
function row:GetSrcCreatureDisplayInfoID() end

---Sets the value of field 'SrcCreatureDisplayInfoID'.
---@param value integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn self
function row:SetSrcCreatureDisplayInfoID(value) end

---Navigates foreign relationship to 'CreatureDisplayInfo' via 'SrcCreatureDisplayInfoID'.
---@return dbc.row.v1215.CreatureDisplayInfo|nil
function row:GetSrcCreatureDisplayInfo() end

---Creates a related 'CreatureDisplayInfo' row and automatically links 'SrcCreatureDisplayInfoID'.
---@param data? table
---@return dbc.row.v1215.CreatureDisplayInfo
function row:CreateRelated(data) end

---Table container for CreatureDisplayInfoTrn (Build 12.1.5.69594).
---@class dbc.Table.v1215.CreatureDisplayInfoTrn : DbcTable
---@field [integer] dbc.row.v1215.CreatureDisplayInfoTrn
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.CreatureDisplayInfoTrn
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.CreatureDisplayInfoTrn>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.CreatureDisplayInfoTrn[]
function tbl:GetByRelation(foreign_id) end

return {}
