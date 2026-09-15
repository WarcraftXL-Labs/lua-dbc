---@meta
-- Generated LuaLS annotations for SpellVisualKitEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of SpellVisualKitEffect in build 12.1.5.69594.
---@class dbc.row.v1215.SpellVisualKitEffect : RowProxy
---@field ID integer
---@field EffectType integer
---@field Effect integer 1: SpellProceduralEffectID, 2: SpellVisualKitModelAttachID, 3: CameraEffectID, 4: also camera related, 5: SoundKitID, 6: SpellVisualAnimID, 7: ShadowyEffectID, 8: SpellEffectEmissionID, 9: OutlineEffectID, 10: unit sound id?, 11: DissolveEffectID, 12: EdgeFlowEffectID, 13: BeamEffectID, 14: ClientSceneEffectID, 15: CloneEffectID, 16: GradientEffectID, 17: BarrageEffectID, 18: RopeEffectID, 19: SpellVisualScreenEffectID
---@field ParentSpellVisualKitID integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitEffect self
function row:SetID(value) end

---Gets the value of field 'EffectType'.
---@return integer value
function row:GetEffectType() end

---Sets the value of field 'EffectType'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitEffect self
function row:SetEffectType(value) end

---Gets the value of field 'Effect'.
---@return integer value
function row:GetEffect() end

---Sets the value of field 'Effect'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitEffect self
function row:SetEffect(value) end

---Gets the value of field 'ParentSpellVisualKitID'.
---@return integer value
function row:GetParentSpellVisualKitID() end

---Sets the value of field 'ParentSpellVisualKitID'.
---@param value integer
---@return dbc.row.v1215.SpellVisualKitEffect self
function row:SetParentSpellVisualKitID(value) end

---Navigates foreign relationship to 'SpellVisualKit' via 'ParentSpellVisualKitID'.
---@return dbc.row.v1215.SpellVisualKit|nil
function row:GetParentSpellVisualKit() end

---Creates a related 'SpellVisualKit' row and automatically links 'ParentSpellVisualKitID'.
---@param data? table
---@return dbc.row.v1215.SpellVisualKit
function row:CreateRelated(data) end

---Table container for SpellVisualKitEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.SpellVisualKitEffect : DbcTable
---@field [integer] dbc.row.v1215.SpellVisualKitEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.SpellVisualKitEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.SpellVisualKitEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.SpellVisualKitEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.SpellVisualKitEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
