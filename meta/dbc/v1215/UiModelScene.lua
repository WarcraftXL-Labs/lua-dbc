---@meta
-- Generated LuaLS annotations for UiModelScene (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UiModelScene in build 12.1.5.69594.
---@class dbc.row.v1215.UiModelScene : RowProxy
---@field ID integer
---@field UiSystemType integer C_ModelInfo.ModelSceneType: 0: MountJournal, 1: PetJournalCard, 2: ShopCard, 3: EncounterJournal, 4: PetJournalLoadout, 5: ArtifactTier2, 6: ArtifactTier2ForgingScene, 7: ArtifactTier2SlamEffect, 8: CommentatorVictoryFanfare, 9: ArtifactRelicTalentEffect, 10: PvpWarModeOrb, 11: PvpWarModeFire, 12: PartyPose, 13: AzeriteItemLevelUpToast, 14: AzeritePowers, 15: AzeriteRewardGlow, 16: HeartOfAzeroth, 17: WorldMapThreat
---@field Flags integer 0x1: SheatheWeapon, 0x2: HideWeapon, 0x4: Autodress
---@field Context integer -1: None, 0: PerksProgram

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UiModelScene self
function row:SetID(value) end

---Gets the value of field 'UiSystemType'.
---@return integer value
function row:GetUiSystemType() end

---Sets the value of field 'UiSystemType'.
---@param value integer
---@return dbc.row.v1215.UiModelScene self
function row:SetUiSystemType(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UiModelScene self
function row:SetFlags(value) end

---Gets the value of field 'Context'.
---@return integer value
function row:GetContext() end

---Sets the value of field 'Context'.
---@param value integer
---@return dbc.row.v1215.UiModelScene self
function row:SetContext(value) end

---Table container for UiModelScene (Build 12.1.5.69594).
---@class dbc.Table.v1215.UiModelScene : DbcTable
---@field [integer] dbc.row.v1215.UiModelScene
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UiModelScene
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UiModelScene|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UiModelScene
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UiModelScene>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UiModelScene[]
function tbl:GetByRelation(foreign_id) end

return {}
