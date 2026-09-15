---@meta
-- Generated LuaLS annotations for UIScriptedAnimationEffect (Build 12.1.5.69594 [v1215]). Do not edit.

---Row representation of UIScriptedAnimationEffect in build 12.1.5.69594.
---@class dbc.row.v1215.UIScriptedAnimationEffect : RowProxy
---@field ID integer
---@field Visual integer
---@field VisualScale integer
---@field Duration integer
---@field Trajectory integer 0 = AtSource, 1 = AtTarget, 2 = Straight, 3 = CurveLeft, 4 = CurveRight, 5 = CurveRandom, 6: HalfwayBetween
---@field StartSoundKitID integer
---@field FinishSoundKitID integer
---@field StartBehavior integer 0 = None, 1 = TargetShake, 2 = TargetKnockBack, 3 = SourceRecoil, 4 = SourceCollideWithTarget
---@field FinishBehavior integer same enum as StartBehavior
---@field FinishEffectID integer
---@field YawRadians number
---@field PitchRadians number
---@field RollRadians number
---@field OffsetX number
---@field OffsetY number
---@field OffsetZ number
---@field AnimationSpeed number
---@field Animation integer
---@field AnimationStartOffset integer
---@field Alpha integer
---@field StartAlphaFade integer
---@field StartAlphaFadeDuration integer
---@field EndAlphaFade integer
---@field EndAlphaFadeDuration integer
---@field LoopingSoundKitID integer
---@field ParticleOverrideScale integer
---@field Flags integer ScriptedAnimationFlags | &0x1: UseTargetAsSource

local row = {}

---Gets the value of field 'ID'.
---@return integer value
function row:GetID() end

---Sets the value of field 'ID'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetID(value) end

---Gets the value of field 'Visual'.
---@return integer value
function row:GetVisual() end

---Sets the value of field 'Visual'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetVisual(value) end

---Navigates foreign relationship to 'FileData' via 'Visual'.
---@return dbc.row.v1215.FileData|nil
function row:GetVisual() end

---Creates a related 'FileData' row and automatically links 'Visual'.
---@param data? table
---@return dbc.row.v1215.FileData
function row:CreateRelated(data) end

---Gets the value of field 'VisualScale'.
---@return integer value
function row:GetVisualScale() end

---Sets the value of field 'VisualScale'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetVisualScale(value) end

---Gets the value of field 'Duration'.
---@return integer value
function row:GetDuration() end

---Sets the value of field 'Duration'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetDuration(value) end

---Gets the value of field 'Trajectory'.
---@return integer value
function row:GetTrajectory() end

---Sets the value of field 'Trajectory'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetTrajectory(value) end

---Gets the value of field 'StartSoundKitID'.
---@return integer value
function row:GetStartSoundKitID() end

---Sets the value of field 'StartSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetStartSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'StartSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetStartSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'StartSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'FinishSoundKitID'.
---@return integer value
function row:GetFinishSoundKitID() end

---Sets the value of field 'FinishSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetFinishSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'FinishSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetFinishSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'FinishSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'StartBehavior'.
---@return integer value
function row:GetStartBehavior() end

---Sets the value of field 'StartBehavior'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetStartBehavior(value) end

---Gets the value of field 'FinishBehavior'.
---@return integer value
function row:GetFinishBehavior() end

---Sets the value of field 'FinishBehavior'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetFinishBehavior(value) end

---Gets the value of field 'FinishEffectID'.
---@return integer value
function row:GetFinishEffectID() end

---Sets the value of field 'FinishEffectID'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetFinishEffectID(value) end

---Navigates foreign relationship to 'UIScriptedAnimationEffect' via 'FinishEffectID'.
---@return dbc.row.v1215.UIScriptedAnimationEffect|nil
function row:GetFinishEffect() end

---Creates a related 'UIScriptedAnimationEffect' row and automatically links 'FinishEffectID'.
---@param data? table
---@return dbc.row.v1215.UIScriptedAnimationEffect
function row:CreateRelated(data) end

---Gets the value of field 'YawRadians'.
---@return number value
function row:GetYawRadians() end

---Sets the value of field 'YawRadians'.
---@param value number
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetYawRadians(value) end

---Gets the value of field 'PitchRadians'.
---@return number value
function row:GetPitchRadians() end

---Sets the value of field 'PitchRadians'.
---@param value number
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetPitchRadians(value) end

---Gets the value of field 'RollRadians'.
---@return number value
function row:GetRollRadians() end

---Sets the value of field 'RollRadians'.
---@param value number
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetRollRadians(value) end

---Gets the value of field 'OffsetX'.
---@return number value
function row:GetOffsetX() end

---Sets the value of field 'OffsetX'.
---@param value number
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetOffsetX(value) end

---Gets the value of field 'OffsetY'.
---@return number value
function row:GetOffsetY() end

---Sets the value of field 'OffsetY'.
---@param value number
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetOffsetY(value) end

---Gets the value of field 'OffsetZ'.
---@return number value
function row:GetOffsetZ() end

---Sets the value of field 'OffsetZ'.
---@param value number
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetOffsetZ(value) end

---Gets the value of field 'AnimationSpeed'.
---@return number value
function row:GetAnimationSpeed() end

---Sets the value of field 'AnimationSpeed'.
---@param value number
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetAnimationSpeed(value) end

---Gets the value of field 'Animation'.
---@return integer value
function row:GetAnimation() end

---Sets the value of field 'Animation'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetAnimation(value) end

---Navigates foreign relationship to 'AnimationData' via 'Animation'.
---@return dbc.row.v1215.AnimationData|nil
function row:GetAnimation() end

---Creates a related 'AnimationData' row and automatically links 'Animation'.
---@param data? table
---@return dbc.row.v1215.AnimationData
function row:CreateRelated(data) end

---Gets the value of field 'AnimationStartOffset'.
---@return integer value
function row:GetAnimationStartOffset() end

---Sets the value of field 'AnimationStartOffset'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetAnimationStartOffset(value) end

---Gets the value of field 'Alpha'.
---@return integer value
function row:GetAlpha() end

---Sets the value of field 'Alpha'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetAlpha(value) end

---Gets the value of field 'StartAlphaFade'.
---@return integer value
function row:GetStartAlphaFade() end

---Sets the value of field 'StartAlphaFade'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetStartAlphaFade(value) end

---Gets the value of field 'StartAlphaFadeDuration'.
---@return integer value
function row:GetStartAlphaFadeDuration() end

---Sets the value of field 'StartAlphaFadeDuration'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetStartAlphaFadeDuration(value) end

---Gets the value of field 'EndAlphaFade'.
---@return integer value
function row:GetEndAlphaFade() end

---Sets the value of field 'EndAlphaFade'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetEndAlphaFade(value) end

---Gets the value of field 'EndAlphaFadeDuration'.
---@return integer value
function row:GetEndAlphaFadeDuration() end

---Sets the value of field 'EndAlphaFadeDuration'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetEndAlphaFadeDuration(value) end

---Gets the value of field 'LoopingSoundKitID'.
---@return integer value
function row:GetLoopingSoundKitID() end

---Sets the value of field 'LoopingSoundKitID'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetLoopingSoundKitID(value) end

---Navigates foreign relationship to 'SoundKit' via 'LoopingSoundKitID'.
---@return dbc.row.v1215.SoundKit|nil
function row:GetLoopingSoundKit() end

---Creates a related 'SoundKit' row and automatically links 'LoopingSoundKitID'.
---@param data? table
---@return dbc.row.v1215.SoundKit
function row:CreateRelated(data) end

---Gets the value of field 'ParticleOverrideScale'.
---@return integer value
function row:GetParticleOverrideScale() end

---Sets the value of field 'ParticleOverrideScale'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetParticleOverrideScale(value) end

---Gets the value of field 'Flags'.
---@return integer value
function row:GetFlags() end

---Sets the value of field 'Flags'.
---@param value integer
---@return dbc.row.v1215.UIScriptedAnimationEffect self
function row:SetFlags(value) end

---Table container for UIScriptedAnimationEffect (Build 12.1.5.69594).
---@class dbc.Table.v1215.UIScriptedAnimationEffect : DbcTable
---@field [integer] dbc.row.v1215.UIScriptedAnimationEffect
local tbl = {}

---Creates and appends a new row to the table.
---@param id? integer Primary key
---@param data? table Optional initial values
---@return dbc.row.v1215.UIScriptedAnimationEffect
function tbl:Create(id, data) end

---Finds a row by primary key (nil if not found).
---@param id integer
---@return dbc.row.v1215.UIScriptedAnimationEffect|nil
function tbl:FindById(id) end

---Gets a row by primary key (throws if not found).
---@param id integer
---@return dbc.row.v1215.UIScriptedAnimationEffect
function tbl:GetRowById(id) end

---Creates a LINQ query over rows in this table.
---@return dbc.Query<dbc.row.v1215.UIScriptedAnimationEffect>
function tbl:Query() end

---Returns all rows related to a foreign ID via the relationship block.
---@param foreign_id integer
---@return dbc.row.v1215.UIScriptedAnimationEffect[]
function tbl:GetByRelation(foreign_id) end

return {}
