---@meta
-- Generated LuaLS annotations for SpellVisualKit (Build 3.3.5.12340 [v335]). Do not edit.

---Row representation of SpellVisualKit in build 3.3.5.12340.
---@class dbc.row.v335.SpellVisualKit : RowProxy
---@field ID integer
---@field StartAnimID integer
---@field AnimID integer
---@field HeadEffect integer
---@field ChestEffect integer
---@field BaseEffect integer
---@field LeftHandEffect integer
---@field RightHandEffect integer
---@field BreathEffect integer
---@field LeftWeaponEffect integer
---@field RightWeaponEffect integer
---@field SpecialEffect integer[]
---@field WorldEffect integer
---@field SoundID integer
---@field ShakeID integer
---@field CharProc integer[]
---@field CharParamZero number[]
---@field CharParamOne number[]
---@field CharParamTwo number[]
---@field CharParamThree number[]
---@field Flags integer

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetID(value) end

---Gets the value of field 'StartAnimID'.
---@return integer value
function row:GetStartAnimID() end

---Sets the value of field 'StartAnimID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetStartAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'StartAnimID'.
---@return dbc.row.v335.AnimationData|nil
function row:GetStartAnim() end

---Creates a related 'AnimationData' row and automatically links 'StartAnimID'.
---@param data? table
---@return dbc.row.v335.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimID'.
---@return integer value
function row:GetAnimID() end

---Sets the value of field 'AnimID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetAnimID(value) end

---Navigates foreign relationship to 'AnimationData' via 'AnimID'.
---@return dbc.row.v335.AnimationData|nil
function row:GetAnim() end

---Creates a related 'AnimationData' row and automatically links 'AnimID'.
---@param data? table
---@return dbc.row.v335.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'HeadEffect'.
---@return integer value
function row:GetHeadEffect() end

---Sets the value of field 'HeadEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetHeadEffect(value) end

---Gets the value of field 'ChestEffect'.
---@return integer value
function row:GetChestEffect() end

---Sets the value of field 'ChestEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetChestEffect(value) end

---Gets the value of field 'BaseEffect'.
---@return integer value
function row:GetBaseEffect() end

---Sets the value of field 'BaseEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetBaseEffect(value) end

---Gets the value of field 'LeftHandEffect'.
---@return integer value
function row:GetLeftHandEffect() end

---Sets the value of field 'LeftHandEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetLeftHandEffect(value) end

---Gets the value of field 'RightHandEffect'.
---@return integer value
function row:GetRightHandEffect() end

---Sets the value of field 'RightHandEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetRightHandEffect(value) end

---Gets the value of field 'BreathEffect'.
---@return integer value
function row:GetBreathEffect() end

---Sets the value of field 'BreathEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetBreathEffect(value) end

---Gets the value of field 'LeftWeaponEffect'.
---@return integer value
function row:GetLeftWeaponEffect() end

---Sets the value of field 'LeftWeaponEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetLeftWeaponEffect(value) end

---Gets the value of field 'RightWeaponEffect'.
---@return integer value
function row:GetRightWeaponEffect() end

---Sets the value of field 'RightWeaponEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetRightWeaponEffect(value) end

---Gets the value of field 'SpecialEffect'.
---@return integer[] value
function row:GetSpecialEffect() end

---Sets the value of field 'SpecialEffect'.
---@param value integer[]
---@return dbc.row.v335.SpellVisualKit self
function row:SetSpecialEffect(value) end

---Gets element at 1-based index in 'SpecialEffect'.
---@param index integer
---@return integer value
function row:GetSpecialEffectItem(index) end

---Gets the value of field 'WorldEffect'.
---@return integer value
function row:GetWorldEffect() end

---Sets the value of field 'WorldEffect'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetWorldEffect(value) end

---Gets the value of field 'SoundID'.
---@return integer value
function row:GetSoundID() end

---Sets the value of field 'SoundID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetSoundID(value) end

---Navigates foreign relationship to 'SoundEntries' via 'SoundID'.
---@return dbc.row.v335.SoundEntries|nil
function row:GetSound() end

---Creates a related 'SoundEntries' row and automatically links 'SoundID'.
---@param data? table
---@return dbc.row.v335.SoundEntries
function row:CreateRelated(data) end

---Gets the value of field 'ShakeID'.
---@return integer value
function row:GetShakeID() end

---Sets the value of field 'ShakeID'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetShakeID(value) end

---Navigates foreign relationship to 'SpellEffectCameraShakes' via 'ShakeID'.
---@return dbc.row.v335.SpellEffectCameraShakes|nil
function row:GetShake() end

---Creates a related 'SpellEffectCameraShakes' row and automatically links 'ShakeID'.
---@param data? table
---@return dbc.row.v335.SpellEffectCameraShakes
function row:CreateRelated(data) end

---Gets the value of field 'CharProc'.
---@return integer[] value
function row:GetCharProc() end

---Sets the value of field 'CharProc'.
---@param value integer[]
---@return dbc.row.v335.SpellVisualKit self
function row:SetCharProc(value) end

---Gets element at 1-based index in 'CharProc'.
---@param index integer
---@return integer value
function row:GetCharProcItem(index) end

---Gets the value of field 'CharParamZero'.
---@return number[] value
function row:GetCharParamZero() end

---Sets the value of field 'CharParamZero'.
---@param value number[]
---@return dbc.row.v335.SpellVisualKit self
function row:SetCharParamZero(value) end

---Gets element at 1-based index in 'CharParamZero'.
---@param index integer
---@return number value
function row:GetCharParamZeroItem(index) end

---Gets the value of field 'CharParamOne'.
---@return number[] value
function row:GetCharParamOne() end

---Sets the value of field 'CharParamOne'.
---@param value number[]
---@return dbc.row.v335.SpellVisualKit self
function row:SetCharParamOne(value) end

---Gets element at 1-based index in 'CharParamOne'.
---@param index integer
---@return number value
function row:GetCharParamOneItem(index) end

---Gets the value of field 'CharParamTwo'.
---@return number[] value
function row:GetCharParamTwo() end

---Sets the value of field 'CharParamTwo'.
---@param value number[]
---@return dbc.row.v335.SpellVisualKit self
function row:SetCharParamTwo(value) end

---Gets element at 1-based index in 'CharParamTwo'.
---@param index integer
---@return number value
function row:GetCharParamTwoItem(index) end

---Gets the value of field 'CharParamThree'.
---@return number[] value
function row:GetCharParamThree() end

---Sets the value of field 'CharParamThree'.
---@param value number[]
---@return dbc.row.v335.SpellVisualKit self
function row:SetCharParamThree(value) end

---Gets element at 1-based index in 'CharParamThree'.
---@param index integer
---@return number value
function row:GetCharParamThreeItem(index) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v335.SpellVisualKit self
function row:SetFlags(value) end

---Table container for SpellVisualKit (Build 3.3.5.12340).
---@class dbc.Table.v335.SpellVisualKit : DbcTable
---@field [integer] dbc.row.v335.SpellVisualKit
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v335.SpellVisualKit
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualKit|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v335.SpellVisualKit
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v335.SpellVisualKit>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v335.SpellVisualKit[]
function tbl:GetByRelation(foreign_id) end

return {}
